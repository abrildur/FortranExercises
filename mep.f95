program mep
implicit none

!prueba de ejercicio de cajero automatico

OPEN (7, FILE = 'aiuda.TXT', ACCESS = 'DIRECT',STATUS = 'UNKNOWN')

!declaracion de variables


1 print *, "CAJERO AUTOMATICO DE DIVISAS"
print *, "Buen dia, Ingrese nombre de usuario: "
read(*,*) usuario1
if (usuario1==usuario) then
  2 write(*,*)"Ingrese su NIP"
  read(*,*) nip1
  if (nip1==nip) then
    write(*,*) "Seleccione la opcion que usted desea: "
  	write(*,*) "1. Retirar efectivo"
  	write(*,*) "2. Consulta de efectivo"
  	read(*,*) opcion
  	if (opcion==1) then
    write(*,*)"Seleccione la opcion cantidad que usted desea: "
    write(*,*)"1. Pesos Mexicanos a Guaranies (PYG)"
    write(*,*)"2. Guaranies (PYG) a Pesos Mexicanos"
    write(*,*)"3. Pesos Mexicanos a Bitcoin"
    write(*,*)"4. Bitcoin a Pesos Mexicanos"
    read(*,*) opcion2
    if(opcion2==1) then
      write(*,*) "�Cuanto dinero desea convertir?"
      read(*,*) pesosmx
      if ((pesosmx>=50) .and.(pesosmx<=5000)) then !validacion de pesos mx que ingreso el usuario
  		guarani=pesosmx*282.43
  		print *
  		write(*,*)"Monto que usted deseo:", pesosmx, "Ahora tiene: ", guarani, "Pesos Guarani"
  		print *
        else !!condicional que valida pesosmx
          write(*,*)"No puede hacer hacer una conversion mayor de 5000 MXN ni menor de 50MXN"
          end if
       else !!else de opcion2
         end if

      !!guaranis a pesos mx!   
   	if(opcion2==2) then
      write(*,*) "�Cuanto dinero desea convertir?"
      read(*,*) guarani
      if ((guarani>=14052).and.(guarani<=274200)) then
        pesosmx=guarani/282.43
      	print *
      	write(*,*)"Usted ingreso Guaranis", guarani, "Ahora tiene: ", pesosmx, "Pesos Mexicanos"
  	  	print *
        else
          write(*,*)"Los valores que usted ingreso no existen, favor de verificar sus datos."
          end if !!!termina validacion de datos que ingreso usuario
		else 
        end if !!termina op2 guarani a pesos mx

        
        !!pesos mx a bitcoin
	if (opcion2==3) then
    write(*,*) "Ingrese cantidad de Pesos Mexicanos que desea convertir"
    read(*,*) pesosmx
    if ((pesosmx>=50).and.(pesosmx<=5000)) then
      bitcoin=pesosmx/15739.07
      write(*,*)"Usted ingreso Pesos Mexicanos", pesosmx, "Ahora tiene: ", bitcoin, "Bitcoins"
      else !!else de pesosmx a bitcoin 
        write(*,*)"Los valores que ingreso no existen o es bastante para hacer la operacion, buscar ayuda con un proovedor."
        end if
    else
      end if !!termina condicional del opcion2 pesosmx a bitcoin
      
    !!BITCOINS A PESOSMX
    if (opcion2==4) then
      write(*,*)"Ingrese cantidad de bitcoin:"
      read(*,*) bitcoin
      if ((bitcoin>=0).and.(bitcoin<=1.14)) then
        write(*,*)
        else !!else de validacion de datos 
          write(*,*)"No se puede hacer una conversion mayor de 1.14 BTC ni menor de 0 BTC"
          end if
      else !!else del opcion2 eq 4 BITCOINS A PESOSMX
        end if
        
        !!CONSULTA DE SALDO
    else !!condicional del opcion1
      if (opcion==2) then
        write(*,*)"Su saldo es:", saldo, "Pesos mexicanos"
        else
          end if !!termina condicional op==2
      end if !!termina condicional de opcion1

  	else 
    	write(*,*)"El NIP no coincide con el del usuario, intentelo de nuevo"
        go to 2
    	end if  !!!termina el if de NIP
else 
write(*,*) "El usuario no coincide con el de la base de datos, verifique sus datos"
go to 1
end if !!!termina el if de USUARIO1

end program mep