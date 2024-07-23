local listaDeTareas = {
    {
        titulo = "pasear al perro",
        descripcion = "el tiene que pasear",
        estado = "completado"
    },
    {
        titulo = "estudiar en zeew",
        descripcion = "Quiero aprender html-css",
        estado = "pendiente"
    },
} -- Todas las tarea

function agregarTarea(titulo, descripcion)
    local tarea = {
        titulo = titulo,
        descripcion = descripcion,
        estado = "pendiente"
    }

    table.insert(listaDeTareas, tarea)
    print('Tarea Agrega: '..titulo)
end

function eliminarTarea(titulo)
    for i, tarea in ipairs(listaDeTareas) do
        if tarea.titulo == titulo then
            table.remove(listaDeTareas, i)
            print("Tarea eliminada")
            return
        end
    end
end

function listarTareas()
    print("Lista de tareas")
    print("----------------")
    for i, tarea in ipairs(listaDeTareas) do
        print("["..tarea.estado.."] "..tarea.titulo.." - "..tarea.descripcion)
    end
    print("----------------")
end

function completarTarea(titulo)
    for i, tarea in ipairs(listaDeTareas) do
        if tarea.titulo == titulo then
            tarea.estado = "Completado"
            return
        end
    end
end



while true do 
    
    print('-------------------')
    print("Gestion de tareas")
    print("1. agregar tarea")
    print("2. eliminar tarea")
    print('3. completar tarea')
    print('4. listar tareas')
    print("5. salir")
    io.write("Selecione una opcion: ")
    local opcion = io.read()

    if opcion == "1" then
        io.write("Titulo: ")
        local crear_titulo = io.read()
        io.write("Descripcion: ")
        local crear_descripcion = io.read()
        agregarTarea(crear_titulo, crear_descripcion)
    elseif opcion == "2" then
        io.write("Titulo: ")
        local eliminar_titulo = io.read()
        eliminarTarea(eliminar_titulo)
    elseif opcion == "3" then
        io.write("Titulo: ")
        local completar_titulo = io.read()
        completarTarea(completar_titulo)
    elseif opcion == "4" then
        listarTareas()
    elseif opcion == "5" then
        break
    else
        print("Esta opcion no es valida")
    end

end