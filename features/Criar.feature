# language: pt

Funcionalidade: Criar

#Cenário: CriarDisciplina

  #Dado que eu estou na página "New Disciplina"
  #Quando eu preencher o "Descricao" com "Primeira Disciplina"
  #E eu preencher o "Unidade" com "1"
 # E eu preencher o "Sigla" com "MATA00"
#  E eu clicar no botão "Criar Disciplina"
#  Então eu devo estar na página "Show Disciplina"
    
    
    Cenario: Navegar
    
    Quando eu for para a página "Area"
    Quando eu clicar no link "Unidades"
    Entao eu devo estar na página "Unidade"
    
    
    Cenario: Navegartwo
    
    Dado que eu estou na página "Area"
    Quando eu clicar no link "Disciplinas"
    Então eu devo estar na página "Disciplina"
    
    
    Cenario: NavegarThree
    
    Dado que eu estou na página "Area"
    Quando eu clicar no link "Monitorias"
    Então eu devo estar na página "Monitoria"
    