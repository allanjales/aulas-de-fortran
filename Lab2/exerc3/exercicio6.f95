program Exibir

!--------------------------------
!proposito: exibir letra a letra da string 'Ouviram do Ipiranga as margens plácidas' (len=50)
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

	!Anuncia o resultado
	print *, 'Resultado:'

	!Mostra a string letra por letra
	do i=1,50
		print *, string(i:i)
	end do

end program
