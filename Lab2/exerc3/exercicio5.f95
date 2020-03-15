program Exibir

!--------------------------------
!proposito: declarar string e exibi-la formatada atribuindo valor usando adjustl() e adjustr()
!--------------------------------	
!autor: Allan Jales
!data:	28/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	character(len=30) :: string = 'cachorro'

	print '(3A)', '[adjustl] O conteúdo da string eh: ', adjustl(string), '.'
	print '(3A)', '[adjustr] O conteúdo da string eh: ', adjustr(string), '.'

end program
