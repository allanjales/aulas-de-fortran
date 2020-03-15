program Triangulo

!--------------------------------
!proposito: classificar triângulos em equilátero, escaleno ou isósceles
!--------------------------------	
!autor: Allan Jales
!data:	24/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	real :: a, b, c

	!Entra com o comprimento das arestas
	print *,  'Entre com o comprimento das arestas do triângulo'
	read *, a, b, c

	!Algoritmo + retornar valores
	if (a == b .and. a == c) then
		print *, 'EQUILÁTERO'
	else if (a /= b .and. a /= c .and. b /= c) then
		print *, 'ESCALENO'
	else
		print *, 'ISÓSCELES'
	endif

end program
