--[[while enquanto for verdadeiro, realizará o processo, caso não, caira no end.

num=0
while num<10 do
    print(num)
    num=num+1
end

print("\n")

--repeat : até que seja verdadedeiro.
num=0
repeat 
    print(num)
    num=num+1
until num>10

--for numérico
dias={"Domingo","Segunda","Terca","Quarta","Quinta","Sexta","Sabado"}
--for i = 1,7 do
--    print(dias[i])
--   
-- end

for k,v in pairs(dias) do
    print(k.." - "..v)
    
end
--for tradicional
nome="Victor"
for v in string.gmatch(nome,".") do
    print(v)
    
end

i=0
-- o return também poderia ser usado no local mas acabaria com o programa.
while i<100 do
    print(i)
    if i > 10 then 
        break
    end
    i=i+1
end
print("Fim da execucao")


-- go to

::ini::
print("Digite um numero: ")
numero=io.read()
print("Numero digitado: "..numero)
print("\nDigitar outro numero? ")
resp=io.read()

if resp=="s" then
    goto ini
    
end


-------

--[[
::sala1:: do
 print("\n\nVoce esta na sala 1")
 print("Deseja ir para qual sala? [1,2,3,4,]")
 local sala=io.read()
 if     sala=="1" then
    goto sala1
 elseif sala=="2" then
    goto sala2
elseif  sala=="3" then
    goto sala3
elseif sala=="4" then 
    goto sala4   
else 
    print("Sala invalida")
 end

end

::sala2:: do
    print("\n\nVoce esta na sala 2")
    print("Deseja ir para qual sala? [1,2,3,4,]")
    local sala=io.read()
    if     sala=="1" then
       goto sala1
    elseif sala=="2" then
       goto sala2
   elseif  sala=="3" then
       goto sala3
   elseif sala=="4" then 
       goto sala4   
   else 
       print("Sala invalida")
    end
   
   end
   
   ::sala3:: do
    print("\n\nVoce esta na sala 3")
    print("Deseja ir para qual sala? [1,2,3,4,]")
    local sala=io.read()
    if     sala=="1" then
       goto sala1
    elseif sala=="2" then
       goto sala2
   elseif  sala=="3" then
       goto sala3
   elseif sala=="4" then 
       goto sala4   
   else 
       print("Sala invalida")
    end
   
   end
 --]]  
  --[[ ::sala4:: do
    print("\n\nVoce esta na sala 4, e descobriu a saida! Parabens")
    print("Fim de jogo")
    local sala=io.read()
    if     sala=="1" then
       goto sala1
    elseif sala=="2" then
       goto sala2
   elseif  sala=="3" then
       goto sala3
   elseif sala=="4" then 
       goto sala4   
   else 
       print("Sala invalida")
    end
   
   end
   
 --]]

   -- listas 

   num={10,5,8,2,3,4,5,7,5,2,9}
   --for i = 1,10 do
   -- print(num[i])
   --end

--[[for i=1, #num do
    print(num[i])
   end
print("---------------")
soma=0
for i=1, #num do
    soma=soma+num[i]
end
print("Soma "..soma)
--]]

--functions

--[[function ola()
print("Seja bem vindo")
print("Continuação Lua")
print("----------------")
end    

ola()
--]]
print("Digite o primeiro valor: ")
num1=io.read()
print("Digite o segundo valor: ")
num2=io.read()

--[[function soma(n1,n2)
    res=n1+n2
    print("A soma de "..n1.." e "..n2.." da "..res)
    print("-------------------------------")
end   
--]]
-- tá funcional, mas não sei pq o debugger não roda esse código
--[[function calc(n1,n2)
    soma=n1+n2
    mult=n1*n2
    subt=n1-n2
    divz=n2/n2

    return soma,mult,subt,divz
end
rsoma,rmult,rsubt,rdivz=calc(num1,num2)


print(rsoma,rmult,rsubt,rdivz)
print("-------------------------------")
--]]

--funcão variadica
function soma(...)
    local s=0
    for i,v in pairs{...} do
        s=s+v
    end
 return s
end
 print("Soma: "..soma(1,2,3,))
