Program sum_prod
! --------------------------------
! codigo   : sum_prod
! proposito: calcular somatorio e
!            e produtorio.
! --------------------------------
! autor    : Luis Fernando
! data     : 17/08/2015
! --------------------------------
    implicit none

    real :: x, sum, prod
    integer :: i, n

    ! define o valor de x
    x = 0.5
    ! define o valor de n
    n = 6

    ! somatório
    prod = 1   ! inicializa acumulador com o
               ! primeiro termo do produtorio
    sum = prod ! inicializa acumulador com o
               ! primeiro termo do somatorio
    do i=1,n-1
	print '(t1, A, I3)', 'Para i = ', i
	print '(t2, 2(A, F11.9), A, i2)', 'sum = ', prod, '*', x, '/', i
        prod = prod*x/i  ! produtorio
        sum = sum + prod ! somatorio
	print *, 'sum : ', sum
	print *
    end do

    print*,sum ! saida com o resultado
end program
