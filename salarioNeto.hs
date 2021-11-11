--Descuento de salario en base a funciones 
salNet tipoEmpl salario = 
	let
--Declaracion 
		salBruto = salario
		tipEmpl = tipoEmpl
		isr = descIsr salBruto
		sindicato = descSindic salBruto tipEmpl
		topeSal = descEntret salBruto
		pension = descPension salBruto
		imsss = descImss salBruto
		infonavit = descInfonavit salBruto
		segVid = descSegVid salBruto tipEmpl

	in salario-isr-sindicato-topeSal-pension-imsss-infonavit-segVid

							
--Descuento sindical
descSindic salBruto tipEmpl
	|(tipEmpl=="bac") = (salBruto*0.03)
	|(tipEmpl=="con") = (salBruto*0.01)


--Descuento seguro de vida
descSegVid salBruto tipEmpl
	|(tipEmpl=="bac") = (salBruto*0.01)
	|(tipEmpl=="con") = (salBruto*0.07)


--Descuento ISR
descIsr salBruto = (salBruto*0.25)
	

--Descuento de entretenimiento
descEntret salBruto 
	|(salBruto>30000) = (salBruto*0.02)
	|otherwise = 0


--Descuento pension
descPension salBruto = (salBruto*0.05)


--Descuento IMSS
descImss salBruto = (salBruto*0.04)


--Descuento infonavit
descInfonavit salBruto = (salBruto*0.06)