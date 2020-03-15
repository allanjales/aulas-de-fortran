program Descobrir_Primos

!--------------------------------
!proposito: descobridor de números primos
!--------------------------------	
!autor: Allan Jales
!data:	28/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	integer, dimension(20) :: primos
	integer :: i = 2, a = 3, b

	!Define os dois primeiros números primos
	primos(1) = 1
	primos(2) = 2

	do
		print *, 'Testando com ', a
		!Roda b entre todos os números primos já vistos, menos o numero 1
		do b=2,i
			!Testa se é divisível pelo resto
			if (modulo(a,primos(b)) == 0) then
				!É divisível por um número diferente de 1 e ele próprio
				print *, a, ' é divisivel por ', primos(b)
				exit
			end if

			!Se não detectou divisibilidade e é o último, então é primo
			if (b == i) then
				i = i+1
				primos(i) = a
				print *, a, ' é número primo!'
			end if
		end do
		

		!Próximo número a ser testado
		a = a+1
		!Se tem essa quantidade de primos, para de procurar
		if (i >= 20) then
			exit
		end if
	end do

	print *
	!Finaliza o programa mostrando TODOS os números primos
	print *, 'Resultado: '
	print *
	!Mostra cada primos associado a sua posição
	do a=1,i
		print '(I3, A, I8)', a, 'º - ', primos(a)
	end do

end program
