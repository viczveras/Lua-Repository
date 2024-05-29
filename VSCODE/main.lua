
-- AULA IF
print("digite um valor")
n1=io.read()
print("digite outro valor")
n2=io.read()
print("Digite a operação")
op=io.read()

if op=="+" then
    res=n1+n2

    print("Soma"..res)

elseif op=="-" then
    res=n1-n2

    print("Subtração"..res)
elseif op=="*" then
    res=n1*n2
    
    print("Multiplicação"..res)
elseif op=="/" then 
    res=n1/n2
    print("Divisão"..res)   
else 
    print("Operacao invalida")    

end

