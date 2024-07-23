local coche = {
    marca = "toyota",
    modelo = "carolla",
    mostrar = function(self)
        print("La marca es "..self.marca .. " y el modelo es" .. self.modelo)
    end
}
coche:mostrar()
-- llave - valor
-- propiedad - valor
-- metodos

print(coche.marca .. " " .. coche.modelo)