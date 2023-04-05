*** Settings ***

Resource    resources/java/chat_test_CU-Sc-v1.0.resource

*** Keywords ***

# Précondition : 0 autres clients dans le chat.
Entrer dans le chat
    # 1.
    L'utilisateur lance l'exécution du composant Felix
    # 2.
    Felix affiche la vue connexion
    # 3.
    L'utilisateur demande à se connecter
    # 4.
    Felix affiche un message de connexion
    # 5. 6. 7. internes
    # 8. (non appliqué dans ce test - précondition : 0 client dans le chat)
    # 9. interne
    # 10.
    Felix ferme la vue connexion
    # 11.
    Felix affiche la vue chat
    # 12.
    Felix affiche un message d'accueil dans le chat


Entrer dans le chat [modification d'adresse IP][modification de port]
    # 1.
    L'utilisateur lance l'exécution du composant Felix
    # 2.
    Felix affiche la vue connexion
    # 3.a.1
    L'utilisateur modifie l'adresse IP
    # 3.b.1
    L'utilisateur modifie le numéro du port
    # 3.
    L'utilisateur demande à se connecter
    # 4.
    Felix affiche un message de connexion
    # 5. 6. 7. internes
    # 8. (non appliqué dans ce test - précondition : 0 client dans le chat)
    # 9. interne
    # 10.
    Felix ferme la vue connexion
    # 11.
    Felix affiche la vue chat
    # 12.
    Felix affiche un message d'accueil dans le chat


Entrer dans le chat [connexion impossible]
    # 1.
    L'utilisateur lance l'exécution du composant Felix
    # 2.
    Felix affiche la vue connexion
    # 3.a.1
    L'utilisateur modifie l'adresse IP
    # 3.b.1
    L'utilisateur modifie le numéro du port
    # 3.
    L'utilisateur demande à se connecter
    # 4.
    Felix affiche un message de connexion
    # 5. interne
    # 6.a.1
    Felix affiche un message de connexion impossible
