program Shellsort

!--------------------------------
!proposito: aplicar o método Shellsort a partir de um arquivo
!--------------------------------	
!autor: Allan Jales
!data:	14/07/2018
!--------------------------------
	implicit none

	!Varáveis dos arquivos
	character(len=20) :: nome_arq1 = 'shellsort.txt', nome_arq2 = 'shellsort_final.txt'
	integer :: ios
	
	!Varáveis do Shellsort
	integer, dimension(6) :: val  ! lista de valores
	integer               :: i, j ! variaveis auxiliares
	integer               :: N    ! total de elementos na lista
	integer               :: tmp  ! variavel temporaria

	!Abre o arquivo de entrada
	open(unit=10, file=nome_arq1, status='old', action='read', iostat=ios)

	!Vê se abriu
	if (ios == 0) then
		N = 6
		do i=1,N
			read(unit=10, fmt=*) val(i)
		end do
		do i=1,N-1			    ! pivot
			do j=i+1,N                  ! restante da lista
			    if (val(i)>val(j)) then ! no caso de troca
				tmp = val(i)        ! memoria o pivot
				val(i) = val(j)     ! sobrescreve o pivot com o menor valor
				val(j) = tmp        ! sobrescreve o menor com o pivot
			    end if
			end do
			print *, 'ordem parcial:'
			print *, val
		end do
		print *
		print *, 'ordem final:'
		print *, val

		!Abre o arquivo de saída
		open(unit=20, file=nome_arq2, status='replace', action='write', iostat=ios)

		!Checa se criou
		if (ios == 0) then
			do i=1,N
				write(unit=20, fmt=*, iostat=ios) val(i)
				if (ios /= 0) then
					print*, 'Erro inesperado ao salvar arquivo'
					print*, 'Operação abordada'
					exit
				end if
			end do
			if (ios == 0) then
				print*, "Arquivo '", trim(nome_arq2), "' criado com sucesso"
			end if
		else
			!Indica que houve um erro
			print *, "Houve algum erro na criação do arquivo '", trim(nome_arq2), "'"
			print *, 'Operação abordada'
		end if
	else
		!Indica que houve um erro
		print *, "Houve algum erro na leitura do arquivo '", trim(nome_arq1), "'"
		print *, 'Operação abordada'
	end if

	!Fecha os arquivos abertos
	close(unit=10)
	close(unit=20)

end program
