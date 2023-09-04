Algoritmo TurnosMedicos
	
	Definir num, num2,num3 Como Entero;
	
	// Definir arreglos;
	Dimension Especialidades[24];
	Dimension DoctoresDisponibles[24, 2];
	Dimension Turnos[5, 17];//  5 días, 17 horarios(de 9 am a 17 pm)
	// Inicializar arreglos de especialidades;
	Especialidades[1] <- "Clínica Médica";
	Especialidades[2] <- "Cirugía General";
	Especialidades[3] <- "Pediatría";
	Especialidades[4] <- "Obstetricia y Ginecología";
	Especialidades[5] <- "Cardiología";
	Especialidades[6] <- "Dermatología";
	Especialidades[7] <- "Neurología";
	Especialidades[8] <- "Psiquiatría";
	Especialidades[9] <- "Oftalmología";
	Especialidades[10] <- "Otorrinolaringología";
	Especialidades[11] <- "Urología";
	Especialidades[12] <- "Traumatología y Ortopedia";
	Especialidades[13] <- "Gastroenterología";
	Especialidades[14] <- "Endocrinología";
	Especialidades[15] <- "Medicina Interna";
	Especialidades[16] <- "Neumonología";
	Especialidades[17] <- "Hematología";
	Especialidades[18] <- "Infectología";
	Especialidades[19] <- "Radiología";
	Especialidades[20] <- "Oncología";
	Especialidades[21] <- "Cirugía Plástica y Reconstructiva";
	Especialidades[22] <- "Cirugía Cardiovascular";
	Especialidades[23] <- "Cirugía Pediátrica";
	Especialidades[24] <- "Neurocirugía";
	
	// Inicializar arreglo de doctores disponibles;
	DoctoresDisponibles[1, 1] <- "Doctor Gomez"
	DoctoresDisponibles[1, 2] <- "Doctora Manzano"
	
	// Asignar apellidos a los doctores disponibles para "Cirugía General"
	DoctoresDisponibles[2, 1] <- "Doctor Rodriguez"
	DoctoresDisponibles[2, 2] <- "Doctora Silva"
	
	// Asignar apellidos a los doctores disponibles para "Pediatría"
	DoctoresDisponibles[3, 1] <- "Doctor Lopez"
	DoctoresDisponibles[3, 2] <- "Doctora Perez"
	
	// Asignar apellidos a los doctores disponibles para "Obstetricia y Ginecología"
	DoctoresDisponibles[4, 1] <- "Doctor Hernandez"
	DoctoresDisponibles[4, 2] <- "Doctora Torres"
	
	// Asignar apellidos a los doctores disponibles para "Cardiología"
	DoctoresDisponibles[5, 1] <- "Doctor Fernandez"
	DoctoresDisponibles[5, 2] <- "Doctora Gonzalez"
	
	// Asignar apellidos a los doctores disponibles para "Dermatología"
	DoctoresDisponibles[6, 1] <- "Doctor Martinez"
	DoctoresDisponibles[6, 2] <- "Doctora Sanchez"
	
	// Asignar apellidos a los doctores disponibles para "Neurología"
	DoctoresDisponibles[7, 1] <- "Doctor Ramirez"
	DoctoresDisponibles[7, 2] <- "Doctora Diaz"
	
	// Asignar apellidos a los doctores disponibles para "Psiquiatría"
	DoctoresDisponibles[8, 1] <- "Doctor Torres"
	DoctoresDisponibles[8, 2] <- "Doctora Santos"
	
	// Asignar apellidos a los doctores disponibles para "Oftalmología"
	DoctoresDisponibles[9, 1] <- "Doctor Castro"
	DoctoresDisponibles[9, 2] <- "Doctora Ferrer"
	
	// Asignar apellidos a los doctores disponibles para "Otorrinolaringología"
	DoctoresDisponibles[10, 1] <- "Doctor Navarro"
	DoctoresDisponibles[10, 2] <- "Doctora Pérez"
	
	// Asignar apellidos a los doctores disponibles para "Urología"
	DoctoresDisponibles[11, 1] <- "Doctor Rojas"
	DoctoresDisponibles[11, 2] <- "Doctora Vargas"
	
	// Asignar apellidos a los doctores disponibles para "Traumatología y Ortopedia"
	DoctoresDisponibles[12, 1] <- "Doctor Hernández"
	DoctoresDisponibles[12, 2] <- "Doctora Silva"
	
	// Asignar apellidos a los doctores disponibles para "Gastroenterología"
	DoctoresDisponibles[13, 1] <- "Doctor Gutiérrez"
	DoctoresDisponibles[13, 2] <- "Doctora Cabrera"
	
	// Asignar apellidos a los doctores disponibles para "Endocrinología"
	DoctoresDisponibles[14, 1] <- "Doctor Ruiz"
	DoctoresDisponibles[14, 2] <- "Doctora Alvarez"
	
	// Asignar apellidos a los doctores disponibles para "Medicina Interna"
	DoctoresDisponibles[15, 1] <- "Doctor Ortega"
	DoctoresDisponibles[15, 2] <- "Doctora Fuentes"
	
	// Asignar apellidos a los doctores disponibles para "Neumonología"
	DoctoresDisponibles[16, 1] <- "Doctor Luna"
	DoctoresDisponibles[16, 2] <- "Doctora Flores"
	
	// Asignar apellidos a los doctores disponibles para "Hematología"
	DoctoresDisponibles[17, 1] <- "Doctor Mendoza"
	DoctoresDisponibles[17, 2] <- "Doctora Marti"
	
	// Asignar apellidos a los doctores disponibles para "Infectología"
	DoctoresDisponibles[18, 1] <- "Doctor Fernandez"
	DoctoresDisponibles[18, 2] <- "Doctora Gonzalez"
	
	// Asignar apellidos a los doctores disponibles para "Radiología"
	DoctoresDisponibles[19, 1] <- "Doctor Martinez"
	DoctoresDisponibles[19, 2] <- "Doctora Sanchez"
	
	// Asignar apellidos a los doctores disponibles para "Oncología"
	DoctoresDisponibles[20, 1] <- "Doctor Ramirez"
	DoctoresDisponibles[20, 2] <- "Doctora Diaz"
	
	// Asignar apellidos a los doctores disponibles para "Cirugía Plástica y Reconstructiva"
	DoctoresDisponibles[21, 1] <- "Doctor Torres"
	DoctoresDisponibles[21, 2] <- "Doctora Santos"
	
	// Asignar apellidos a los doctores disponibles para "Cirugía Cardiovascular"
	DoctoresDisponibles[22, 1] <- "Doctor Castro"
	DoctoresDisponibles[22, 2] <- "Doctora Ferrer"
	
	// Asignar apellidos a los doctores disponibles para "Cirugía Pediátrica"
	DoctoresDisponibles[23, 1] <- "Doctor Navarro"
	DoctoresDisponibles[23, 2] <- "Doctora Pérez"
	
	// Asignar apellidos a los doctores disponibles para "Neurocirugía"
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
		Escribir "Seleccione Opción: " 
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
			Escribir "Seleccione una opción:";
			Escribir "1. Reservar un turno";
			Escribir "2. Cancelar un turno";
			Escribir "3. Salir";
			Leer Opcion;
			
			Segun Opcion Hacer
				Caso 1:
					// Reservar un turno
					Escribir "***************************************************";
					Escribir "***************************************************";
					Escribir "Días disponibles:";
					Escribir "1. Lunes";
					Escribir "2. Martes";
					Escribir "3. Miércoles";
					Escribir "4. Jueves";
					Escribir "5. Viernes";
					Leer DiaElegido;
					
					Escribir "***************************************************";
					Escribir "***************************************************";
					Escribir "Horarios disponibles (9 am - 5 pm):";
					Para hora <- 1 Hasta 17
						Si Turnos[DiaElegido, hora] = "Libre" Entonces
							Si hora < 9 Entonces
								Escribir hora + 8, ":00 pm";//se me trabó la mente y no puedo corregir am-pm.
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
						Escribir "El turno seleccionado ya está ocupado. Por favor, elija otro.";
					FinSi
				Caso 2:
					// Cancelar un turno
					Escribir "Días disponibles:";
					Escribir "1. Lunes";
					Escribir "2. Martes";
					Escribir "3. Miércoles";
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
						Escribir "El horario seleccionado no está ocupado.";
					FinSi
				Caso 3:
					Escribir "Saliendo del programa.";
				De Otro Modo:
					Escribir "Opción no válida.";
			FinSegun
			
		Hasta Que Opcion = 3
		
	Sino
		Escribir "Lo sentimos, no hay turnos disponibles para ", Especialidades[EspecialidadElegida];
	FinSi

	
FinAlgoritmo

