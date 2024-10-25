CREATE TABLE FactVuelos (
    VueloID INT IDENTITY(1,1) PRIMARY KEY,       -- Clave primaria de la tabla de hechos
    AerolineaKey INT NOT NULL,                   -- Clave foránea hacia dimAerolinea
    FechaKey INT NOT NULL,                       -- Clave foránea hacia dimFecha
    DateKey INT NOT NULL,                        -- Clave foránea hacia date_Dimension (fecha detallada)
    Cancelado BIT NOT NULL,                      -- Si el vuelo fue cancelado
    Desviado BIT NOT NULL,                       -- Si el vuelo fue desviado
    RetrasoSalidaMinutos INT,                    -- Minutos de retraso en la salida
    RetrasoLlegadaMinutos INT,                   -- Minutos de retraso en la llegada
    Distancia INT NOT NULL,                      -- Distancia en millas entre aeropuerto de origen y destino
);

-- Crear las relaciones con las dimensiones

-- Relación con dimAerolinea
ALTER TABLE FactVuelos
ADD CONSTRAINT FK_FactVuelos_AerolineaKey FOREIGN KEY (AerolineaKey)
    REFERENCES DimAerolinea(AerolineaKey);

-- Relación con dimFecha
ALTER TABLE FactVuelos
ADD CONSTRAINT FK_FactVuelos_FechaKey FOREIGN KEY (FechaKey)
    REFERENCES DimFecha(FechaKey);

-- Relación con date_Dimension
ALTER TABLE FactVuelos
ADD CONSTRAINT FK_FactVuelos_DateKey FOREIGN KEY (DateKey)
    REFERENCES Date_Dimension(date_key);