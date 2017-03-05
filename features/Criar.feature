# language: pt

Funcionalidade: Criar

Cenário: CriarDisciplina

  Dado que eu estou na página "New Disciplina"
  Quando eu preencher o "Descricao" com "Primeira Disciplina"
  E eu preencher o "Unidade" com "1"
  E eu preencher o "Sigla" com "MATA00"
  E eu clicar no botão "Criar Disciplina"
  Então eu devo estar na página "Show Disciplina"


  Cenário: CriarUnidade

    Dado que eu estou na página "New Unidade"
    Quando eu preencher o "Descricao" com "UNIDADETESTE"
    Quando eu preencher o "Area" com "1"
    E eu clicar no botão "Criar Unidade"
    Então eu devo estar na página "Show Unidade"
