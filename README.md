# get_next_line

get_next_line est une fonction utilitaire permettant de lire une ligne depuis un descripteur de fichier, développée dans le cadre du cursus 42. Elle gère la lecture ligne par ligne, même sur des fichiers volumineux ou des entrées multiples.

## Sommaire
- [Fonctionnalités](#fonctionnalités)
- [Arborescence](#arborescence)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Liste des fonctions](#liste-des-fonctions)
- [Auteur](#auteur)

---

## Fonctionnalités
- Lecture d'une ligne à la fois depuis un descripteur de fichier
- Gestion de plusieurs descripteurs simultanément (version bonus)
- Compatible avec n'importe quelle taille de BUFFER_SIZE
- Version bonus : gestion de plusieurs fd, pas de fuite mémoire

---

## Arborescence

```
42-get_next_line/
├── includes/
│   ├── get_next_line.h
│   └── get_next_line_bonus.h
├── src/
│   ├── get_next_line.c
│   ├── get_next_line_utils.c
│   ├── get_next_line_bonus.c
│   └── get_next_line_utils_bonus.c
├── obj/
├── Makefile
└── README.md
```

---

## Installation

1. **Cloner le dépôt**  
   ```sh
   git clone https://github.com/sabejaou/42-get_next_line.git
   cd 42-get_next_line
   ```

2. **Compiler la bibliothèque**  
   ```sh
   make
   ```
   Cela génère `gnl.a` à la racine du projet.

3. **Pour la version bonus**  
   ```sh
   make bonus
   ```

---

## Utilisation

1. **Inclure le header dans votre projet :**
   - Version classique :
     ```c
     #include "get_next_line.h"
     ```
   - Version bonus :
     ```c
     #include "get_next_line_bonus.h"
     ```

2. **Compiler avec la bibliothèque :**
   - Ajoutez le chemin du header et de la lib à vos flags :
     ```sh
     gcc -I/path/to/42-get_next_line/includes -L/path/to/42-get_next_line -lgnl votre_fichier.c
     ```
   - Exemple :
     ```sh
     gcc -I./includes -L. -lgnl main.c
     ```

---

## Liste des fonctions

- `char *get_next_line(int fd);`  
  Lit et retourne la prochaine ligne lue depuis le descripteur `fd`.
- Fonctions utilitaires internes (utils) pour la gestion de la mémoire et des buffers.

---

## Auteur

- **Sabejaou**  
  [sabejaou@student.42lyon.fr](mailto:sabejaou@student.42lyon.fr)