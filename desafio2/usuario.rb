require_relative 'cuenta_bancaria'
class Usuario

attr_accessor :nombre, :cuentas

    def initialize(nombre, cuentas=[])
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo_total  
        puts @cuentas.map { |cuenta| cuenta.saldo}.sum
    end

end

cuentas_bancos = [CuentaBancaria.new("BancoParis",2233344,10000),CuentaBancaria.new("Banco Internacional",33456,25000)]

user1 = Usuario.new("Esteban", cuentas_bancos)
user1.saldo_total