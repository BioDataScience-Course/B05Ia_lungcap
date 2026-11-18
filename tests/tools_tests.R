# Functions to test projects
# Copyright (c) 2023-2025, Philippe Grosjean (phgrosjean@sciviews.org) &
#   Guyliann Engels (Guyliann.Engels@umons.ac.be)
# Version 3.0.0 - Should use learnitgrid v1.0.0

suppressMessages(library(learnitgrid))
cache_data <- learnitgrid::copy_cache()
sddReporter <- learnitgrid::project_reporter()
learnitgrid::hook_last_chunk()
learnitgrid::hook_record()


# More functions and code ------------------------------------------------

is_identical_to_ref <- function(name, part = NULL, attr = NULL) {
  ref <- read_ref(name) # Note: generate an error if the object does not exist
  res <- read_res(name) # Idem

  if (!is.null(part)) {
    ref <- ref[[part]]
    res <- res[[part]]
  }

  if (!is.null(attr)) {
    ref <- attr(ref, attr)
    res <- attr(res, attr)
  }

  # Items cannot be NULL
  if (is.null(res) && is.null(ref))
    return(structure(FALSE, message = "Both res and ref are NULL"))

  identical(res, ref)
}

is_equal_to_ref <- function(name, part = NULL, attr = NULL) {
  ref <- read_ref(name) # Note: generate an error if the object does not exist
  res <- read_res(name) # Idem

  if (!is.null(part)) {
    ref <- ref[[part]]
    res <- res[[part]]
  }

  if (!is.null(attr)) {
    ref <- attr(ref, attr)
    res <- attr(res, attr)
  }

  # Items cannot be NULL
  if (is.null(res) && is.null(ref))
    return(structure(FALSE, message = "Both res and ref are NULL"))

  isTRUE(all.equal(res, ref))
}

# Fingerprint of a model, independent of the way it is written: the order of
# the terms (also inside interactions), the order of the arguments, or
# `gaussian` vs `gaussian()` do not matter. It still detects a wrong model
# (terms), a wrong family or link (binomial vs quasibinomial), a wrong
# function (lm() vs glm()) or wrong data (nobs, deviance).
# Use in a chunk: record='RO', object='my_model', fun='model_fingerprint'
# and test with is_equal_to_ref() (tolerance on the deviance).
model_fingerprint <- function(object, ...) {
  labels <- attr(terms(object), "term.labels")
  labels <- vapply(strsplit(labels, ":", fixed = TRUE),
    function(x) paste(sort(x), collapse = ":"), character(1))
  fam <- family(object)
  list(
    class     = class(object)[1],
    response  = deparse(formula(object)[[2L]]),
    terms     = sort(labels),
    intercept = attr(terms(object), "intercept"),
    family    = fam$family,
    link      = fam$link,
    nobs      = nobs(object),
    deviance  = deviance(object)
  )
}
