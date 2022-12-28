# Prog-mobile-ios


Voici mon application sur Xcode en swift pour la to-do list

## 1. Vue principale

Nous avons ici la vue pricipale de l'application

On y retourve toutes les taches créées, ainsi que leur status (terminée ou non) marqué par un symbole en "v"

## 2. Ajouter une tache

Il est possible d'ajouter une tache en appuyant sur le "+" de la vue principale
La, une nouvelle vue s'ouvre avec la possibilité de créer une tache en lui attribuant :
- un titre
- une description
- une date d'échéance (work in progress)

Seul le titre est obligatoire. Si le titre n'est pas spécifié, la tache ne sera pas créée
Pour ajouter la tache à la todo-list, il suffit ensuite de cliquer sur le bouton "done"

## 3. Editer une tache

Il est également possible d'éditer une tache en cliquant dessus depuis la vue pricipale
La, une nouvelle vue s'ouvre, quasi identique à celle pour ajouter une tache
Il est alors possible de modifier les élément de la tache et de cliquer sur "done" pour sauvegarder les modifications
La différence par rapport à la vue de création est que il y a un switch en haut à gauche, qui permet de marquer la tache comme réalisée ou non

Cela permet de faire apparaitre dans la vue pricipale à coté de la tache une coche en "v" comme mentionné dans le [paragraphe 1](https://github.com/Pierrot12000/Prog-mobile-ios/edit/main/README.md#1-vue-principale "paragraphe 1")

## 4. Supprimer une tache

Enfin, il est possible de supprimer une tache, directement dans la vue pricipale, en swipant sur la gauche la tache souhaitée
