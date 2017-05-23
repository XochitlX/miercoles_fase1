#Print Chessboard
def ajedrez
  pieces = ["Torre", "Caballo", "Alfil", "Reina", "Rey", "Alfil", "Caballo", "Torre", "Peón"]
  tamaño = pieces.max_by { |x| x.length }.length
  
  for fila in 0..7
    for columna in 0..7
      if fila == 0
        ajuste(pieces[columna], fila, columna, "-N", 1, tamaño)
      elsif fila == 1 #peon     
        ajuste(pieces[8], fila, columna, "-N", 2, tamaño)
      elsif fila == 7
        ajuste(pieces[columna], fila, columna, "-B", 1, tamaño)
      elsif fila == 6 #peon     
        ajuste(pieces[8], fila, columna, "-B", 2, tamaño)
      else  #nada
        ajuste("", fila, columna, "", 3, tamaño)
      end
    end
  end   
end

def ajuste(pieza, fil, col, color, valor, size)
  tablero = Array.new(8){Array.new(8)}
  if valor == 1
    tablero[fil][col] = (pieza + color).ljust(size + 5)
  elsif valor == 2
    tablero[fil][col] = (pieza + color).ljust(size + 5)
  elsif valor == 3
    tablero[fil][col] = pieza.ljust(size + 5)
  end 
  print "|#{tablero[fil][col]}|"
  print "\n\n" if col == 7 
end

ajedrez


#Tabla de Datos
table = [ ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],
          ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]],
          ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
          ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
          ["Ana Espinosa", 14,"Femenino", "Segundo", [9, 9, 6, 8, 8]],
          ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]] ]

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6

