def promedio(array)
    new_array = []
    largo = array.count
    suma = 0.0
    array.each do |p|
        if p == "N.A"
            new_array.push("2.0")  # convirtiendo los N.A en nota 2
            suma = suma + 2.0      # sumando los 2
        else
            new_array.push(p)      # sumando y pasando a float
            suma = suma + p.to_f
        end
    end
    suma = suma / largo
    return suma
end

notas = ARGV[0]
array = notas.split(',')
resultado = promedio(array)
print "\n"
puts "El promedio de las notas es #{resultado}"


