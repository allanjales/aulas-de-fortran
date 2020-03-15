program exercicio_1
	implicit none

	!Define varáveis
	character(len=64) :: nome

	!Pergunta nome
	print *, 'Por favor, digite seu nome'

	!Define a variáveil
	read *, nome

	!Printa na tela
	print '(A, A5, A)', 'Olá, ', nome, '. Seja bem vindo(a) ao curso.'

end program
