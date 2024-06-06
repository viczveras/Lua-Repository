function Open_game()
    print("Bem vindo ao jogo")
    print("Desenvolvido por Victor Veras")
end

function Manual_game()
    print("Voce deseja ler o manual do jogo?(S, ou N,)")
      local resposta_manual=io.read()
        if resposta_manual=="S" then
            print[["Este e um jogo de adivinhacao, onde o seu objetivo e adivinhar qual o numero que o computador esta pensando.
            Voce como jogador devera chutar um numero e diremos se esta correto ou errado.
            Se estiver errado, daremos dicas para que voce continue tentando."]]
        end
    end

function Random_number()
    return 50
    
end

function User_answer()
    while true do 
        answer = io.read()
        if type(tonumber(answer)) == "number" then --se a resposta for do tipo número faça
        answer = tonumber(answer)
        if answer > 100 or answer < 1 then
            print("Digite um numero entre 1 e 100")
        else 
            return answer    
        end
    else
        print("Voce deve digitar apenas numeros")
        end
end
end


print("Hello world")



