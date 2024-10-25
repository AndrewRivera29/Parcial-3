CREATE PROCEDURE ActualizarAerolinea(
	@AerolineaKey int,
	@CodigoAerolinea VARCHAR(100),
	@NombreAerolinea VARCHAR(10)
)
AS
BEGIN
	UPDATE dbo.DimAerolinea SET 
		CodigoAerolinea=@CodigoAerolinea,
		NombreAerolinea=@NombreAerolinea
	WHERE AerolineaKey=@AerolineaKey
END;
GO