            #language: pt

            Funcionalidade: Tela de cadastro do site EBAC SHOP
            Como cliente da EBAC SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro do usuário na EBAC SHOP

            Cenário: E-mail válido
            Quando eu digitar o "e-mail"
            E for "e-mail" válido
            Então deve aparecer uma mensagem de "e-mail válido"

            Cenário: Cadastro com e-mail não verificado
            Quando eu digitar um "e-mail" inválido
            Então deve aparecer uma mensagem de "e-mail inválido"

            Cenário: Cadastro válido
            Quando eu digitar todos os "campos" com asterisco
            E um "e-mail" válido
            Então deve aparecer uma mensagem de "cadastro válido"

            Cenário: Cadastro com campos com asterisco em branco
            Quando eu não digitar todos os "campos" com asterisco
            Então deve aparecer uma mensagem de "campo em branco"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar os <campos> com asterisco
            E um <e-mail>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | campos                 | e-mail              | mensagem          |
            | "todos preenchido"     | "leonardo@ebac.com" | "cadastro válido" |
            | "ainda não preenchido" | "leonardo@ebac.cm"  | "e-mail inválido" |
            | "ainda não preenchido" | "leonardo@ebac.com" | "e-mail válido"   |
            | "campo em branco"      | "leonardo@ebac.com" | "campo em branco" |
