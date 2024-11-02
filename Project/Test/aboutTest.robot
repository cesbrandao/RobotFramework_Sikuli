#cenarios
*** Settings ***
Documentation    Testar botões do aplicativo ArthaPortable
Resource    ../Resource/aboutResource.robot

#run: robot --exitonfailure -d ./report -i Test Project/test
*** Test Cases ***
Navegar pelo aplicativo ArthaPortable
    [Tags]    Test
    Iniciar o ArthaPortable
    Acessar o license
    Acessar o credits
    Sair do about
    Fechar o aplicativo