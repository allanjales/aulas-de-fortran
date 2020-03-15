program exercicio_1
	implicit none

	!Define varáveis
	character(len=20) :: nome

	!Pergunta nome
	print *, 'Por favor, digite seu nome'

	!Define a variáveil
	read *, nome

	!Printa na tela
	print *, 'Então seu nome é ', nome
	print '(t5, A)' , 'Aliás, isto é um teste de tabulação.'

end program
