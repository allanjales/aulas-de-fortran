program Bomba

!--------------------------------
!proposito: Gerar valores para um gráfico posição por tempo de um objeto em movimento oblíquo
!--------------------------------	
!autor: Allan Jales
!data:	14/07/2018
!--------------------------------
	implicit none

	!Define constantes
	real, parameter :: g = 9.8
	integer, parameter :: precisao = 20		!Quantas posições serão calculadas
	character(len=10) :: nome_arq = 'bomba.txt'	!Nome do arquivo gerado

	!Define variáveis
	real :: v_aviao_kmh				!Variáveis que serão convertidas
	real :: v_aviao, altura				!Medidas já no SI
	real, dimension(precisao) :: x, y, t		!Cria as listas de posição e tempo
	integer :: p, ios				!Variável temporária e de status
	logical :: erro	= .false.			!Variável de erro na escrita

	!Variáveis auxiliáres	
	real :: tmax					!Tempo máximo de queda livre

	!Entrada de valores
	v_aviao_kmh = 300
	altura = 700

	!Calcula valores extras
	v_aviao = v_aviao_kmh/3.6
	tmax = sqrt(2*altura/g)


	!Abre arquivo de escrita
	open(unit=10, file=nome_arq, status='replace', action='write', iostat=ios)

	!Vê se abriu
	if (ios == 0) then
		!Cria o cabeçalho no arquivo
		write(unit=10, iostat=ios, fmt='(A2,3(tr1,A15))') 'ID', 'tempo [s]', 'posicao x [m]', 'posicao y [m]'
		!Cabeçalho da tabela da tela
		print '(A2,3(tr1,A15))', 'ID', 'tempo [s]', 'posicao x [m]', 'posicao y [m]'

		!Cálculo de cada instante
		do p=0,precisao
			t(p) = tmax/precisao*p		!Tempo percorrido até o instante

			y(p) = altura - g*t(p)**2/2	!y = yo - gt²/2

			x(p) = v_aviao*t(p)		!x = xo + vt

			!Escreve os dados obtidos no arquivo
			write(unit=10, iostat=ios, fmt='(I2,3(tr1,F15.10))') p, t(p), x(p), y(p)

			!Checa se há erros
			if (ios /= 0) then
				erro = .true.
			end if

			!Mostra a tabela na tela
			print '(I2,3(tr1,F15.10))', p, t(p), x(p), y(p)
		end do

		!Avisa se houve algum erro
		if (erro .eqv. .true.) then
			!Avisa que o arquivo teve erro
			print*, "Um ou mais dados não puderam ser escritos no arquivo '", trim(nome_arq), "' corretamente"
		else
			!Avisa que o arquivo foi gerado com sucesso
			print *, "Arquivo '", trim(nome_arq), "' criado com sucesso!"
		end if
	else
		!Indica que houve um erro
		print *, "Houve algum erro na criação do arquivo '", trim(nome_arq), "'"
		print *, 'Operação abordada'
	end if

	!Fecha o arquivo aberto
	close(unit=10)

end program
