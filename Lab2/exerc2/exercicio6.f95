program Raiz

!--------------------------------
!proposito: Achar raízes de f(x)=15sen(x)-8x+x² no intervalo [1,4] de forma binária
!--------------------------------	
!autor: Allan Jales
!data:	25/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	real :: a = 1, b = 4, c, fa, fb, fc
	!Variável contadora de passos e precisão
	integer :: i = 1, precisao = 20

	!Pede a precisão que usuário quer
	print *, 'Por favor, digite quantos passos deseja fazer (padrão: 24)'
	read *, precisao
	print *

	!Algoritmo e Cálculos
	do i = 0, precisao
		c = (a+b)/2
		fa = 15*sin(a)-8*a+a**2
		fb = 15*sin(b)-8*b+b**2
		fc = 15*sin(c)-8*c+c**2

		!Verifica em qual intervalo está
		if (fa*fc < 0) then
			!Se estiver em [a, c], analisa [a,c]
			b = c
			!Debug
			print *, 'Debug: ', i, a, '*', c, ' ', b
		else
			!Se estiver em [c,b], analisa [c,b]
			a = c
			!Debug
			print *, 'Debug: ', i, a, ' ', c, '*', b
		end if
	end do
	
	!Exibição dos resultados
	print *
	print *, '--------------------|********************|--------------'
	print *, 'Raíz entre: ', a, ' e ', b

end program
