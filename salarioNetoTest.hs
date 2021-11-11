salarioNeto salario tipo = 

	let

		sal = salario

		emp = tipo

		isr = impIsr sal

		ds = dSin sal emp

		fe = fondEnt sal

		dp = dPens sal

		di = dImss sal

		din = dInfo sal

		dse = dSeg sal emp

	in salario-isr-ds-fe-dp-di-din-dse

							

							

impIsr sal = (sal*0.25)



dSin sal emp

	|(emp=="sin") = (sal*0.03)

	|(emp=="con") = (sal*0.01)

	

fondEnt sal 

	|(sal>30000) = (sal*0.02)

	|otherwise = 0



dPens sal = (sal*0.05)



dImss sal = (sal*0.04)



dInfo sal = (sal*0.06)



dSeg sal emp

	|(emp=="sin") = (sal*0.01)

	|(emp=="con") = (sal*0.07)