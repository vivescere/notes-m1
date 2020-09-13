## Plan

- threads en java
- problème d'atomicité et techniques classique de synchro.
- outils: collections concurrentes, réservoirs de threads, etc
- programmation optimiste et programmation sans verrou
- le modèle mémoire java

Volume horaire:
- 10h de cours
- 8H de TD
- 8H de TP

Première session:
$NF=0.25*P+0.75*ET$

Avec $P$ des TP; l'examen fera 2h et sera sans documents.

Session session:
$NF=max(0.25*P+0.75*ET',ET')$

## Threads

API en Java :
- `Thread`
- `Runnable`
- `Thread#start`
- `Runnable#run`
- `Thread#setName`
- `Thread#getName`
- `Thread#currentThread`
- `Thread#setPriority` - à ne pas utiliser
- `Thread#getState`
- `Thread#join`
- `Thread#sleep`
- `Thread#yield`
- `volatile`

