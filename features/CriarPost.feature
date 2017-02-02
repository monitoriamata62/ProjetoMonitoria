# language: pt

Funcionalidade: Criar post

Cenário: Criar post válido

  Dado que eu estou na página "New Post"
  Quando eu preencher o "Titulo" com "Primeiro post"
  E eu preencher o "Conteudo" com "Bla-bla-bla"
  E eu clicar no botão "Create Post"
  Então eu devo estar na página "Show Post"
  E eu devo ver "Primeiro post"
  E eu devo ver "Bla-bla-bla"

Cenário: Criar post sem título dá erro

  Dado que eu estou na página "New Post"
  Quando eu preencher o "Conteudo" com "Bla-bla-bla"
  E eu clicar no botão "Create Post"
  Então eu devo ver "Titulo can't be blank"

