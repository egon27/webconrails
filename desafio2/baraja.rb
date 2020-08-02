require_relative 'carta'

class Baraja

    attr_accessor :cartas

    def initialize
        @cartas = []
    end

    def mazo   
        arreglo = ['C', 'D','E','T']  
            arreglo.each do |pinta|
                    num_carta=[1,2,3,4,5,6,7,8,9,10,11,12,13]
                    num_carta.each do |numero|
                        cartas.push(Carta.new(numero, pinta)) 

                    end
            end
    end

    def barajar
      self.cartas = cartas.shuffle!
    end

    def sacar
         self.cartas = cartas.pop
    end

    def repartir_mano
        self.cartas = cartas.pop(5)
    end
end

# se instancian 1 baraja
b1 = Baraja.new
b1.mazo
puts " MAZO => #{b1.inspect}"

# se baraja b1 
b1.barajar
puts " BARAJAR => #{b1.inspect}"

#Saca la primera carta de b1
b1.sacar
puts " SACAR => #{b1.inspect}"

#Saca las primeras 5 de b2
b2 = Baraja.new
b2.mazo
b2.barajar
b2.repartir_mano
puts " REPARTIR MANO => #{b2.inspect}"