Algoritmo TurnosMedicos
	
	Definir HORARIO_INICIO Como Entero;
	Definir HORARIO_FIN Como Entero;
	Definir MINUTOS_POR_TURNO Como Entero;
	Definir DIAS_DE_LA_SEMANA Como Entero;
	Definir num, num2,num3 Como Entero;
	// Definir constantes;
	HORARIO_INICIO<- 9;
	HORARIO_FIN <-17;
	MINUTOS_POR_TURNO <-30;
	DIAS_DE_LA_SEMANA <- 5; // Lunes a Viernes;
	
	// Definir arreglos;
	Dimension Especialidades[24];
	Dimension DoctoresDisponibles[24, 2];
	Dimension Turnos[5, 17];//  5 d�as, 17 horarios(de 9 am a 17 pm)
	// Inicializar arreglos de especialidades;
	Especialidades[1] <- "Cl�nica M�dica";
	Especialidades[2] <- "Cirug�a General";
	Especialidades[3] <- "Pediatr�a";
	Especialidades[4] <- "Obstetricia y Ginecolog�a";
	Especialidades[5] <- "Cardiolog�a";
	Especialidades[6] <- "Dermatolog�a";
	Especialidades[7] <- "Neurolog�a";
	Especialidades[8] <- "Psiquiatr�a";
	Especialidades[9] <- "Oftalmolog�a";
	Especialidades[10] <- "Otorrinolaringolog�a";
	Especialidades[11] <- "Urolog�a";
	Especialidades[12] <- "Traumatolog�a y Ortopedia";
	Especialidades[13] <- "Gastroenterolog�a";
	Especialidades[14] <- "Endocrinolog�a";
	Especialidades[15] <- "Medicina Interna";
	Especialidades[16] <- "Neumonolog�a";
	Especialidades[17] <- "Hematolog�a";
	Especialidades[18] <- "Infectolog�a";
	Especialidades[19] <- "Radiolog�a";
	Especialidades[20] <- "Oncolog�a";
	Especialidades[21] <- "Cirug�a Pl�stica y Reconstructiva";
	Especialidades[22] <- "Cirug�a Cardiovascular";
	Especialidades[23] <- "Cirug�a Pedi�trica";
	Especialidades[24] <- "Neurocirug�a";
	
	// Inicializar arreglo de doctores disponibles;
	DoctoresDisponibles[1, 1] <- "Doctor Gomez"
	DoctoresDisponibles[1, 2] <- "Doctora Manzano"
	
	// Asignar apellidos a los doctores disponibles para "Cirug�a General"
	DoctoresDisponibles[2, 1] <- "Doctor Rodriguez"
	DoctoresDisponibles[2, 2] <- "Doctora Silva"
	
	// Asignar apellidos a los doctores disponibles para "Pediatr�a"
	DoctoresDisponibles[3, 1] <- "Doctor Lopez"
	DoctoresDisponibles[3, 2] <- "Doctora Perez"
	
	// Asignar apellidos a los doctores disponibles para "Obstetricia y Ginecolog�a"
	DoctoresDisponibles[4, 1] <- "Doctor Hernandez"
	DoctoresDisponibles[4, 2] <- "Doctora Torres"
	
	// Asignar apellidos a los doctores disponibles para "Cardiolog�a"
	DoctoresDisponibles[5, 1] <- "Doctor Fernandez"
	DoctoresDisponibles[5, 2] <- "Doctora Gonzalez"
	
	// Asignar apellidos a los doctores disponibles para "Dermatolog�a"
	DoctoresDisponibles[6, 1] <- "Doctor Martinez"
	DoctoresDisponibles[6, 2] <- "Doctora Sanchez"
	
	// Asignar apellidos a los doctores disponibles para "Neurolog�a"
	DoctoresDisponibles[7, 1] <- "Doctor Ramirez"
	DoctoresDisponibles[7, 2] <- "Doctora Diaz"
	
	// Asignar apellidos a los doctores disponibles para "Psiquiatr�a"
	DoctoresDisponibles[8, 1] <- "Doctor Torres"
	DoctoresDisponibles[8, 2] <- "Doctora Santos"
	
	// Asignar apellidos a los doctores disponibles para "Oftalmolog�a"
	DoctoresDisponibles[9, 1] <- "Doctor Castro"
	DoctoresDisponibles[9, 2] <- "Doctora Ferrer"
	
	// Asignar apellidos a los doctores disponibles para "Otorrinolaringolog�a"
	DoctoresDisponibles[10, 1] <- "Doctor Navarro"
	DoctoresDisponibles[10, 2] <- "Doctora P�rez"
	
	// Asignar apellidos a los doctores disponibles para "Urolog�a"
	DoctoresDisponibles[11, 1] <- "Doctor Rojas"
	DoctoresDisponibles[11, 2] <- "Doctora Vargas"
	
	// Asignar apellidos a los doctores disponibles para "Traumatolog�a y Ortopedia"
	DoctoresDisponibles[12, 1] <- "Doctor Hern�ndez"
	DoctoresDisponibles[12, 2] <- "Doctora Silva"
	
	// Asignar apellidos a los doctores disponibles para "Gastroenterolog�a"
	DoctoresDisponibles[13, 1] <- "Doctor Guti�rrez"
	DoctoresDisponibles[13, 2] <- "Doctora Cabrera"
	
	// Asignar apellidos a los doctores disponibles para "Endocrinolog�a"
	DoctoresDisponibles[14, 1] <- "Doctor Ruiz"
	DoctoresDisponibles[14, 2] <- "Doctora Alvarez"
	
	// Asignar apellidos a los doctores disponibles para "Medicina Interna"
	DoctoresDisponibles[15, 1] <- "Doctor Ortega"
	DoctoresDisponibles[15, 2] <- "Doctora Fuentes"
	
	// Asignar apellidos a los doctores disponibles para "Neumonolog�a"
	DoctoresDisponibles[16, 1] <- "Doctor Luna"
	DoctoresDisponibles[16, 2] <- "Doctora Flores"
	
	// Asignar apellidos a los doctores disponibles para "Hematolog�a"
	DoctoresDisponibles[17, 1] <- "Doctor Mendoza"
	DoctoresDisponibles[17, 2] <- "Doctora Marti"
	
	// Asignar apellidos a los doctores disponibles para "Infectolog�a"
	DoctoresDisponibles[18, 1] <- "Doctor Fernandez"
	DoctoresDisponibles[18, 2] <- "Doctora Gonzalez"
	
	// Asignar apellidos a los doctores disponibles para "Radiolog�a"
	DoctoresDisponibles[19, 1] <- "Doctor Martinez"
	DoctoresDisponibles[19, 2] <- "Doctora Sanchez"
	
	// Asignar apellidos a los doctores disponibles para "Oncolog�a"
	DoctoresDisponibles[20, 1] <- "Doctor Ramirez"
	DoctoresDisponibles[20, 2] <- "Doctora Diaz"
	
	// Asignar apellidos a los doctores disponibles para "Cirug�a Pl�stica y Reconstructiva"
	DoctoresDisponibles[21, 1] <- "Doctor Torres"
	DoctoresDisponibles[21, 2] <- "Doctora Santos"
	
	// Asignar apellidos a los doctores disponibles para "Cirug�a Cardiovascular"
	DoctoresDisponibles[22, 1] <- "Doctor Castro"
	DoctoresDisponibles[22, 2] <- "Doctora Ferrer"
	
	// Asignar apellidos a los doctores disponibles para "Cirug�a Pedi�trica"
	DoctoresDisponibles[23, 1] <- "Doctor Navarro"
	DoctoresDisponibles[23, 2] <- "Doctora P�rez"
	
	// Asignar apellidos a los doctores disponibles para "Neurocirug�a"
	DoctoresDisponibles[24, 1] <- "Doctor Rojas"
	DoctoresDisponibles[24, 2] <- "Doctora Vargas"


	
	// Solicitar datos al usuario;
	Escribir "**Elija la especialidad deseada:**";
	Escribir "***************************************************";
	Escribir "***************************************************";
	Para i <- 1 Hasta 24
		Escribir i ,". ",Especialidades[i];
	FinPara
	Leer EspecialidadElegida;
	
	// Verificar disponibilidad de turno;
	Si (EspecialidadElegida >= 1 Y EspecialidadElegida <= 24) Entonces
		Escribir "Seleccione Opci�n: " 
		Escribir"1." DoctoresDisponibles[EspecialidadElegida, 1];
		Escribir "2." DoctoresDisponibles[EspecialidadElegida, 2];
		Leer num;
		Si num==1 Entonces 
			Escribir "***************************************************";
			Escribir "***************************************************";
			Escribir "Usted a seleccionado a ",DoctoresDisponibles[EspecialidadElegida, 1];
			Escribir "***************************************************";
			Escribir "***************************************************";
		SiNo
			Escribir "***************************************************";
			Escribir "***************************************************";
			Escribir "Usted a seleccionado a ",DoctoresDisponibles[EspecialidadElegida, 2];
			Escribir "***************************************************";
			Escribir "***************************************************";
		FinSi
		// Inicializar matriz de turnos como libre
		Para dia <- 1 Hasta 5
			Para hora <- 1 Hasta 17
				Turnos[dia, hora] <- "Libre";
			FinPara
		FinPara
		
		// Ciclo principal
		Repetir
			Escribir "***************************************************";
			Escribir "***************************************************";
			Escribir "Seleccione una opci�n:";
			Escribir "1. Reservar un turno";
			Escribir "2. Cancelar un turno";
			Escribir "3. Salir";
			Leer Opcion;
			
			Segun Opcion Hacer
				Caso 1:
					// Reservar un turno
					Escribir "***************************************************";
					Escribir "***************************************************";
					Escribir "D�as disponibles:";
					Escribir "1. Lunes";
					Escribir "2. Martes";
					Escribir "3. Mi�rcoles";
					Escribir "4. Jueves";
					Escribir "5. Viernes";
					Leer DiaElegido;
					
					Escribir "***************************************************";
					Escribir "***************************************************";
					Escribir "Horarios disponibles (9 am - 5 pm):";
					Para hora <- 1 Hasta 17
						Si Turnos[DiaElegido, hora] = "Libre" Entonces
							Si hora < 9 Entonces
								Escribir hora + 8, ":00 pm";//se me trab� la mente y no puedo corregir am-pm.
							Sino
								Escribir hora - 8, ":30 pm";
							FinSi
						FinSi
					FinPara
					
					Escribir "Seleccione un horario (1-17):";
					Leer HorarioElegido;
					
					Si Turnos[DiaElegido, HorarioElegido] = "Libre" Entonces
						Turnos[DiaElegido, HorarioElegido] <- "Ocupado";
						Escribir "Turno reservado exitosamente.";
					Sino
						Escribir "El turno seleccionado ya est� ocupado. Por favor, elija otro.";
					FinSi
				Caso 2:
					// Cancelar un turno
					Escribir "D�as disponibles:";
					Escribir "1. Lunes";
					Escribir "2. Martes";
					Escribir "3. Mi�rcoles";
					Escribir "4. Jueves";
					Escribir "5. Viernes";
					Leer DiaElegido;
					
					Escribir "Horarios ocupados:";
					Para hora <- 1 Hasta 17
						Si Turnos[DiaElegido, hora] = "Ocupado" Entonces
							Si hora < 9 Entonces
								Escribir hora + 8, ":00 am";
							Sino
								Escribir hora - 8, ":30 am";
							FinSi
						FinSi
					FinPara
					
					Escribir "Seleccione un horario a cancelar (1-17):";
					Leer HorarioCancelar;
					
					Si Turnos[DiaElegido, HorarioCancelar] = "Ocupado" Entonces
						Turnos[DiaElegido, HorarioCancelar] <- "Libre";
						Escribir "Turno cancelado exitosamente.";
					Sino
						Escribir "El horario seleccionado no est� ocupado.";
					FinSi
				Caso 3:
					Escribir "Saliendo del programa.";
				De Otro Modo:
					Escribir "Opci�n no v�lida.";
			FinSegun
			
		Hasta Que Opcion = 3
		
	Sino
		Escribir "Lo sentimos, no hay turnos disponibles para ", Especialidades[EspecialidadElegida];
	FinSi

	
FinAlgoritmo

