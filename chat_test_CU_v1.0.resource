*** Settings ***
# Java version :
Resource    resources/java/chat_test_CU_v1.0.resource

*** Keywords ***

#Précondition: 0 clients dans le chat
Entrer dans le chat
#1.
    L'utilisateur lance l'exécution du composant Felix
#2.
    Felix affiche la vue connexion

#3.
    L'utilisateur demande à se connecter

#4.
    Felix affiche un message de connexion

#5.#6.#7. internes

#8. (non appliqué dans ce test - précondition: 0 clients dans le chat)
    #Chaque composant Felix concern´e affiche un message d’arriv´ee de l’utilisateur dans le chat
#9. interne
#10.
    #Felix ferme la vue de connexion
#11.
    #Felix affiche la vue chat
#12.
    #Felix affiche un message d'accueil dans le chat

Entrer dans le chat [modification d'adresse IP][modification de port]
#1.
    L’utilisateur lance l’execution du composant Felix
#2.
    Felix affiche la vue connexion

#3.
    L'utilisateur modifie la valeur de l'ip dans la vue

#3.
    L'utilisateur modifie la valeur du port dans la vue

#3.
    L'utilisateur demande à se connecter

#4.
    Felix affiche un message de connexion

#5.#6.#7. internes

#8. (non appliqué dans ce test - précondition: 0 clients dans le chat)
    Chaque composant Felix concerne affiche un message d’arrivee de l’utilisateur dans le chat
#9. interne
#10.
    Felix ferme la vue de connexion
#11.
    Felix affiche la vue chat
#12.
    Felix affiche un message d'accueil dans le chat

Entrer dans le chat [connexion impossible]
#1.
    L’utilisateur lance l’execution du composant Felix
#2.
    Felix affiche la vue connexion

#3.
    L'utilisateur modifie la valeur de l'ip dans la vue

#3.
    L'utilisateur modifie la valeur du port dans la vue

#3.
    L'utilisateur demande à se connecter

#4.
    Felix affiche un message de connexion impossible