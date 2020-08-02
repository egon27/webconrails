class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo

    def initialize(banco,numero_de_cuenta,saldo=0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_bancaria)
        @saldo = saldo - monto
        cuenta_bancaria.saldo = cuenta_bancaria.saldo += monto
        puts "#{cuenta_bancaria.saldo}"
    end
end

cuenta1 = CuentaBancaria.new("BancoParis",2233344,10000)
cuenta2 = CuentaBancaria.new("Banco Internacional",33456,0)


cuenta1.transferir(5000,cuenta2)