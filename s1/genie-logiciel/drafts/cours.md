# Premier cours (7 septembre)

## Informations utiles

Prof: M. Hamri
amine.hamri@univ-amu.fr

Autre prof: Jean Luc Massat
+ un autre

9cours, 9td, 9tp tous de 2h

### Evaluations

Examen temrinal de 3H en décembre + 2 projets en équipe

Première session: NF = 0.6*Examen terminal + 0.4 * projet
avec projet = max(0.3 * projet1 + 0.7 projet2, projet2)
projet1 : a priori 3 semaines
projet2 : a priori 7 semaines

=> conseillé de mettre en groupe de plus de 2 pour avoir une charge de travail normale
=> conseillé de se mettre en équipe de 5
=> changements d'équipe impossible après le début de projet
=> a priori, possible de se mettre en équipe avec des gens de d'autres groupes, mais à condition que l'EDT soit bon (il faut demander au prof)

### Plan du cours

-> intéret d'adopter un cycle de vie
-> présentation d'une méthode de dev
-> présenter comment coder, organiser le code, intérêt des test, ...

## Cours

Constat: - bcp de projets n'aboutissent pas à un produit qui répond au cahier des charges
         - produit est livré hors delai

Le cours va présenter des méthode & outils pour déveloper de slogiciels de qualité en maitrisant les couts de dev & les délais.

Autre pb: le produit doit aussi être maintenu. Des erreurs vont se manifester à cause d'une mauvaise hygiène de code.

La matière ne va pas se focus sur le code, mais sur des solutions qui vont faciliter l'implémentation.


### Metrics

 - volume: nombre d'instruction (en KLS -> Kilo Lignes Sources?)
 - effort: temps nécessaire pour un ingénieur (Homme Ans -> Hommes par année)
 - délai de réalisations
 - durée de vie

### Evolution

-> La demande explose pour les logiciels.

(long monologue sur tous les bugs, comme celui d'ariane V ou le bug de l'an 2000)

### La qualité logicielle

Un logiciel peut être observé seon ses qualités, soit externes, soit internes.
Les qualités externes sont par exemple la validité, la rubustesse, la performance, ...
Les qualités internes sont par exemple la modularité, la lisibilité, la maintenabilité, ...

Les facteurs de qualité ne sont pas nécessairement compatibles 2 à 2, il faut trouver un compromis.

### Le problème du génie logiciel

L'objectif est de construire des logicils ergonomoques, fiales, évolutifs & économiques.

## Modèle de développement : le cycle de vie

Avant ce chapitre: bcp de généralités, qui a juste pour but de cadrer la matière.

Ce modèle de dev est spécifique à un type de logiciel (par exemple avec une base de donnée SQL). Un système temps réel
comme par exemple celui pour ariane utiliserait un autre modèle.

La gestion de projet nécessite de modéliser le processus de dev. lui-mème -> cycle de vie.

Plusieurs modèles de cycle de vie ont été élaborés. Tous ont en commun au minimum les 5 phases essentielles de tout développement :
- spécification (cahier des charges)
- conception
- realisation
- test
- exploitation

### Le modèle de la cascade

On réalise chaque étape les unes à la suite des autres, en corrigeant les étapes précédentes à chaque fois si nécéssaires.

Schéma:
 - 1: Spécification (-> 1,2)
 - 2: Conception préliminaire (-> 2,3,1)
 - 3: conception détaillée (-> 4,3,2)
 - 4: réalisation (-> 4, 3)

Avec chaque flèche étant une correction.

Ce modèle a ses limitations, comme par exemple le fait qu'il ne propose pas de tests. Ainsi, les erreurs sont détectées tardivement
et le processus pour les fixer sera donc long.

### Le modèle en V

Ce modèle est assez vieux, mais plus tellement utilisé.

C'est celui que l'on va adpter pour le premier projet.

Il a été proposé pour combler les lacunes du modèle en cascade (qui est en série), c'est à dire la tardiveté de la détection des erreurs.

Avantages: on peut tester les composants indépendaments les uns des autres + on définit les tests au fur et à mesure

### Le modèle en spirale

Peut experimenté. Lié aux projets innovants ou on arrive pas à cerner les besoins du client.

Le plus avantage est que l'on peut changer le cahier des charges plusieurs fois, ce qui serait très dur sur par exemple un modèle en cascade.

## Méthode et méthodologie

Une méthode est un semble de règles qui consuisent à une solution.
Une méthodologue est une agrégation de méthodes, guides, outils, techniques de différents domaines permettant de déduire la manère de résoudre un problème.

## Modèles et modélisation

La modélisation est une activité qui précède toute décision ou formulation.

Un modèle est une vue partielle plus ou moins abstraite de l'existant.
Un modèle est une interprétation de la compréhenstion d'une situation ou d'une idée de la situation.

### Qualité des modèles

Un modèle doit présenter les qualités suivantes:
- abstraction: éviter de faire référence aux détails de toutes les sous parties
- raffinement: un sous-ensemble du modèle soit pouvoir être décrit à l'aide d'un autre modèle
- lisibilité: le modèle doit être ismple à interpréter

Il existe différents types de modèles:
- iconiques
- analogiques
- analytiques
- conceptuels

-> exemples de modèles pour les données, comme jackson ou Modèle Entitité Relation (je crois)
-> exemples de modèles pour les fonctions, comme le diagramme hiérarchique de fonctions
-> exemples de modèles pour le comportement, comme par exemple du pseudo code, un modèle mathématiques, ...
