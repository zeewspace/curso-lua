

function saludar(nombre, apellido)
    return "Hola ".. nombre .." ".. apellido
end

local datos = saludar("Mitsuki", "lala")
print(datos)

local saludoCompleto = datos .. " " .. " ,Como estas?"
print(saludoCompleto)