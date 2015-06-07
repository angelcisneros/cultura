



-- Cambios a la base
ALTER TABLE 'gamcultt'.'categoria_taller' 
ADD COLUMN 'descripcion' VARCHAR(1000) NOT NULL AFTER 'nombre';