program Vxt

!--------------------------------
!proposito: Gerar valores para um gráfico vxt
!--------------------------------	
!autor: Allan Jales
!data:	25/06/2018
!--------------------------------
	implicit none

	!Define constantes
	real, parameter :: g = 9.78, pi = 3.141592654

	!Define variáveis
	real, parameter :: vo = 10, theta = pi/6
	real :: vy, h
	integer :: p, ios
	integer, parameter :: precisao = 20
	character(len=20) :: nome_arq = 'vxt1.txt'

	!Cálculos e tempo máximo
	real, parameter :: voy = vo*sin(theta), vox = vo*cos(theta), tmax = 2*voy/g !Vox e Voy
	real, dimension(precisao) :: v, t

	!Pula linha
	print *

	!Abrir arquivo de escrita
	open(unit=10, file=nome_arq, status='replace', action='write', iostat=ios)
	
	!Vê se abriu
	if (ios == 0) then
		!Avisa que substituiu/criou
		print *, 'Arquivo de escrita ', trim(nome_arq), ' criado'

		!Escreve o cabeçalho dos dados do arquivo
		write(unit=10, iostat=ios, fmt='(2(tr1,A13))') 'Velocidade', 'Tempo'

		!Exibição de parametros
		print *
		print *, 'vox = ', vox
		print *, 'tmax =', tmax
		print '(4A17)', 'Tempo ', 'Velocidade y', 'Velocidade', 'Altura'

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
			print '(4(A,F13.10))', 't =', t(p), ' vy =', vy, ' v =', v(p), ' h =', h

			!Escreve os dados no de tempo e velocidade num arquivo
			write(unit=10, iostat=ios, fmt='(2(tr1,F13.10))') v(p), t(p)
		end do
	else
		!Se não conseguiu abrir um arquivo, mostra erro
		print *, 'Houve algum erro na escrita dos dados em arquivo'
	end if

	!Fecha o arquivo aberto
	close(unit=10)

end program
