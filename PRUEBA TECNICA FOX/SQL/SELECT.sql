/* EJERCICIO 1 */
SELECT
	país,
	COUNT(*)
       FROM PD_Maestro_Clientes
       WHERE estado = “Inactivo”
       GROUP BY país,


/* EJERCICIO 2 */
SELECT
    SUM(PD_VentasClientes_Dia.Cantidad) AS Unidades_Vendidas
FROM PD_VentasClientes_Dia
JOIN PD_Maestro_Clientes ON PD_VentasClientes_Dia.Id_Cliente = PD_Maestro_Clientes.Id_Cliente
JOIN PD_Maestro_productos ON PD_Maestro_productos.Producto = PD_VentasClientes_Dia.Producto
WHERE PD_Maestro_Clientes.Pais = 'COL' AND PD_Maestro_productos.Linea = 'HILLS PET NUTRITION'
  AND PD_VentasClientes_Dia.Fecha BETWEEN '2023-01-01' AND '2023-01-31'