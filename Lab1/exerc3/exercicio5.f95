program impressao
    implicit none

    !--------------------------
    ! declaracao das variaveis
    !--------------------------
    integer :: a              ! inteiro
    real :: x, y              ! reais
    character :: ch           ! caracter
    character(len=30) :: nome ! string

    !----------------------------------------------------
    ! exemplos de leitura via teclado
    !----------------------------------------------------
    a = 10             ! valor inteiro
    x = 1.0            ! valor real
    y = 1e-3           ! valor real
    ch = '#'           ! valor literal
    nome = 'televisao' ! string

    print*                                            ! linha em branco
    print '(t5,A)','         1         2'             ! regua de colunas  
    print '(t5,A)','12345678901234567890'             !
    print*                                            ! linha em branco
    print '(t5,A,t10,I6)', 'a=', a                    ! imprime 'a=' e um inteiro com 5 digitos
    print '(t5,A,F6.3,tr5,A,F6.3)', 'x=', x, ' y=', y ! imprimi string, numero, string, numero  
    print '(2(tr5,A,F6.3))', 'x=', x, ' y=', y        ! o mesmo que a formatacao anterior
    print '(t5,2A)', 'ch=', ch                        ! imprime duas strings
    print '(t5,A,tl5,A15)', 'nome=', nome             ! duas strings tambem

end program

