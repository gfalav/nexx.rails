rails g scaffold pais nombre:string
rails g scaffold provincia pais:references nombre:string
rails g scaffold departamento provincia:references nombre:string
rails g scaffold municipio departamento:references nombre:string
rails g scaffold localidad municipio:references nombre:string
rails g scaffold barrio localidad:references nombre:string
rails g scaffold calle  barrio:references nombre:string
rails g scaffold direccion calle:references nro:integer pdepto:string acceso:string gpslat:float gpslong:float
rails g scaffold enumerado radical:string descripcion:string

rails g scaffold cliente apellido:string apellido2:string nombres:string documento:string tipodoc_id:integer emisordoc_id:integer contacto:string ciiu_id:integer
rails g scaffold cliente_telefono cliente_id:integer telefono:decimal tipotel_id:integer
rails g scaffold cliente_email cliente_id:integer email:string tipoemail_id:integer

rails g scaffold cuentas cliente_id:integer nombre:string dirpostal_id:integer tpago_id:integer timpagado_id:integer tvencimiento_id:integer
rails g scaffold contrato cuenta_id:integer nombre:string tcuit_id:integer tiibb_id:integer tperfact_id:integer econtrato_id:integer fcontratoact:date
rails g scaffold edesal contrato_id:integer tarifa_id:string potvigente:integer fpotvigente:date potoriginal:integer fpotoriginal:date fdetectbadcosfi:date csmofijo:integer eservicio:integer
rails g scaffold suministro nombre:string edesal_id:integer tmedicion_id:integer tconexion_id:integer ttension_id:integer tfase_id:integer direccion_id:integer
rails g scaffold medidor suministro_id:integer tmedidor_id:integer nromedidor:string marca_id:integer modelo:string corriente:string ttension_id:integer tfase_id:integer cteapa:decimal ffabric:date cperds:decimal
rails g scaffold lectura medidor_id:integer tlectura_id:integer flectura:date tconsumo_id:integer lectura:decimal ctelect:decimal consumo:decimal electura_id:integer
rails g scaffold factura contrato_id:integer periodo:integer fdesde:date fhasta:date femision:date fvcto:date fproxvcto:date fupb:date nro:string
rails g scaffold linea factura_id:integer concepto_id:integer importe:decimal leyenda:string
rails g scaffold otrocargo edesal_id:integer concepto_id:integer importe:decimal ffactura:date ecargo_id:integer 
rails g scaffold bonificacion edesal_id:integer linea:integer porcentaje:decimal fdesde:date fhasta:date

rails g scaffold contratofact contrato_id:integer factura_id:integer cuenta_id:integer nombre:string tcuit_id:integer iibb:string tiibb_id:integer tperfact_id:integer econtrato_id:integer
rails g scaffold edesalfact edesal_id:integer factura_id:integer contratofact_id:integer tarifa_id:string potvigente:integer fpotvigente:date potoriginal:integer fpotoriginal:date fdetectbadcosfi:date csmofijo:integer eservicio:integer
rails g scaffold lecturafact lectura_id:integer factura_id:integer medidor_id:integer tlectura_id:integer flectura:date tconsumo_id:integer lectura:decimal ctelect:decimal consumo:decimal
rails g scaffold otrocargofact otrocargo_id:integer factura_id:integer edesal_id:integer concepto_id:integer importe:decimal ffactura:date ecargo_id:integer 
rails g scaffold bonificacionfact bonificacion_id:integer factura_id:integer edesal_id:integer linea:integer porcentaje:decimal fdesde:date fhasta:date

rails g scaffold Clientes apellido1:string apellido2:string nombres:string documento:string tipodoc:string emisordoc:string iibbnro:string
rails g scaffold Suministro nis:integer calle:references nro:integer pdepto:string auxiliar:string acceso:string gpslong:float gpslat:float
rails g scaffold Contrato condiva:string tarifa:string potcontgral:integer potcontpico:integer potcontresto:integer potcontvalle:integer
rails g scaffold Factura nrofactura:string vencimiento:date periodo:integer femision:date flimitepago:date fproxvcto:date 
rails g scaffold Clientedirecciones calle:references nro:integer pdepto:string auxiliar:string acceso:string gpslong:float gpslat:float
