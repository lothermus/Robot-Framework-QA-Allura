*** Settings ***
Resource         ../main.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador


*** Test Cases ***

Verificar se os dados são preenchidos e o card é criado
    Dado que eu preencha os campos do formulário
    E clique no botão de criar card
    Então indentificar se o card está no time correto


Verificar se é possível criar mais de um card se o campo for preenchido corretamente
    Dado que eu preencha os campos do formulário
    E clique no botão de criar card
    Então identificar 3 cards no time esperado

Verificar se é possível criar um card para cada time
    Dado que eu preencha os campos do formulário
    Então criar e identificar 1 card em cada time disponível
    Sleep    10s