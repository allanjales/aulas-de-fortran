program via_teclado
	implicit none

	!--------------------------
	! declaracao das variaveis
	!--------------------------
	integer :: a              ! inteiro
	real :: x, y              ! reais
	character :: ch           ! caracter
	character(len=30) :: nome ! string

	!---------------------------------------------
	! exemplos de leitura via teclado
	!---------------------------------------------
	read *, a         ! le variavel a
	read *, x, y      ! le variaveis x e y
	read *, ch, nome  ! le variavel ch e nome

end program

