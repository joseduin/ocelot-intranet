{"changed":false,"filter":false,"title":"reportes_controller.rb","tooltip":"/app/controllers/reportes_controller.rb","value":"class ReportesController < BaseController\n    \n    def servicios_aprobados\n        \n    end\n \n    def servicios_aprobados_exportar\n \t\n    end\n    \n    def estadistico_solicitudes\n        \n        @categoria = cargar_cambo_m(\"categoria\")\n        @estado = cargar_cambo_m(\"estado\")\n     \n    end\n    \n    def estadistico_solicitudes_exportar\n    \n    end\n\n    def comparativo_solicitudes\n    \t\n    end\n\n    def comparativo_valoraciones_servicios\n    \t@categoria = cargar_cambo_m(\"categoria\")\n        @estado = cargar_cambo_m(\"estado\")\n        #@categoria_valoraciones = cargar_combo(\"categoria_calificar_servicio\")    \n        \n        \n    end\n\n    def comparativo_inmuebles\n    \t\n    end\n\n    def comparativo_reclamos\n    \t@categoria = cargar_cambo_m(\"categoria\")\n        @estado = cargar_cambo_m(\"estado\")\n     \n    end\n    #Realizado por Osleynin\n    def reporte_solicitudes\n    \t@categoria = cargar_cambo_m(\"categoria\")\n        @estado = cargar_cambo_m(\"estado\")\n        \n        #Buscar las solicitudes\n        req = Request.new(session[:token])\n        code, resp = req.consultar(\"/solicitudservicio/buscarTodos\")\n        # Deserializar\n        model = Model.new(resp);\n        @solicitudservicio = model.convert\n    end\n    \n    def reporte_solicitudes_exportar\n    end\n    \n    \n    #Realizado por Osleynin\n    def buscar_reporte_estructurado_solicitud\n         puts \"hola\"\n    json =  {\n                    id_ciudad: params[:id_ciudad],\n                    id_categoria: params[:id_categoria],\n                    id_tipo_servicio: params[:id_tipo_servicio],\n                    fecha_inicio: params[:fecha_inicio],\n                    fecha_fin: params[:fecha_fin]\n                    \n                    \n                }\n                \n        fecha_inicio = \"#{params[:fecha_inicio][6,4]}-#{params[:fecha_inicio][0,2]}-#{params[:fecha_inicio][3,2]}\"\n        fecha_fin = \"#{params[:fecha_fin][6,4]}-#{params[:fecha_fin][0,2]}-#{params[:fecha_fin][3,2]}\"\n        req = Request.new(session[:token])\n        url=\"reporte/reporteEstructuradoSolicitudes?id_ciudad=#{params[:id_ciudad]}&id_categoria=#{params[:id_categoria]}&id_tipo_servicio=#{params[:id_tipo_servicio]}&fecha_inicio=#{fecha_inicio}&fecha_fin=#{fecha_fin}\"\n        code, resp = req.consultar(url)\n        model = Model.new(resp);\n        #@busqueda  model.convert\n       nuevo = model.convert\n        render :json =>{:nuevo => nuevo}\n        \n    end\n    \n    def reporte_valoraciones\n    \t\n    end\n\n    def reporte_inmuebles\n    \t\n    end\n\n    def reporte_reclamos\n    \t\n    end\n\n    def reportes_inmuebles_exportar\n    \t\n    end\n\n    def reportes_reclamos_exportar\n    \t\n    end\n    def buscar_solicitudes_servicio\n        \n    json =  {\n                    id_ciudad: params[:id_ciudad],\n                    id_categoria: params[:id_categoria],\n                    id_tipo_servicio: params[:id_tipo_servicio],\n                    fecha_inicio: params[:fecha_inicio],\n                    fecha_fin: params[:fecha_fin]\n                    \n                    \n                }\n                \n        fecha_inicio = \"#{params[:fecha_inicio][6,4]}-#{params[:fecha_inicio][0,2]}-#{params[:fecha_inicio][3,2]}\"\n        fecha_fin = \"#{params[:fecha_fin][6,4]}-#{params[:fecha_fin][0,2]}-#{params[:fecha_fin][3,2]}\"\n        req = Request.new(session[:token])\n        url=\"reporte/reporteSolicitudes?id_ciudad=#{params[:id_ciudad]}&id_categoria=#{params[:id_categoria]}&id_tipo_servicio=#{params[:id_tipo_servicio]}&fecha_inicio=#{fecha_inicio}&fecha_fin=#{fecha_fin}\"\n        code, resp = req.consultar(url)\n        model = Model.new(resp);\n        #@busqueda  model.convert\n       nuevo = model.convert\n        render :json =>{:nuevo => nuevo}\n        \n\n    end\n    def buscar_reclamos\n        \n    json =  {\n                    id_ciudad: params[:id_ciudad],\n                    id_categoria: params[:id_categoria],\n                    id_tipo_servicio: params[:id_tipo_servicio],\n                    fecha_inicio: params[:fecha_inicio],\n                    fecha_fin: params[:fecha_fin]\n                    \n                    \n                }\n                \n        fecha_inicio = \"#{params[:fecha_inicio][6,4]}-#{params[:fecha_inicio][0,2]}-#{params[:fecha_inicio][3,2]}\"\n        fecha_fin = \"#{params[:fecha_fin][6,4]}-#{params[:fecha_fin][0,2]}-#{params[:fecha_fin][3,2]}\"\n        req = Request.new(session[:token])\n        url=\"reporte/reporteReclamo?id_ciudad=#{params[:id_ciudad]}&id_categoria=#{params[:id_categoria]}&id_tipo_servicio=#{params[:id_tipo_servicio]}&fecha_inicio=#{fecha_inicio}&fecha_fin=#{fecha_fin}\"\n        code, resp = req.consultar(url)\n        model = Model.new(resp);\n        #@busqueda  model.convert\n       nuevo = model.convert\n        render :json =>{:nuevo => nuevo}\n        \n\n    end\n    \n    def buscar_valoracion_servicio\n        \n        json= {\n                    id_ciudad: params[:id_ciudad],\n                    id_categoria: params[:id_categoria],\n                    id_tipo_servicio: params[:id_tipo_servicio],\n                    fecha_inicio: params[:fecha_inicio],\n                    fecha_fin: params[:fecha_fin]\n        }\n        \n        fecha_inicio = \"#{params[:fecha_inicio][6,4]}-#{params[:fecha_inicio][0,2]}-#{params[:fecha_inicio][3,2]}\"\n        fecha_fin = \"#{params[:fecha_fin][6,4]}-#{params[:fecha_fin][0,2]}-#{params[:fecha_fin][3,2]}\"\n        req = Request.new(session[:token])\n        url=\"reporte/reporteValoracion?id_ciudad=#{params[:id_ciudad]}&id_categoria=#{params[:id_categoria]}&id_tipo_servicio=#{params[:id_tipo_servicio]}&fecha_inicio=#{fecha_inicio}&fecha_fin=#{fecha_fin}\"\n        code, resp = req.consultar(url)\n        model = Model.new(resp);\n        #@busqueda  model.convert\n        nuevo = model.convert\n        render :json =>{:nuevo => nuevo}\n        \n        \n    end\n\n\nend\n","undoManager":{"mark":-1,"position":-1,"stack":[]},"ace":{"folds":[],"scrolltop":2560,"scrollleft":0,"selection":{"start":{"row":166,"column":39},"end":{"row":166,"column":39},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":149,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1512575576472}