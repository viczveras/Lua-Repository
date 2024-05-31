--while enquanto for verdadeiro, realizará o processo, caso não, caira no end.

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