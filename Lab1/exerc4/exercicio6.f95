program relacional
	implicit none

	character(len=7) :: a1, a2, a3, a4, r1, r2, r3, r4, t ! as palavras
	logical :: res  ! resultado logico

	a1 = 'aba'
	a2 = 'ave'
	a3 = 'abacate'
	a4 = 'absurdo'

	! cabecalho de saida
	print *
	res = a1 < a2
	print *, res

end program
