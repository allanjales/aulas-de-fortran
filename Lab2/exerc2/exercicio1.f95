program Aprovacao

!--------------------------------
!proposito: dizer se aluno está aprovado ou reprovado
!--------------------------------	
!autor: Allan Jales
!data:	24/05/2018
!--------------------------------

	implicit none

	!Define variáveis
	real :: a, b

	!Pede inserção de dados
	print *,  'Digite a média final do aluno e em seguida a nota necessária para a aprovação'
	read *, a, b

	!Algoritmo + retornar valores
	if (a >= b) then
		print *, 'APROVADO'
	else
		print *, 'REPROVADO'
	endif

end program
