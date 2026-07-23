Algoritmo area_de_circulo
	Definir opcion, totalCirculos Como Entero
	Definir i, idBuscar Como Entero
	Definir encontrado Como Logico
	Definir radio, area, circunferencia Como Real
	Definir sumaAreas, sumaRadios, sumaCircunferencias Como Real
	Definir promedioAreas, promedioRadios Como Real
	Definir mayorArea, menorArea Como Real
	Definir mayorRadio, menorRadio Como Real
	Definir mayorCircunferencia, menorCircunferencia Como Real
	Dimension id[100]
	Dimension descripcion[100]
	Dimension radio[100]
	Dimension area[100]
	Dimension circunferencia[100]
	Dimension estado[100]
	totalCirculos <- 0
	//---------------------------------//
	//--|menu_principal_area_circulo|--//
	//---------------------------------//
	Repetir
		Escribir "menu principal area de circulo"
		Escribir "1) registrar circulo"
		Escribir "2) editar circulo"
		Escribir "3) eliminar circulo"
		Escribir "4) buscar circulo"
		Escribir "5) listar circulos"
		Escribir "6) ver detalles del circulo"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_circulo|--//
			//-----------------------//
			1:
				Si totalCirculos < 100 Entonces
					totalCirculos <- totalCirculos + 1
					id[totalCirculos] <- totalCirculos
					Escribir "ingrese una descripcion:"
					Leer descripcion[totalCirculos]
					Escribir "ingrese el radio:"
					Leer radio[totalCirculos]
					area[totalCirculos] <- 3.1416 * radio[totalCirculos] * radio[totalCirculos]
					circunferencia[totalCirculos] <- 2 * 3.1416 * radio[totalCirculos]
					estado[totalCirculos] <- "calculado"
					Escribir "circulo registrado correctamente."
				SiNo
					Escribir "no hay espacio para registrar mas circulos."
				FinSi
			//--------------------//
			//--|editar_circulo|--//
			//--------------------//
			2:
				Escribir "editar circulo"
				Si totalCirculos = 0 Entonces
					Escribir "no hay circulos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalCirculos Hacer
						Escribir id[i], " | ", descripcion[i], " | ", radio[i], " | ", area[i], " | ", circunferencia[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del circulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCirculos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva descripcion:"
							Leer descripcion[i]
							Escribir "ingrese el nuevo radio:"
							Leer radio[i]
							area[i] <- 3.1416 * radio[i] * radio[i]
							circunferencia[i] <- 2 * 3.1416 * radio[i]
							estado[i] <- "calculado"
							Escribir "circulo editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un circulo con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|eliminar_circulo|--//
			//----------------------//
			3:
				Escribir "eliminar circulo"
				Si totalCirculos = 0 Entonces
					Escribir "no hay circulos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalCirculos Hacer
						Escribir id[i], " | ", descripcion[i], " | ", radio[i], " | ", area[i], " | ", circunferencia[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del circulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCirculos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalCirculos Entonces
								Para j <- i Hasta totalCirculos - 1 Hacer
									id[j] <- id[j+1]
									descripcion[j] <- descripcion[j+1]
									radio[j] <- radio[j+1]
									area[j] <- area[j+1]
									circunferencia[j] <- circunferencia[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalCirculos <- totalCirculos - 1
							Escribir "circulo eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un circulo con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|buscar_circulo|--//
			//--------------------//
			4:
				Escribir "buscar circulo"
				Si totalCirculos = 0 Entonces
					Escribir "no hay circulos registrados."
				SiNo
					Escribir "ingrese el id del circulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCirculos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", descripcion[i], " | ", radio[i], " | ", area[i], " | ", circunferencia[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un circulo con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|listar_circulos|--//
			//---------------------//
			5:
				Escribir "listar circulos"
				Si totalCirculos = 0 Entonces
					Escribir "no hay circulos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalCirculos Hacer
						Escribir id[i], " | ", descripcion[i], " | ", radio[i], " | ", area[i], " | ", circunferencia[i], " | ", estado[i]
					FinPara
				FinSi
			//------------------------------//
			//--|ver_detalles_del_circulo|--//
			//------------------------------//
			6:
				Escribir "ver detalles del circulo"
				Si totalCirculos = 0 Entonces
					Escribir "no hay circulos registrados."
				SiNo
					Escribir "ingrese el id del circulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCirculos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del circulo"
							Escribir "id: ", id[i]
							Escribir "descripcion: ", descripcion[i]
							Escribir "radio: ", radio[i]
							Escribir "area: ", area[i]
							Escribir "circunferencia: ", circunferencia[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un circulo con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalCirculos = 0 Entonces
					Escribir "no hay circulos registrados."
				SiNo
					sumaAreas <- 0
					sumaRadios <- 0
					sumaCircunferencias <- 0
					mayorArea <- area[1]
					menorArea <- area[1]
					mayorRadio <- radio[1]
					menorRadio <- radio[1]
					mayorCircunferencia <- circunferencia[1]
					menorCircunferencia <- circunferencia[1]
					Para i <- 1 Hasta totalCirculos Hacer
						sumaAreas <- sumaAreas + area[i]
						sumaRadios <- sumaRadios + radio[i]
						sumaCircunferencias <- sumaCircunferencias + circunferencia[i]
						Si area[i] > mayorArea Entonces
							mayorArea <- area[i]
						FinSi
						Si area[i] < menorArea Entonces
							menorArea <- area[i]
						FinSi
						Si radio[i] > mayorRadio Entonces
							mayorRadio <- radio[i]
						FinSi
						Si radio[i] < menorRadio Entonces
							menorRadio <- radio[i]
						FinSi
						Si circunferencia[i] > mayorCircunferencia Entonces
							mayorCircunferencia <- circunferencia[i]
						FinSi
						Si circunferencia[i] < menorCircunferencia Entonces
							menorCircunferencia <- circunferencia[i]
						FinSi
					FinPara
					promedioAreas <- sumaAreas / totalCirculos
					promedioRadios <- sumaRadios / totalCirculos
					Escribir "estadistica general"
					Escribir "total de circulos: ", totalCirculos
					Escribir "suma de areas: ", sumaAreas
					Escribir "promedio de areas: ", promedioAreas
					Escribir "area mayor: ", mayorArea
					Escribir "area menor: ", menorArea
					Escribir "suma de radios: ", sumaRadios
					Escribir "promedio de radios: ", promedioRadios
					Escribir "radio mayor: ", mayorRadio
					Escribir "radio menor: ", menorRadio
					Escribir "suma de circunferencias: ", sumaCircunferencias
					Escribir "circunferencia mayor: ", mayorCircunferencia
					Escribir "circunferencia menor: ", menorCircunferencia
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar area de circulo."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo