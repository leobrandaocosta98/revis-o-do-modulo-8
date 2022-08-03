            #language: pt

            Funcionalidade: Tela de compra do site EBAC SHOP
            Como cliente da EBAC SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de compras de produto da EBAC SHOP

            Cenário: Seleção de cor,tamanho e quantidade selecionados e a quantidade menor que 10 produtos
            Quando eu selecionar o "tamanho","quantidade" e "cor"
            E "quantidade" for menor que 10 produtos e clicar no botão adicionar no carrinho
            Então deve ir para opção de "adicionado no carrinho"

            Cenário: Falta uma ou mais seleção tanto de cor, tamanho e quantidade
            Quando eu não selecionar uma das opções "cor","quantidade" ou "tamanho"
            Então deve aparecer "Falta de informação"

            Cenário: Quantidade superior a  produtos
            Quando a "quantidade" for maior que 10 produtos
            Então deve aparecer "Quantidade superior ao permitido"

            Cenário: Apertar o botão Limpar e tiver prooduto no carrinho
            Quando eu acionar o botão "Limpar"
            E tiver produto escolhido
            Então deve ser aparecer uma mensagem de "carrinho limpo"

            Cenário: Apertar o botão Limpar e não tiver produto no carrinho
            Quando eu acionar o botão "Limpar"
            E não tiver produto escolhido
            Então deve ser aparecer uma mensagem de "carrinho sem produto"



            Esquema do Cenário: Autenticar multiplas opções de escolha
            Quando eu clicar o <tamanho>, <cor> e <quantidade>
            E clicar no botão compra
            Então deve aparecer o <resultado>

            Exemplos:
            | tamanho         | cor               | quantidade | resultado                          |
            | "G"             | "Branco"          | 10         | "adicionado no carrinho"           |
            | "M"             | "vermelho"        | 0          | "Falta de informação"              |
            | "não escolhido" | "não selecionado" | 5          | "Falta de informação"              |
            | "P"             | "verde"           | 11         | "Quantidade superior ao permitido" |
                 
            Esquema do Cenário: Autenticar botão de Limpar
            Quando eu tiver produto no <carrinho>
            E apertar botão <Limpar>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:

            | Limpar                     | carrinho      | mensagem               |
            | "apertado botão de Limpar" | "10 produtos" | "carrinho limpo"       |
            | "apertado botão de Limpar" | "0 produto"   | "carrinho sem produto" |

