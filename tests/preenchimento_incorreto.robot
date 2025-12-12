*** Settings ***
Resource         ../main.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador


*** Test Cases ***
Verificar preenchimento incorreto do formulário
    Dado que eu clique no botão de criar card
    Então verificar se a mensagem de erro é exibida