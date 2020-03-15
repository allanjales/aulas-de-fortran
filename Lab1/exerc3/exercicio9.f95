program exercicio_9
	implicit none

	!Define varáveis
	integer :: a
	real :: b

	!Pergunta variáveis
	print *, 'Digite o valor da variavel a (inteiro)'
	read *, a

	print *, 'Digite o valor da variável b (real)'
	read *, b

	!Define a variável
	print *, 'a = ', a, ' | b = ', b
	print '(A, I5, A, F7.5)', 'a = ', a, ' | b = ', b

end program
