# encoding: utf-8
# language: pt
Funcionalidade: cadastro de usuário
 
  Cenário: Deve preencher todos os campos do forumlário e salvar com sucesso
    Dado que eu estou na página do formulario
    Quando eu preencher todos os campos
    E clicar em "Criar minha conta"
    Então deve ver receber a mensagem "Bem vindo ao Eu Recomendo!"