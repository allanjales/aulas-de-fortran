program operadores_aritmeticos
	implicit none

	integer :: a, b, c
	real :: x, y, z

	print*,'Entre com os valores de a e b'
	read*, a, b

	print*, 'Entre com os valores de x e y'
	read*, x, y

	c = a**b
	print*, 'c = a**b'
	print*, 'c = ', c
	print '(A,I10)', 'c = ', c

	z = a**x
	print*, 'z = a**x'
	print*, 'z = ', z
	print '(A,F10.4)', 'z = ', z

	z = x**a
	print*, 'z = x**a'
	print*, 'z = ', z
	print '(A,F10.4)', 'z = ', z

	z = x**y
	print*, 'z = x**y'
	print*, 'z = ', z
	print '(A,F10.4)', 'z = ', z

	c = a/b
	print*, 'c = a/b'
	print*, 'c = ', c
	print '(A,I10)', 'c = ', c

	z = a/x
	print*, 'z = a/x'
	print*, 'z = ', z
	print '(A,F10.4)', 'z = ', z

	z = x/a
	print*, 'z = x/a'
	print*, 'z = ', z
	print '(A,F10.4)', 'z = ', z

	z = x/y
	print*, 'z = x/y'
	print*, 'z = ', z
	print '(A,F10.4)', 'z = ', z
	
end program
