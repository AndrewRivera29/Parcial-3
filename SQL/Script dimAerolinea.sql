CREATE TABLE DimAerolinea
(
	AerolineaKey INT IDENTITY(1,1) PRIMARY KEY,
	CodigoAerolinea VARCHAR(10) NOT NULL,
	NombreAerolinea VARCHAR(100) NOT NULL
);
GO