# Second cours

7 septembre 2020 (soir)

On va faire une étude de cas, sur le système de commande pour le chargement automatique d'un chariot.

Tout ce qu'on a fait dans cette scéance est dans la phase de spécification de ce qu'on a vu ce matin.

** expliqué dans le PDF
On gère un opérateur qui doit déplacer un chariot entre deux points, pour le vider/charger (en enlevant de la pierre).
Un cycle consiste à se déplacer du point de dépot au point de charge, de le charger, de revenir au point de dépot et de le vider.
L'opérateur à l'option d'appuyer sur un bouton d'arrêt d'urgence.
** /expliqué dans le PDF

## 1ère phase : Modélisation de l'environnement

- Déterminer les objets utiles de l'environnement.
- Caractériser les détails nécessaires et suffisants pour chaque objet.
- Les classer en catégories :
	- données (données, variable d'états, évènement)
	- activités (actions, activités)
	- relations
- Modélisation selon les 3 vues

Le but de cette partie est synchroniser la partie opérative.

### Objets

On commence par caractériser tous les objets dont l'on va parler. Pour cela, on utilise des modèles externes ou explicites.

Un exemple de modèle est par exemple, pour la vitesse du chariot :

- 0
- +V (déplacement à droite)
- -V (déplacement à gauche)

### Données

Les données sont les variables que l'on va utiliser pour décrire les différents modèles.

### Actions & Activités

Après avoir défini ses variables, on peut définir les actions.

### Exemple

**NOTE: le prof marque l'état initial avec un double cercle (ou flèche initiale), ce n'est pas la même chose qu'un état final**

- 4 objets identifiés:
	- le système de contrôle-commande
	- de l'environnement:
		- l'opérateur
		- le chariot
		- le tapis chargeur
- le chariot:
	- 3 variables à états discrets:
	- P (position) : $P inf_eq P2, P2 inf P inf P1, P sup_eq P1$
	- V (vitesse) : déplacement_droite, déplacement_gauche, arrêt
	- T(trappe) : ouverte, fermée
	- V dépend de la commande de deplacement appliquée: Avancer, Reculer, Arrêter
	- T dépend de la commande d'ouvertre appliquée: Ouvrir, Fermer

*rappel de la définition d'un automate, machine de mealy, machine de moore*

exemple d'automate pour la trappe:

deux états: ouverte/fermée
transitions: ouverte -> fermée avec sur la transition "fermer"
             fermée  -> ouverte avec sur la transition "ouverte"
	     ouverte -> ouverte avec sur la transition "ouvrir"
	     fermée  fermée avec sur la transition "fermer"
état initial: fermée

avec ouvrir, fermer des commandes

Autre exemple: pour la vitesse

trois états: $P \leqslant P2$, déplacement à droite, arrêt, déplacement à gauche, $P sup_eq P1$
état initial: premier de la liste
transitions:
	$P \leqslant P2$ -> déplacement à droite avec sur la transition "+V"
	$déplacement à droite$ -> arrêt avec sur la transition $\emptyset$
        arrêt -> déplacement à gauche avec sur la transition -v

## Second phase : détermination des entrées et des sorties

On spécifie le système qui gère les entrées et les sorties de chaque objet, c'est à dire les commandes que l'on envoie aux objets.

*insérer last schema*

il faudra compléter ce modèle par l'arrêt d'urgence


