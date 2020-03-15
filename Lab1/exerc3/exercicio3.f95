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

    print*                                ! linha em branco
    print*,'         1         2'         ! regua de colunas
    print*,'123456789012345678901'        !
    print*,'|         |         |'        
    print*                                ! linha em branco
    print*, 'a=', a                       ! imprime 'a=' e um inteiro com 5 digitos
    print*, 'x=', x, ' y=', y             ! imprimi string, numero, string, numero
    print*, 'x=', x, ' y=', y             ! o mesmo que a formatacao anterior
    print*, 'ch=', ch                     ! imprime duas strings
    print*, 'nome=', nome                 ! duas strings tambem

end program
