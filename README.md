# Cinemateque

Cinemateque é uma app web para gestão de salas de cinema, com recursos para
cadastro de cinemas e suas salas e cadastro de filmes em exibição.

Esta aplicação faz parte das entrevistas técnicas do programa TreinaDev. Você
receberá mais instruções da equipe da Campus Code, neste documento você vai
encontrar instruções sobre como instalar e executar o projeto em seu computador.

## Pré requisitos

Para executar o Cinemateque você deve ter instalado:

- Ruby 3.3.5
- SQLite

## Configuração

Para instalar o projeto, faça o `git clone` e, dentro do diretório `cinemateque`
execute:

- `bin/setup`

Ao fim da execução a aplicação já estará em execução em `htt://localhost:3000`

## Testes

Para executar todos os testes, execute:

- `bundle exec rspec`

## Execução

Para executar o projeto em seu computador, você deve utilizar o comando
`bin/dev`. Este comando irá instalar a gem `foreman` e executar o arquivo
`Procfile.dev`.

Dentro do arquivo `Procfile.dev` existem 2 comandos: o `rails server` para
executar a aplicação Rails e outro comando que garante que os recursos de
front-end do projeto serão compilados e atualizados caso sejam modificados
durante a navegação.

