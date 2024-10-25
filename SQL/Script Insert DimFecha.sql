INSERT INTO DimFecha (FechaKey, Fecha, Dia, Mes, Anio, Trimestre, DiaSemana)
SELECT date_key, full_date, day_num_in_month, month, year, quarter, day_of_week 
FROM Date_Dimension;
GO