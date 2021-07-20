!prueba ejercicio cajero automatico 
program ayuda
implicit none

!Cajero automatico de Pesos Mexicanos a moneda guarani, de moneda guarani a Pesos Mexicanos
!Cajero automatico de Pesos Mexicanos a bitcoins. Bitcoins a pesos mexicanos.
!declaracion de variables
real pesosmx
real guarani
real bitcoin
real:: r(1,1)
integer opcion 

!Inicio del programa: menu del cajero
5 print *, "CAJERO AUTOMATICO DE DIVISAS"
print *, "Buen dia, seleccione la opcion que usted desea:"
write(*,*) "1. Pesos Mexicanos a Moneda Guarani Paraguayo"
write(*,*) "2. Moneda Guarani Paraguayo a Pesos Mexicanos"
write(*,*) "3. Pesos Mexicanos a Bitcoin"
write(*,*) "4. Bitcoin a Pesos Mexicanos"
write(*,*) "Opcion: "
read (*,*)opcion 
!Imprime el resultado de la opcion del 
if ((opcion>=1).and.(opcion<=4)) then
  if (opcion==1) then !opcion 1: pesos mx a guarani
  	write(*,*) "Ingrese cantidad de Pesos Mexicanos que desea convertir"
  	read(*,*) pesosmx
  	if ((pesosmx>=50).and.(pesosmx<=5000))then
    	!validacion de pesos mx que ingreso el usuario
  		guarani=pesosmx*282.43
  		print *
  		write(*,*)"Usted ingreso Pesos Mexicanos", pesosmx, "Ahora tiene: ", guarani, "Pesos Guarani"
  		print *
  		else !si no es igual a esa condicional
    		print*, "Solo se puede realizar la conversion entre 50 peso mx y 5000 pesos mx, favor de verificar sus datos."
			end if
 	else 
   		end if
    !Guarani a pesos mx
    if (opcion==2) then
  	  write(*,*) "Ingrese cantidad de Guaranis Paraguayos que desea convertir"
  	  read(*,*) guarani
      if ((guarani>=14052.98).and.(guarani<=274200)) then !los valores son tomando en cuenta los 50 pesos MX (no puede haber cambios de 1 peso) 
        !y 274200 de maximo en guaranis porque es
        ! 
        !validacion de existencia de guaranis que ingreso el usuario 
      	pesosmx=guarani/282.43
      	print *
      	write(*,*)"Usted ingreso Guaranis", guarani, "Ahora tiene: ", pesosmx, "Pesos Mexicanos"
  	  	print *
      	else !sino existen la cantidad de guaranis que ingreso el usuario enviara este mensajee
        write(*,*)"Los valores que usted ingreso no existen, favor de verificar sus datos."
        	end if
    	else 
    		end if
!Pesos mx a bitcoin
	if (opcion==3) then 
    !https://bitso.com/terms
    	write(*,*) "Ingrese cantidad de Pesos Mexicanos que desea convertir"
  		read(*,*) pesosmx
        if ((pesosmx>=5200).and.(pesosmx<=32000))then
  		bitcoin=pesosmx/15739.07
        CALL RANDOM_NUMBER(r)
  		print *
  		write(*,*)"Usted ingreso Pesos Mexicanos", pesosmx, "Ahora tiene: ", bitcoin, "Bitcoins"
        write(*,*)"Use este codigo para depositarlo en su cuenta: ", (r)
  		print *
        else 
          write(*,*)"Los valores que ingreso no existen o es bastante para hacer la transaccion, buscar ayuda con un proovedor."
          end if
  	else !si no es igual a esa condicional 
		end if
!Bitcoin a pesos mx
	if (opcion==4) then 
    	write(*,*) "Ingrese cantidad de Bitcoins que desea convertir"
  		read(*,*) bitcoin
        if ((bitcoin>=1).and.(bitcoin<=10)) then
  		pesosmx=bitcoin*15739.07
  		print *
  		write(*,*)"Usted ingreso Bitcoins", bitcoin, "Ahora tiene: ", pesosmx, "Pesos Mexicanos"
  		print *
        else !sino se cumple la validacion de datos
          write(*,*)"El valor que usted ingreso de bitcoins es muy grande o no existe, favor de verificar sus datos"
          end if 
  	else !sino es igual a esta condicional, se acaba todo
		end if
!se termina la validacion de la opcion 
else
  	write(*,*)"La opcion que usted ingreso no existe, intentelo de nuevo"
  	go to 5 !va a la linea que tiene 5 por si el usuario desea volverlo a intentar
  		end if
 if ((opcion).NE.(opcion)) then
   write(*,*) "No puede ingresar letras en esta indicacion"
   else
     end if
  !termina el codigo
end program ayuda