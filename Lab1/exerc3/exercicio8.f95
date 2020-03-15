program exercicio_8
	implicit none

	!Define varáveis
	integer :: a, b

	!Pergunta variáveis
	print *, 'Digite o valor da variavel a'
	read *, a

	print *, 'Digite o valor da variável b'
	read *, b

	!Define a variável
	print *, 'a = ', a, ' | b = ', b
	print '(2(A, I5))', 'a = ', a, ' | b = ', b

end program
