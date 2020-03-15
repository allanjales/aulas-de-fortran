program Vxt

!--------------------------------
!proposito: Gerar valores para um gráfico vxt com o ângulo escolhido pelo usuário
!--------------------------------	
!autor: Allan Jales
!data:	07/07/2018
!--------------------------------
	implicit none

	!Define constantes
	real, parameter :: g = 9.78, pi = 3.141592654

	!Define variáveis
	real :: vy, h, vo = 10, voy, vox, theta = pi/6, tmax
	integer :: p, ios
	character(len=20) :: nome_arq = 'vxt2.txt'
	integer, parameter :: precisao = 20
	real, dimension(precisao) :: v, t

	print*, 'Por favor digite o ângulo (em graus) de lançamento do projétil a 10m/s'
	read*, theta

	!Cálculos e tempo máximo
	theta = theta*pi/180
	voy = vo*sin(theta)
	vox = vo*cos(theta)
	tmax = 2*abs(voy)/g

	!Pula linha
	print *

	!Abrir arquivo de escrita
	open(unit=10, file=nome_arq, status='replace', action='write', iostat=ios)
	
	!Vê se abriu
	if (ios == 0) then
		!Avisa que substituiu/criou
		print *, 'Arquivo de escrita ', trim(nome_arq), ' criado'

		!Escreve o cabeçalho dos dados do arquivo
		write(unit=10, iostat=ios, fmt='(2(tr1,A14))') 'Velocidade', 'Tempo'

		!Exibição de parametros
		print *
		print *, 'vox = ', vox
		print *, 'tmax =', tmax
		print '(4A18)', 'Tempo ', 'Velocidade y', 'Velocidade', 'Altura'

		!Cálculos
		do p=1,precisao
			!Variação de tempo até este instante
			t(p) = tmax*p/precisao

			!Vy = Voy - gt
			vy = voy - g*t(p)

			!h = Voyt - gt²/2
			h = voy*t(p) - g*t(p)**2/2

			!v = sqrt(Vy²+Vx²)
			v(p) = (vy**2 + vox**2)**0.5

			!Mostra os TODOS dados obtidos para o usuário
			print '(4(A,F14.10))', 't =', t(p), ' vy =', vy, ' v =', v(p), ' h =', h

			!Escreve os dados no de tempo e velocidade num arquivo
			write(unit=10, iostat=ios, fmt='(2(tr1,F14.10))') v(p), t(p)
		end do
	else
		!Se não conseguiu abrir um arquivo, mostra erro
		print *, 'Houve algum erro na escrita dos dados em arquivo'
	end if

	!Fecha o arquivo aberto
	close(unit=10)

end program
