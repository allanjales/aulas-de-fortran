program Chutometro

!--------------------------------
!proposito: Fazer usuário adivinhar qual o valor da constante
!--------------------------------	
!autor: Allan Jales
!data:	24/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	real, parameter :: a = 0.39
	real :: r
	integer :: t = 1

	!Resumo
	print *, 'Digite valores aleatórios até acertar com a precisão de 2 casas decimais o valor resposta.'
	print *

	!Introdução ao loop do jogo + inserção de dados
	print '(A, I3)', 'Digite um número entre 0 e 1. Tentativa:', t
	read *, r

	!Loop
	do
		if (r <= a + 0.01 .and. r >= a - 0.01) then
			!Se acertou, sai do loop
			exit
		else
			!Se não, fornece mais uma tentativa
			t = t + 1
			!Avisa que errou
			if (r > a) then
				print '(A, I3)', 'Digite novamente - Valor abaixo. Tentativa:', t
			else
				print '(A, I3)', 'Digite novamente - Valor acima. Tentativa:', t
			end if
			!Pede inserção de valor
			read *, r
		end if
	end do

	!Parabéns
	print '(A, I3, A)', 'VOCÊ CONSEGUIU! (Em ', t, ' tentativa(s))'
	print '(t2, A, F4.2)', 'O número era ', a

end program
