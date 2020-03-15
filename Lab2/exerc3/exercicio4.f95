program Exibir

!--------------------------------
!proposito: declarar string e exibi-la formatada atribuindo valor usando a função trim()
!--------------------------------	
!autor: Allan Jales
!data:	28/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	character(len=30) :: string = 'cachorro'

	print '(3A)', 'O conteúdo da string eh: ', trim(string), '.'

end program
