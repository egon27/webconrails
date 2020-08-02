class CuentaBancaria    
    attr_accessor :nombre_de_usuario,                
    :numero_de_cuenta,                
    :vip    
    
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)       
        @nombre_de_usuario = nombre_de_usuario        
        @numero_de_cuenta = numero_de_cuenta            

        if numero_de_cuenta.digits.count != 8                 
            raise RangeError, "La cantidad de digitos de la cuenta es distinta a 8"             
        end        
        @vip = vip        
    end    
    
        def metodo_numero_de_cuenta    
            if vip != 0             
                puts "1-#{numero_de_cuenta}"           
            else            
                puts "0-#{numero_de_cuenta}"        
            end    
    end

end

    cuenta_vip = CuentaBancaria.new('Esteban', 87654321, 0)
    
    puts cuenta_vip.metodo_numero_de_cuenta