
*** Settings ***

Library             Process
Library             RemoteSwingLibrary

*** Keywords ***

L'utilisateur lance l'exécution du composant Felix
    Start Application    Felix    java -Duser.language=fr -Duser.country=FR -jar SUT/Felix-0.4.3.jar stdout=/dev/null stderr=/dev/null
    Sleep 5s

Felix affiche la vue connexion
    log    TODO

L'utilisateur demande à se connecter
    log    TODO

Felix affiche un message de connexion
    log    TODO

Felix ferme la vue connexion
    log    TODO

Felix affiche la vue chat
    log    TODO

Felix affiche un message d'accueil dans le chat
    log    TODO


L'utilisateur modifie l'adresse IP
    log    TODO

L'utilisateur modifie le numéro du port
    log    TODO


Felix affiche un message de connexion impossible
    log    TODO