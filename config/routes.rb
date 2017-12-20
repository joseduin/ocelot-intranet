Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'
   
  # Usuarios
  get '/catalogo_servicios', to: 'usuarios#catalogo_servicios'
  get '/mi_perfil', to: 'usuarios#mi_perfil'
  get '/mis_inmuebles', to: 'usuarios#mis_inmuebles'
  get '/registrar_servicio/:id', to: 'usuarios#registrar_servicio'
  get '/consultar_solicitud', to: 'usuarios#consultar_solicitud'
  get '/presupuesto/:id_s/:id', to: 'usuarios#presupuesto'
  get '/comprobante_presupuesto_exportar', to: 'usuarios#comprobante_presupuesto_exportar'
  get '/ordenes_servicio', to: 'usuarios#ordenes_servicio'
  get '/ordenes_servicio_detalle', to: 'usuarios#ordenes_servicio_detalle'
  get '/lista_servicios', to: 'usuarios#lista_servicios'
  get '/estatus_servicio', to: 'usuarios#estatus_servicio'
  get '/comprobante_culminacion_servicio', to: 'usuarios#comprobante_culminacion_servicio'
  get '/comprobante_culminacion_exportar', to: 'usuarios#comprobante_culminacion_exportar'
  get '/consultar_garantia_servicio', to: 'usuarios#consultar_garantia_servicio'
  get '/reclamo', to: 'usuarios#reclamo'
  get '/mis_reclamos', to: 'usuarios#mis_reclamos'
  get '/valorar_servicio/:id_s/:id', to: 'usuarios#valorar_servicio'
  get '/buzon', to: 'usuarios#buzon'
  get '/mi_servicio/:id', to: 'usuarios#mi_servicio'
  get '/orden_visita/:id_s/:id', to: 'usuarios#orden_visita'
  get '/orden_servicio', to: 'usuarios#orden_servicio'
  get '/avance_servicio/:id_s/:id', to: 'usuarios#avance_servicio'
  get '/promociones_activas', to: 'usuarios#promociones_activas'
  
  get '/difusion', to: 'admin#difusion'
  # Diagnostico
  get '/informe_diagnostico', to: 'diagnostico#informe_diagnostico'
  get '/procesar_diagnostico/:id', to: 'diagnostico#procesar_diagnostico'
  get '/agenda_visitas', to: 'diagnostico#agenda_visitas'
  get '/agenda_visitas_detalle', to: 'diagnostico#agenda_visitas_detalle'
  get '/editar_visita_agendada', to: 'diagnostico#editar_visita_agendada'
  get '/visita_diagnostico', to: 'diagnostico#visita_diagnostico'
  get '/diagnosticos_realizados', to:'diagnostico#diagnosticos_realizados'
  get '/eventualidad', to: 'diagnostico#eventualidad'
  get '/lista_diagnostico/:id_s/:id', to:'diagnostico#lista_diagnostico'
  post '/guardar_visita', to: 'diagnostico#guardar_visita'
  post '/validar', to: 'diagnostico#validar'
  
  # Ejecucion
  get '/registrar_garantia', to: 'ejecucion#registrar_garantia'
  get '/lista_eventualidad', to: 'ejecucion#lista_eventualidad'
  get '/lista_eventualidad_detalle', to: 'ejecucion#lista_eventualidad_detalle'
  get '/generar_presupuesto/:id', to: 'ejecucion#generar_presupuesto'
  get '/detalle_diagnostico', to: 'ejecucion#detalle_diagnostico'
  get '/lista_presupuestos', to: 'ejecucion#lista_presupuestos'
  get '/planificar_servicios/:id', to: 'ejecucion#planificar_servicios'
  get '/consultar_trabajadores', to: 'ejecucion#consultar_trabajadores'
  get '/consultar_materiales', to: 'ejecucion#consultar_materiales'
  get '/lista_reclamo', to: 'ejecucion#lista_reclamo'
  get '/lista_reclamo_detalle', to: 'ejecucion#lista_reclamo_detalle'
  get '/lista_servicios_asignados_supervisor', to: 'ejecucion#lista_servicios_asignados_supervisor'
  get '/cierre_servicio', to: 'ejecucion#cierre_servicio'
  get '/ordenes_servicios', to: 'ejecucion#ordenes_servicios'
  get '/administrar_ordenes', to: 'ejecucion#administrar_ordenes'
  
  post '/crear_presupuesto', to: 'ejecucion#crear_presupuesto'

  # Trabajador

  post '/buscarOrdenesServicios', to: 'trabajador#buscarOrdenesServicios'
  post '/guardarOrdenesServicios', to: 'trabajador#guardarOrdenesServicios'
  post '/guardarCalificacion', to: 'trabajador#guardarCalificacion'
  get '/tareas_asignadas', to: 'trabajador#tareas_asignadas'
  post '/culminar', to: 'trabajador#culminar'


  # Admin
  get '/gestion_rol', to: 'admin#gestion_rol'
  get '/gestion_usuario', to: 'admin#gestion_usuario'
  #get '/registrar_tipo_inmueble', to: 'admin#registrar_tipo_inmueble'
  get '/registrar_servicios', to: 'admin#registrar_servicio'
  get '/registrar_tipo_servicio', to: 'admin#registrar_tipo_servicio'
  #get '/registrar_tipo_inmueble', to: 'admin#registrar_tipo_inmueble'
  get '/listado_eventualidades', to: 'admin#listado_eventualidades'
  get '/listado_tipo_eventualidad', to: 'admin#listado_tipo_eventualidad'
  get '/listado_tipo_eventualidad_detalle', to: 'admin#listado_tipo_eventualidad_detalle'
  get '/registrar_noticias', to: 'admin#registrar_noticias'
  get '/lista_noticias', to: 'admin#lista_noticias'
  get '/registrar_promocion', to: 'admin#registrar_promocion'
  get '/lista_promociones', to: 'admin#lista_promociones'
  get '/gestion_recursos', to: 'admin#gestion_recursos'
  get '/buzon_escucha', to: 'admin#buzon_escucha'
  get '/buzon_escucha_detalle', to: 'admin#buzon_escucha_detalle'
  get '/buzon_escucha_responder', to: 'admin#buzon_escucha_responder'
  get '/empresa', to: 'admin#empresa'
  get '/lista_visitas', to: 'admin#lista_visitas'
  get '/atender_reclamo', to: 'admin#atender_reclamo'
  get '/gestion_servicio', to: 'admin#gestion_servicio'
  get '/tipo_inmueble_caracteristica',to: 'admin#tipo_inmueble_caracteristica'

  get '/gestion_garantia', to: 'admin#gestion_garantia'
  get '/descuento',to: 'admin#descuento'
  get '/administrar_base_datos', to: 'admin#administrar_base_datos'
  get '/historico', to: 'admin#historico'
  get '/depurar', to: 'admin#depurar'
  get '/recuperar', to: 'admin#recuperar'
 
  # Maestros
  get '/cargo',to:'maestros#cargo'
  get '/categoria',to:'maestros#categoria'
  get '/categoria_inmueble',to:'maestros#categoria_inmueble'
  get '/categoria_servicio',to:'maestros#categoria_servicio'
  get '/condicion',to:'maestros#condicion'
  get '/estado',to:'maestros#estado'
  get '/estado_servicio',to:'maestros#estado_servicio'
  get '/herramienta',to:'maestros#herramienta'
  get '/ocupacion',to:'maestros#ocupacion'
  get '/opcion',to:'maestros#opcion'
  get '/pregunta',to:'maestros#pregunta'
  get '/profesion',to:'maestros#profesion'
  get '/red_social',to:'maestros#red_social'
  get '/tarea',to:'maestros#tarea'
  get '/tipo_caracteristica',to:'maestros#tipo_caracteristica'
  get '/tipo_cliente',to:'maestros#tipo_cliente'
  get '/tipo_diagnostico_visita',to:'maestros#tipo_diagnostico_visita'
  get '/tipo_eventualidad',to:'maestros#tipo_eventualidad'
  get '/tipo_garantia',to:'maestros#tipo_garantia'
  get '/tipo_inmueble',to:'maestros#tipo_inmueble'
  get '/tipo_motivo',to:'maestros#tipo_motivo'
  get '/tipo_notificacion',to:'maestros#tipo_notificacion'
  get '/tipo_persona',to:'maestros#tipo_persona'
  get '/tipo_promocion',to:'maestros#tipo_promocion'
  get '/tipo_reclamo',to:'maestros#tipo_reclamo'
  get '/tipo_recurso',to:'maestros#tipo_recurso'
  get '/tipo_respuesta',to:'maestros#tipo_respuesta'
  get '/tipo_servicio',to:'maestros#tipo_servicio'
  get '/tipo_visita',to:'maestros#tipo_visita'
  get '/turno',to:'maestros#turno'
  get '/ubicacion',to:'maestros#ubicacion'
  get '/unidad_medida',to:'maestros#unidad_medida'
  get '/uso_inmueble', to: 'maestros#uso_inmueble'

  
  post '/guardar_maestro', to: 'base#guardar_maestro'
  post '/modificar_maestro', to: 'base#modificar_maestro'
  post '/eliminar_maestro', to: 'base#eliminar_maestro'
  
  
  
  # Maestros con combos
  get '/condicion_inmueble',to:'maestros_combo#condicion_inmueble'
  get '/ciudad',to:'maestros_combo#ciudad'
  get '/caracteristica',to:'maestros_combo#caracteristica'
  get '/etapa',to:'maestros_combo#etapa'
  get '/eventualidades',to:'maestros_combo#eventualidad'
  get '/funcion',to:'maestros_combo#funcion'
  get '/municipio',to:'maestros_combo#municipio'
  get '/notificacion',to:'maestros_combo#notificacion'
  get '/notificacion_pregunta',to:'maestros_combo#notificacion_pregunta'
  get '/opcion_pregunta',to:'maestros_combo#opcion_pregunta'
  get '/promocion',to:'maestros_combo#promocion'
  get '/reclamo',to:'maestros_combo#reclamo'
  get '/motivo',to:'maestros_combo#motivo'
  get '/recurso',to:'maestros_combo#recurso'
  get '/respuesta',to:'maestros_combo#respuesta'
  get '/rol_funcion',to:'maestros_combo#rol_funcion'
  get '/sector',to:'maestros_combo#sector'
  get '/tipo_inmueble',to:'maestros_combo#tipo_inmueble'
  get '/zona',to:'maestros_combo#zona'
  get '/parroquia',to:'maestros_combo#parroquia'
  get '/motivo_reclamo', to: 'maestros_combo#motivoreclamo'
  
  
  post '/modificar_promocion', to: 'admin#modificar_promocion'

  
  get '/zona',to:'maestros_combo#zona'
  get '/parroquia',to:'maestros_combo#parroquia'
  
  # Reportes
  get '/servicios_aprobados',to:'reportes#servicios_aprobados'
  get '/servicios_aprobados_exportar',to:'reportes#servicios_aprobados_exportar'
  get '/comparativo_solicitudes',to:'reportes#comparativo_solicitudes'
  get '/comparativo_valoraciones_servicios',to:'reportes#comparativo_valoraciones_servicios'
  get '/comparativo_inmuebles',to:'reportes#comparativo_inmuebles'
  get '/comparativo_reclamos',to:'reportes#comparativo_reclamos'
  get '/reporte_solicitudes',to:'reportes#reporte_solicitudes'
  get '/reporte_valoraciones',to:'reportes#reporte_valoraciones'
  get '/reporte_inmuebles',to:'reportes#reporte_inmuebles'
  get '/reporte_inmuebles_exportar',to:'reportes#reporte_inmuebles_exportar'
  get '/reporte_reclamos',to:'reportes#reporte_reclamos'
  get '/reporte_reclamos_exportar',to:'reportes#reporte_reclamos_exportar'
  get '/estadistico_solicitudes', to: 'reportes#estadistico_solicitudes'
  get '/estadistico_solicitudes_exportar', to: 'reportes#estadistico_solicitudes_exportar'

get '/reporte_inmuebles_exportar',to:'reportes#reporte_inmuebles_exportar'
  get '/reporte_reclamos',to:'reportes#reporte_reclamos'
  get '/reporte_reclamos_exportar',to:'reportes#reporte_reclamos_exportar'
  get '/estadistico_solicitudes', to: 'reportes#estadistico_solicitudes'
  get '/estadistico_solicitudes_exportar', to: 'reportes#estadistico_solicitudes_exportar' 
  post '/buscar_solicitudes_servicio',to:'reportes#buscar_solicitudes_servicio'
  post '/buscar_reclamos',to:'reportes#buscar_reclamos'
  post '/buscar_valoracion_servicio' ,to:'reportes#buscar_valoracion_servicio' #comparativo valoracion de servicio
  #post '/estadistico_solicitudes_exportar', to: 'reportes#estadistico_solicitudes_exportar' #esto es de prueba para sacar los valores para el exportar
 post '/buscar_reporte_estructurado_solicitud', to: 'reportes#buscar_reporte_estructurado_solicitud'
 get '/reporte_solicitudes_exportar',to:'reportes#reporte_solicitudes_exportar'

  # Metodos
  get '/log_out', to: 'welcome#log_out'
  post '/login', to: 'welcome#log_login'
  post '/subir_imagen', to: 'base#subir_imagen'
  post '/registrar_noticia_submit', to: 'admin#registrar_noticia_submit'
  post '/modificar_noticia', to: 'admin#modificar_noticia'
  post '/modificar_promocion', to: 'admin#modificar_promocion'
  

  post '/buscarTipoInmueblePorCategoria', to: 'usuarios#buscarTipoInmueblePorCategoria'
  post '/buscarRol', to: 'admin#buscarRol'
  post '/guardar_actualizar_rol', to: 'admin#guardar_actualizar_rol'
  post '/activeDesactiveEstatus', to: 'admin#activeDesactiveEstatus'
  post '/borrarLogico', to: 'admin#borrarLogico'
  
  get '/aprobar_solicitud', to: 'usuarios#aprobar_solicitud'


  post '/buscarRol', to: 'admin#buscarRol'
  post '/guardar_actualizar_rol', to: 'admin#guardar_actualizar_rol'

  post '/activeDesactiveEstatus', to: 'admin#activeDesactiveEstatus'
  post '/borrarLogico', to: 'admin#borrarLogico'
  
 #Metodos usado en la vista de reclamo/usuarios
  post '/registrar_reclamo', to: 'usuarios#registrar_reclamo'
  post '/buscar_reclamos', to: 'usuarios#buscarReclamos'
   #Métodos usados en la vista de lista_reclamo/ejecucion
   post '/aceptar_reclamo', to: 'ejecucion#aceptar_reclamo'
   post 'rechazar_reclamo', to: 'ejecucion#rechazar_reclamo'
   post '/buscar_garantia', to: 'ejecucion#buscar_garantia'
   post '/buscar_orden', to: 'ejecucion#buscarOrdenEntrega'
   post '/buscar_condiciones', to: 'ejecucion#buscarCondiciones'
   post 'registrar_rechazo_reclamo', to: 'ejecucion#registrar_rechazo_reclamo'

  post '/cargarChosenInmueble', to: 'usuarios#cargarChosenInmueble'

  #Usuario
  post '/registrar_solicitudes_servicio', to: 'usuarios#registrar_solicitudes_servicio'
  post '/tribago', to: 'usuarios#tribago'
  post '/registrar_sugerencia', to: 'usuarios#registrar_sugerencia'


  # Metodos
  post '/registrar_inmueble', to: 'usuarios#registrar_inmueble'
  get '/log_out', to: 'welcome#log_out'
  post '/login', to: 'welcome#log_login'
  post '/subir_imagen', to: 'base#subir_imagen'
  post '/registrar_noticia_submit', to: 'admin#registrar_noticia_submit'
  post '/modificar_noticia', to: 'admin#modificar_noticia'
  post '/buscarRol', to: 'admin#buscarRol'

  post '/aprobar_solicitud', to: 'usuarios#aprobar_solicitud'
  post '/rechazar_solicitud', to: 'usuarios#rechazar_solicitud'
  post '/rechazar_presupuesto', to: 'usuarios#rechazar_presupuesto'
  post '/aprobar_presupuesto', to: 'usuarios#aprobar_presupuesto'
  
  post '/registrar_promocion_submit', to: 'admin#registrar_promocion_submit'
  
  post '/registrar_diagnostico', to: 'diagnostico#registrar_diagnostico'

#metodos de garantia
 post 'registrar_garantia_submit', to: 'admin#registrar_garantia_submit'
 post 'registrar_condiciones_submit', to: 'admin#registrar_condiciones_submit'
 post 'modificar_garantia', to: 'admin#modificar_garantia'
 post 'modificar_condicion', to: 'admin#modificar_condicion'
 
#metodos de servicio
  post '/buscarTipoServicioPorCategoria', to: 'admin#buscarTipoServicioPorCategoria'
  post '/buscarCiudadPorEstado', to: 'admin#buscarCiudadPorEstado'
  post '/buscarMunicipioPorCiudad', to: 'admin#buscarMunicipioPorCiudad'
  post '/buscarParroquiaPorMunicipio', to: 'admin#buscarParroquiaPorMunicipio'
  post '/buscarSectorPorParroquia', to: 'admin#buscarSectorPorParroquia'
  post '/registrar_servicio_submit', to: 'admin#registrar_servicio_submit'
  post '/modificar_servicio', to: 'admin#modificar_servicio'
  post '/buscarServicio', to: 'admin#buscarServicio'

  post '/realizar_diagnostico', to: 'diagnostico#realizar_diagnostico'
  #metodo de tipo_inmueble_caracteristica 
  post '/registrar_tipo_inmueble_caracteristicas',to: 'admin#registrar_tipo_inmueble_caracteristicas'


  #Metodos de planificar
  post '/guardar_detalle_orden', to: 'ejecucion#guardar_detalle_orden'
  post  '/cancelarOrden', to: 'usuarios#cancelarOrden'
  post '/realizar_diagnostico_detalle', to: 'diagnostico#realizar_diagnostico_detalle'

  #metodos para enviar el correo del buzon de sugerencia
 post '/enviar_correo', to: 'admin#enviar_correo'
 post '/guardar_usuario', to: 'admin#guardar_usuario'
 
 
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

end
