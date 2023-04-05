*** Settings ***

Library         Process
Library         RemoteSwingLibrary
*** Variables ***

${MESSAGE_CONNEXION_REUSSIE_DEFAULT}    Connexion au chat @127.0.0.1:12345

*** Keywords ***

Exécution Camix
	Start Process    java    -Duser.language\=fr    -Duser.country\=FR    -jar    SUT/Camix-0.4.3.jar    alias=Camix
	Sleep    2s

Arrêt Camix
    Terminate Process    Camix
	Sleep    2s

Exécution Felix
	Start Application   Felix    java -Duser.language=fr -Duser.country=FR -jar SUT/Felix-0.4.3.jar -b
	...                 stdout=/dev/null    stderr=/dev/null
	Sleep  5s

Arrêt Felix
    Switch To Application    Felix
	System Exit

#
# Keywordsde points de CU
#

L'utilisateur lance l'exécution du composant Felix
    Exécution Felix

Felix affiche la vue connexion
    Window Should Be Open    Connexion Felix

L'utilisateur demande à se connecter
    Select Window    Connexion Felix
    Push Button    Connecter


Felix affiche un message de connexion
    ${MESSAGE_CONNEXION_REUSSIE_DEFAULT} =  Get Text Field Value    Information

Chaque composant Felix concerne affiche un message d’arrivee de l’utilisateur dans le chat
    log     test





