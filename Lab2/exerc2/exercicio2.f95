program Media

!--------------------------------
!proposito: tirar média e classificar em aprovado, reprovador ou recuperação
!--------------------------------	
!autor: Allan Jales
!data:	24/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	real :: p1, p2, m

	!Pede inserção de dados
	print *,  'Entre com a nota da P1 e P2 do aluno:'
	read *, p1, p2

	!Calcula média
	m = (p1+p2)/2

	!Algoritmo + retornar valores
	if (m >= 7) then
		print '(A, F4.2, A)', 'APROVADO (média = ', m, ')'
	else if (m >= 4) then
		print '(A, F4.2, A)', 'RECUPERAÇÃO (média = ', m, ')'
	else
		print '(A, F4.2, A)', 'REPROVADO (média = ', m, ')'
	endif

end program
