program operacao_e
	implicit none

	logical :: a, b, c

	print*
	print *, 'Função: (não a e b) ou (a e não b)'
	
	print*
	print *, 'Para a = T, b = T'
	a = .true.
	b = .true.
	c = (.not. a .and. b) .or. (a .and. .not. b)
	print '(A3, L)', 'R: ', c
	
	print*
	print *, 'Para a = T, b = F'
	a = .true.
	b = .false.
	c = (.not. a .and. b) .or. (a .and. .not. b)
	print '(A3, L)', 'R: ', c
	
	print*
	print *, 'Para a = F, b = T'
	a = .false.
	b = .true.
	c = (.not. a .and. b) .or. (a .and. .not. b)
	print '(A3, L)', 'R: ', c
	
	print*
	print *, 'Para a = F, b = F'
	a = .false.
	b = .false.
	c = (.not. a .and. b) .or. (a .and. .not. b)
	print '(A3, L)', 'R: ', c

end program
