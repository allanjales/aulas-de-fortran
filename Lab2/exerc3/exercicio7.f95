program Exibir

!--------------------------------
!proposito: exibir substrings formadas por 4 caracteres adjacentes a partir do primeiro caractere
!--------------------------------	
!autor: Allan Jales
!data:	28/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	character(len=50) :: string = 'Ouviram do Ipiranga as margens plácidas'
	integer :: i

	!Mostra a string original
	print *, 'A string é: ', string
	print *
	print *, 'Resultado:'

	!Mostra a string em subconjuntos de quatro caracteres
	do i=1,10
		print *, string(i+(i-1)*3:i+3+(i-1)*3)
	end do

end program
