# Modèle linéaire généralisé des habitudes de jeunes fumeurs

Ce projet nécessite d'avoir assimilé l'ensemble des notions des cinq premiers modules du cours de science des données biologiques 2. Il correspond au dépôt GitHub <https://github.com/BioDataScience-Course/B05Ia_lungcap>. Il est distribué sous licence [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).

## Objectif

Ce projet est **court**, **individuel** et **cadré**. Il vise à compléter votre apprentissage en modélisation de données biologiques en vous initiant aux modèles linéaires généralisés. Dans ce projet, vous devrez :

-   Décrire correctement des données en vue de leur modélisation

-   Créer et analyser des modèles linéaires généralisés, en restant vigilant d'éviter la sur- ou sous-dispersion

-   Simplifier vos modèles linéaires généralisés de manière justifiée (AIC, Chi2)

-   Interpréter les résultats de vos modèles linéaires généralisés

## Consignes

Complétez les zones manquantes dans le fichier `lungcap_notebook.qmd`. Compilez la version finale au format HTML. Vous avez une batterie de tests à votre disposition (onglet "Construire" -> bouton "Construire tout") pour vérifier l'état de votre travail. Note : utilisez ces tests à la fin. Concentrez-vous d'abord sur vos analyses, puis faites un rendu final du document lorsque tout est complété, et seulement après, utilisez les tests. Il est contre-productif d'activer les tests à chaque nouvelle ligne de code ajoutée dans votre document ! Assurez-vous que votre document Quarto compile sans erreurs à la fin de votre travail **(très important : un document qui ne compile pas sans erreur devra être sanctionné de manière importante)**. Vérifiez aussi à la fin que vos derniers commits ont bien été pushés sur GitHub.

## Évaluation : un document qui compile, sur GitHub

**Un projet dont le document ne compile pas à partir de la version présente sur GitHub obtient la note de zéro pour ce travail.** Un document qui compile sur votre ordinateur, mais pas depuis GitHub (fichier oublié dans le commit, push non effectué...), est considéré comme ne compilant pas.

## Utilisation de l’IA

Dans le cadre de votre travail, vous avez le droit d’être aidé par l’intelligence artificielle. Le chatbot SciViews est disponible dans votre RStudio sur Saturn Cloud via l’addin Help. Il répond aux questions concernant le langage R, les statistiques et la science des données.

Vous restez responsables de tout ce que contiennent vos documents : vérifiez le code et les interprétations proposés par l'IA, et assurez-vous de pouvoir les expliquer.

L'utilisation de l'IA doit être déclarée dans la sous-section **Déclaration sur l'utilisation de l'IA** de la partie Matériel et méthodes : cochez la case qui correspond à votre situation dans le chunk `ai_comment` (remplacez `[]` par `[X]`), puis précisez en dessous l'utilisation que vous avez faite de l'IA et citez le ou les modèles employés.

## Informations sur les données

Les données employées proviennent d'une étude sur les effets du tabagisme sur la fonction pulmonaire chez les enfants et les adolescents de l'est de Boston dans le milieu des années 1970. Elles ont été publiées dans le cadre de l'article suivant :

Tager, Ira B., Scott T. Weiss, Alvaro Muñoz, Bernard Rosner, Frank E. Speizer, Ira B. Tager, Alvaro Muñoz, et Frank E. Speizer. 1983. "Longitudinal Study of the Effects of Maternal Smoking on Pulmonary Function in Children". *New England Journal of Medicine* 309 (12): 699‑703. https://doi.org/10.1056/NEJM198309223091204.
