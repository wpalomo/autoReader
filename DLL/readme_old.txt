Sii4  19 Marzo 2004
------------------------------------------------------------
/*  cambios en siireporte  agregado en reporte de cartera  x cobrar & cartera x cobrar con fecha de corte
    la columna de codigo de forma de cobro, y agreda la opcion de agrupar segun la configuracion
    en reporte de cartera x cobrar con dias vencidos estaba sacando de todos pckardex
	esta controlado q saque solo los q estan configurados como transacciones q afectan saldos de cliente/proveedor


SiiPrecio opcion para modificar los porcentajes de comision de items
Bodega predeterminada para la creacion de Items
Corregido  error en reportes Cartera x cobrar con Fecha de Corte activar solo plazo vencido
Agregado impresion de resumen en reportes: Documentos Bancarios, Balance x Centro de costo y
         Resultado x centro de Costo 
Campo  nuevo en seccion items imprime la existencia
Corregido error interno actualiza bandProrrateado  en IVKardexReccargo
al modificar transacciones. 
Corregido  error  al recuperar IVKardexRecargo  
Incluir nuevamente cambios en dll  para trabajar  en Asisentos por lote 
Incluir nuevamente optimizacion en proceeso de borrado para registros de auditoria
Incluidos Manuales del Ususario en el Instalador
Incluido pkzip  en instalador  de Sii4
Correccion de Reporte Evaluacion de Vendores (consula 3000)
Error  corregido se perdia  el valor en kardex recargo, descuento (consulta 3010)
Siitools nueva version  con  posibilidad de guardar perfiles de ususario
para  importacion  y exportacion
Corregido reporte de Balance por Mes SiiReporte (generado por CT Local consulta 3020)
SiiTools  correcion de procecso  actualizar costos despues de transferir
       la fecha de la trans fuente - se borraba  el recargo de la transaccion
Reporte Compras con Retencion  sale en le reporte asi no haya  enlacee  de transaccion de DocAsignado
Coreccion Sii4 crear proveedor con XML  pantalla IVQD
Corregido Balance consolidado  en SiiConfig (por CT Local)
Copiar CTlocal  en ctas contables para importar datos ojo esto puede producir problemas 
si no actualiza en todos los locales
Impresion de Fecha de Corte en Reporte de CarteraxCDiasVencidos

Sii4 25 Febrero 2004
------------------------------------------------------
No permite espacios  al inicio en codigos de clientes proveedores
corregido  mensaje de error Numero de RUC/CI incorrecto
Corregido Reporte de Compras x Mes x Item 
Corregido encabezado busqueda recuperacion de datos de consumidor final
SiiTools proceso de actualizar costos en transacciones importadas
	tambien  actualiza la fecha de la transaccion
Reporte de Movimiento de Items 2 corregido
gnprinta impresion de campo NomTrans (campo nombre en el encabezado de la facura)
Nuevo Reporte de Ventas x Numero Precio
Actualizado SiiEsquema
Corregido error en Balance general 

10 Febrero 2004 Errores detectados  en version anterior
---------------------------------------
Mejorado SiiTools  en control  de errores importacion de datos gnComprobante
Corregido error en Consulta de Asientos 2960 vwConsCTDiario
Corregido Error  en recuperar transacciones  2970 ALTER spConsIVKardexRecargoMod
Corregido problema de versiones en flexgrid ancho de las columnas
Modificacion SiiXml abrir archivos diferentes por transaccion ejemplo: XMLCFC.xml
Corregido error  en pantalla IVBQD busqueda de items seleccion
Configuracion de Ocultar existencia debe servir para pantalla IVBQD de busqueda de items


Sii4 cambios  version 30/01/2004
----------------------------------------
SiiTools  controla cambio de codigos en catalogos dentro de proceso de importacion
Restriccion  para  asignar  Hijos a Familias(no permite duplicar)
Libreria de Impresion corregido campo TotalBanco de transaccion Bancos
Libreria gnprinta campo Observacion de item
Guardar resultados del proceso de importacion Exportacion
En Siitools  actualizacion de Familias.
Nuevos  cambios  en Modulo contabilidad
 Campo  Local  que permite  clasificar a las  cuentas contables 
 por locales  para  filtrar reportes.
 Herramienta  en SiTools  que permite  asignar locales  a las Ctas. Contables
SiiReporte nuevo reporte estado de cuenta por forma de cobro pago 
(me indica cuanto debe y cuento  a pagado  bancos) ?ojo nombre reporte
Reporte comisiones por vendedor por precio de items

Proceso  para Corregir  Reporcesamientos de Costos 
 Arreglar IVA de items despues de reprocesamientos de Costos 
 para transacciones con calculo basado en costos (SiiTools). 
Proceso de Importacion de Transacciones de Inventarios permite
actualizar costos a transacciones relacionadas

----------Correcciones de la Version  anterior---------------------------------
 En Siireporte corregida  la impresion de resumen  para  reportes de Anexos
 SQL  que  permite corregir  las configuraciones de columnas
 en pantalla  de Inventarios  por  Precio + IVA
 Corregir detalles  en  nueva  pantalla  de TSIE
  Antes  tenia problemas al importar transacciones
  Optimizado  el campo descripcion
  Corregido  reporte de Comisiones por vendedor por items (el grupo y el calculo)
  Corregido problema cuando transaccion va directo  al banco.

Sii4 cambios  version 05/01/2004
----------------------------------------
Pantalla de TSIE (tesoreria ingreso egreso mejorada)
permite realizar cobros a clientes mas facilmente
Columna de precio+iva
SiiTools programado nuevos  campos en cierre  de ejercicio
Reporte de Comision de vendedores   / mercaderia pendiente

Sii4  cambios reliazados version 20/12/2003
-------------------------------------------
No se registraron los cambios

Sii4  cambios reliazados version 16/12/2003
----------------------------------------------
Corregir Encabezados (encabezadoBusqueda) seleccion de porveedor
Corregir Recuperacion de recargos  en compras
Mejorar  tiempo de respeusta  en abrir  factura
Corregir  campos  de venta minima en reporte de Evaluacion Vendedores
Reporte de Ventas  x Hora  permite ordenar  por cualquier campo
Nuevo Reporte de Analisis de compra venta de item Resumido 
Impresion de campo Periodo Contable
SiiTools  mejorar mensaje  de error  en proceso de importacion


Sii4  cambios  realizados  version  09/12/2003
----------------------------------------------
Pantalla de facturacion IVBQD mejorada
SiiReporte Modificar reportes de  items filtro  
avanzado  de busqueda de grupos (en niveles)
Reporte de Evaulacion de Vendedores
Reporte de ventas por hora
Reporte de Analisis de Items x Compra y Venta
SiiTools  Actualizacion  de Monto de Ventas
Descuento por  item  predeterminado  en Sii4
Impresion campos  de Items  Observacion  y detalles tecnicos



Sii4  cambios  realizados  version  05/11/2003
-----------------------------------------------
Agregar  en el instalador  Documento de Ayuda de SiiXML
SiiReporte  guarda configuraciones personalizadas de reportes
Corregido  descuento por PcprovCli
SiiTool corregido  problema de exportacion  orden por fecha/hora
SiiTool importacion activado  Anexos  control  dee importacion 
datos de Anexos
Reporte por e-mail y por cumplea�os
Reportes de Anexos  mejorados



Sii4  cambios  realizados  version  22/10/2003
-----------------------------------------------
Llevar  documentos  de ayuda  para librerias de impresion
Corregir  errores  en pantalla de detallesrecargos descuentos
Incluir nuevo  Siibusqueda  y reportes para  SiiAnexos
Corregidos  detalles de importacion



Sii4  cambios  realizados  version  20/10/2003
-----------------------------------------------
Catalago  de Detalle Recargo/Descuento
Descuento  por PCGrupo
Reporte Clientes invluye  nuevos campos (e-mail  fecha cumplea�os)
SiiXML  para  configurar  paantalla  de nuevos  cleintes  usando  archivo de XML
Correccion de error  al presionar  Siguiente   sin permiso para Crear Nuevo
Cambios  en pantalla IVBQD - mostrar  campos de PCGrupo, depurar ingreso
de Nombre,Direccion, telefono,Ruc,   en  el campo descripcion
Corregido  error  en reporte de Madurez de Cartera
Correcion de error en transacciones que tienen importacion requerida
y ponen cancelar.
Reporte de clientes para anexos
Comunicaci�n visual cuando un cliente cumple a�os 
Corregido error  que no se repita efectivo en Descricpion

Sii4  cambios  realizados  version  16/09/2003
-----------------------------------------------
Enviar  fuente para  pnatalla  de vuelto ASTUTE.TTF  instalar  manualmente  
si  el SO no lo  hace automatico
Corregido problema  que no permitia decimal  en vuelto
corregido  problema de validacion en  combo.




Sii4  cambios  realizados  version  15/09/2003
-----------------------------------------------
Corregido  error,  ya no se activa  el boton de grabar F3deshabilitado
Cambios de Angel  nuevos  campos  en tabla  Clientes
Control de IVVerificaCobroConsfinal para uqe no se pueda dar credito a consumidor final
Pantalla de Vuelto  para pantalla IVBQD



SII4 Errores  corregidos  Version  20/08/2003
---------------------------------------------
Formula IVACTIVO2
Pantalla  de lista  de Items  no  saca    decimales  (Nomeda_PRE)
Compatibilidad  de Librerias  de Impresion  EFSA
Incluir  libreria EfsaPrinta.dll  en instalador
Corregir  RITGH  JOIN  de SIIPrecio

ANgel
-----------------------------------------------------
Cambios  para numero de decima�les:
   El cls modificado fue GNComprobante en los m�todos: 
   RedondearAsiento y IVKardexPTotal.

Oliver
-------------------------------------------------------
Acutalizar  Reporte  de Anexos  con  Campo  de RUC






Contactenos.
Ishida & Asociados
Mu�oz Vernaza 12-09 Y Tarqui  
07-2826197   07-2833766
Cuenca-Ecuador
email  ishida@etapaonline.net.ec
