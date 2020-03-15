program Megasena

!--------------------------------
!proposito: contabilizar quantas vezes cada número foi sorteado na mega-sena desde 1996
!--------------------------------	
!autor: Allan Jales
!data:	15/07/2018
!--------------------------------
	implicit none

	!Define constantes
	character(len=30) :: nome_arq1 = 'mega-sena.txt'		!Nome do arquivo a ser lido
	character(len=30) :: nome_arq2 = 'mega-sena_resultado.txt'	!Nome do arquivo a ser escrito

	!Define variáveis
	integer, parameter :: entradas = 1727		!Quantidade de entradas (em linhas)
	integer, dimension(6, entradas) :: mega		!Variavel dos números
	integer, dimension(60) :: contador = 0		!Contador de números
	integer :: ios, i, j				!Variáveis auxiliares
	logical :: erro = .false.			!Variável de erro (checa se teve erro)


	!Abre arquivo de leitura
	open(unit=10, file=nome_arq1, status='old', action='read', iostat=ios)

	!Checa se abriu sem erro
	if (ios == 0) then
		!Abre arquivo de escrita
		open(unit=20, file=nome_arq2, status='replace', action='write', iostat=ios)

		!Checa se criou sem erro
		if (ios == 0) then
			!Mostra a tabela de dados obtidos
			print *, 'Dados obtidos:'

			!Exibe os dados obtidos
			do i=1,entradas
				!Lê cada linha de entradas
				read(unit=10,fmt=*)&
				mega(1,i), mega(2,i), mega(3,i), mega(4,i), mega(5,i), mega(6,i)
				!Exibe cada leitura numa tabela
				print *, mega(1,i), mega(2,i), mega(3,i), mega(4,i), mega(5,i), mega(6,i)
			end do

			!Conta cada uma das entradas lidas
			do i=1,entradas
				do j=1,6
					contador(mega(j,i)) = contador(mega(j,i)) + 1
				end do
			end do

			!Pula linha
			print *

			!Exibe quantas entradas leu
			print '(I4,tr1,A)', entradas, 'entradas lidas: '

			!Registra quantas entradas leu
			write(unit=20, fmt='(I4,tr1,A)', iostat=ios) entradas, 'entradas lidas: '

			!Checa se teve erro
			if (ios /= 0) then
				erro = .true.
			end if

			!Exibe a contagem de cada uma das entradas lidas
			do i=1,60,3
				print '(3(A,I2,A,I4))', '(', i, ') = ', contador(i),&
				' | (', i+1, ') = ', contador(i+1),' | (', i+2, ') = ', contador(i+2)

				!Registra a contagem de cada uma das entradas
				write(unit=20, fmt='(3(A,I2,A,I4))', iostat=ios)&
				'(', i, ') = ', contador(i), ' | (', i+1, ') = ', contador(i+1),&
				' | (', i+2, ') = ', contador(i+2)

				!Checa se teve erro
				if (ios /= 0) then
					erro = .true.
				end if
			end do

			!Avisa se teve algum erro
			if (erro .eqv. .true.) then
				print*, 'Um ou mais dados não puderam ser escritos no arquivo "',&
				trim(nome_arq2), '" corretamente'
			end if
		else
			print *, 'Houve um erro na criação do arquivo "', trim(nome_arq2), '".'
			print *, 'Operação abordada'
		end if
	else
		print *, 'Houve um erro na leitura do arquivo "', trim(nome_arq1), '".'
		print *, 'Operação abordada'
	end if

	!Fecha os arquivos abertos
	close(unit=10)
	close(unit=20)

end program
