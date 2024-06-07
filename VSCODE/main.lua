
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
  seed = os.time()
  math.randomseed(seed)
  return math.random(1,100)
end


function User_answer()
    while true do 
            print("\nDigite seu palpite: ")
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
-- compara o número do jogador com o do computador.
function compara_answer(num_do_computador, answer)
if num_do_computador == answer then return true else return false end
end

function imprime_interacao(numero, resultado_tentativa)
    if resultado_tentativa then
        print("Boa, voce adivinhou o numero: "..numero)
    else
        print("Poxa, nao foi dessa vez que voce conseguiu, mas nao desista!")
        print("Tente novamente")
    end
    return not resultado_tentativa    
end

function partida(secret_number)
      answer = User_answer()
      return imprime_interacao(secret_number,compara_answer(secret_number,answer))
end

function loop_principal()
secret_number = Random_number()
-- print(secret_number) caso queira testar o jogo habilite.
continuar_jogando = true
while continuar_jogando do 
 continuar_jogando = partida(secret_number)
    end
end

function jogo()
      repete_jogo = true
        repeat
        loop_principal()
        print("Deseja testar a sorte novamente? (S, ou N)")
        resposta = io.read()
        if resposta =="N" then
           repete_jogo = false
           end
        until not repete_jogo 
        
        
end
Open_game()
Manual_game()
jogo()


