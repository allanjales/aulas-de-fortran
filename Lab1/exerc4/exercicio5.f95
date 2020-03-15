program relacional
    implicit none

    character(len=3) :: a, b ! duas variaveis inteiras
    logical :: res  ! resultado logico

    !----------------------------------
    ! entrada de dados
    !----------------------------------

    print*, 'Entre com duas strings de tamanho 3:'
    read*, a, b

    !----------------------------------
    ! avaliacoes relacionais
    !----------------------------------

    ! cabecalho de saida
    print *
    print '(A)', 'a operação b ? resultado'

    res = a .eqv. b 
    print '(4A,L)', a, ' == ', b, ' ? ', res

    res = a .neqv. b 
    print '(4A,L)', a, ' /= ', b, ' ? ', res

    res = a > b 
    print '(4A,L)', a, ' > ', b, ' ? ', res

    res = a < b 
    print '(4A,L)', a, ' < ', b, ' ? ', res

    res = a >= b 
    print '(4A,L)', a, ' >= ', b, ' ? ', res

    res = a <= b 
    print '(4A,L)', a, ' <= ', b, ' ? ', res

end program
