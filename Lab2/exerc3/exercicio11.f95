program Multiplicador_Matricial

!--------------------------------
!proposito: Usar matmul para multiplicar uma matriz (3x2) por uma (2x4)
!--------------------------------	
!autor: Allan Jales
!data:	29/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	integer, dimension(3,2) :: A
	integer, dimension(2,4) :: B
	integer, dimension(3,4) :: C
	integer :: i, j, temp

	!Dá valores as matrizes A e B
	A = reshape([(i, i=-1,6)],[3,2])
	B = reshape([(i, i=-3,8)],[2,4])

	!Mostra os elementos da Matriz A
	print *, 'A ='
	do i=1,3
		print '(t6,3(A,I2),A)', '|', A(i,1), ' ', A(i,2), '|'
	end do

	!Pula linha
	print *

	!Mostra os elementos da Matriz B
	print *, 'B ='
	do i=1,2
		print '(t6,4(A,I2),A)', '|', B(i,1), ' ', B(i,2), ' ', B(i,3), ' ', B(i,4), '|'
	end do

	!Algoritmo de Multiplicação de Matrizes
	C = matmul(A,B)

	!Pula linha
	print *

	!Mostra a matriz resultante C
	print *, 'AxB ='
	do i=1,3
		print '(t6,4(A,I3),A)', '|', C(i,1), ' ', C(i,2), ' ', C(i,3), ' ', C(i,4), '|'
	end do

end program
