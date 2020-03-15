program Transportadora

!--------------------------------
!proposito: verificar produto e gerar um relatório sobre ele
!--------------------------------	
!autor: Allan Jales
!data:	24/05/2018
!--------------------------------
	implicit none

	!Define variáveis
	integer :: a, b, c
	character(len=18) :: analise
	character(len=8) :: forma
	logical :: valido

	!Define a formatação dos prints
	forma = '(I2, 3A)'

	!Pede os códigos
	print *, 'Digite o código de rastreamento'
	read *, a, b, c

	!Pula linha
	print *
	print *

	!Valida os dados (se os parâmetros foram digitados corretamente no intervalo possível)
	if (a > 0 .and. a <= 5 .and. b >= 0 .and. b <= 1 .and. c > 0 .and. c <= 11) then
		if (c == 9 .or. c == 10) then
			!Se for GOIÁS ou REGIÃO NORTE
			if (b == 1) then
				!Se tem seguro
				print *, 'VÁLIDO'
				valido = .true.
			else
				!Se não tem seguro
				print *, 'INVÁLIDO'
				print *, 'Motivo: encomendas para a região norte e Goiás precisam ter seguro especial, independente do produto'
				valido = .false.
			end if
		else !Se não for GOIÁS ou REGIÃO NORTE
			!Se forem alimentos, materiais de construção e utensílios
			if (a == 1 .or. a == 3 .or. a == 4) then !Não podem ser segurados
				if (b == 1) then
					!Sendo segurados
					print *, 'INVÁLIDO'
					print *, 'Motivo: alimentos, materiais de construção e utensílios não podem ter seguros especiais'
					valido = .false.
				else
					!Não sendo segurados
					print *, 'VÁLIDO'
					valido = .true.
				end if
			else	!Aqui tem os que devem ser segurados (resto)
				if (b == 0) then
					!Se não tiver seguro
					print *, 'INVÁLIDO'
					print *, 'Motivo: equipamentos eletrônicos e materiais de limpeza devem ter seguros especiais'
					valido = .false.
				else
					!Tendo seguro
					print *, 'VÁLIDO'
					valido = .true.
				end if
			end if
		end if
	else
		!Se foi escrito com parâmetros inválidos
		print *, 'INVÁLIDO'
		print *, 'Motivo: parâmetros incorretos'
		valido = .false.
	end if

	!Pula linha
	print *

	!Exibe o valor para o primeiro dígito
	analise = 'Tipo:'
	select case(a)
		case(1)
		print forma, a, ' - ', analise, 'ALIMENTO'

		case(2)
		print forma, a, ' - ', analise, 'MATERIAL DE LIMPEZA'

		case(3)
		print forma, a, ' - ', analise, 'MATERIAL DE CONSTRUÇÃO'

		case(4)
		print forma, a, ' - ', analise, 'UTENSÍLIO DOMÉSTICO'

		case(5)
		print forma, a, ' - ', analise, 'EQUIPAMENTO ELETRÔNICO'
		
		case default
		print forma, a, ' - ', analise, 'não identificado'
	end select

	!Exibe o valor para o segundo dígito
	analise = 'Seguro especial:'
	select case(b)
		case(0)
		print forma, b, ' - ', analise, 'NÃO SEGURADO'

		case(1)
		print forma, b, ' - ', analise, 'SEGURADO'
		
		case default
		print forma, b, ' - ', analise, 'não identificado'
	end select

	!Exibe o valor para o terceiro dígito
	analise = 'Destino:'
	select case(c)
		case(1)
		print forma, c, ' - ', analise, 'RIO DE JANEIRO'

		case(2)
		print forma, c, ' - ', analise, 'SÃO PAULO'

		case(3)
		print forma, c, ' - ', analise, 'MINAS GERAIS'

		case(4)
		print forma, c, ' - ', analise, 'ESPÍRITO SANTO'

		case(5)
		print forma, c, ' - ', analise, 'SANTA CATARINA'

		case(6)
		print forma, c, ' - ', analise, 'RIO GRANDE DO SUL'

		case(7)
		print forma, c, ' - ', analise, 'MATO GROSSO'

		case(8)
		print forma, c, ' - ', analise, 'MATO GROSSO DO SUL'

		case(9)
		print forma, c, ' - ', analise, 'GOIÁS'

		case(10)
		print forma, c, ' - ', analise, 'REGIÃO NORTE'

		case(11)
		print forma, c, ' - ', analise, 'REGIÃO NORDESTE'
		
		case default
		print forma, c, ' - ', analise, 'não identificado'
	end select

	!Pula linha
	print *
	
	!Conclui, dizendo se encaminhou ou não devido a validez
	if (valido .eqv. .true.) then
		print *, 'Conclusão: ENCAMINHADO'
	else
		print *, 'Conclusão: NÃO ENCAMINHADO'
	end if

	!Pula linha
	print *

end program
