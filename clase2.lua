local edad = 16

if edad >= 18 then
    print("Es mayor de edad")
elseif edad == 17 then
    print("tiene 17")
else
    print("Es menor de edad")
end

for i = 0, 5 do
    print("Numero ".. i)
end

local ii = 1
while ii <= 5 do
    print("Numero white".. ii)
    ii = ii + 1
end

local iii = 1
repeat
    print("Numero repeat ".. iii)
        iii = iii + 1
until iii > 5