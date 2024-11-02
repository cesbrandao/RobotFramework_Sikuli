#steps
*** Settings ***
Library    SikuliLibrary

*** Variables ***
${IMAGE_DIR}    ${CURDIR}/img/

*** Keywords ***
Carregar diretorio de imagens
    Add Image Path    ${IMAGE_DIR}

Iniciar o ArthaPortable
    Wait Until Screen Contain    ${IMAGE_DIR}app.png    80
    Double Click    ${IMAGE_DIR}app.png

Acessar o license
    Wait Until Screen Contain    ${IMAGE_DIR}btn_about.png    80
    Click    ${IMAGE_DIR}btn_about.png
    Wait Until Screen Contain    ${IMAGE_DIR}btn_about_license.png    80
    Click    ${IMAGE_DIR}btn_about_license.png
    Wait Until Screen Contain    ${IMAGE_DIR}btn_about_close.png    80
    Click    ${IMAGE_DIR}btn_about_close.png

Acessar o credits
    Wait Until Screen Contain    ${IMAGE_DIR}btn_about_credits.png    80
    Click    ${IMAGE_DIR}btn_about_credits.png
    Wait Until Screen Contain    ${IMAGE_DIR}btn_about_close.png    80
    Click    ${IMAGE_DIR}btn_about_close.png

Sair do about
    Wait Until Screen Contain    ${IMAGE_DIR}btn_about_close_unselect.png    80
    Click    ${IMAGE_DIR}btn_about_close_unselect.png

Fechar o aplicativo
    Wait Until Screen Contain    ${IMAGE_DIR}btn_close.png    80
    Click    ${IMAGE_DIR}btn_close.png