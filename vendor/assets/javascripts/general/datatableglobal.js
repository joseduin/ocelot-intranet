var data_table_language = 	{
				                lengthMenu: '_MENU_ Datos por pagina',
				                zeroRecords: 'Sin nada que mostrar.',
				                info: "Ver _PAGE_ de _PAGES_ páginas de un total de _TOTAL_ registros",
				                sSearch: "",
				                searchPlaceholder: "Buscar..",
				                sProcessing:    "Procesando...",
				                sLoadingRecords: "Cargando...",
				                sInfoFiltered:  "(filtrado de un total de _MAX_ registros)",
				                sInfoEmpty:     "Mostrando registros del 0 al 0 de un total de 0 registros",
				                oPaginate: {
				                                sFirst:    "Primero",
				                                sLast:     "Último",
				                                sNext:     "Siguiente",
				                                sPrevious: "Anterior"
				                            },
				                oAria: {
								            sSortAscending:  ": Activar para ordenar la columna de manera ascendente",
								            sSortDescending: ": Activar para ordenar la columna de manera descendente"
								        }
				            }
var dataTable_select_row_required = "Por favor seleccione una fila";
var dataTable_select2_row_required = "Por favor seleccione una fila";
function dateTable_selected(tbody, table) {
    $(tbody).on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            //$(this).removeClass('selected');
                
        } else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    });
}
function dateTableSelected(tbody, table) {
    $(tbody).on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            //$(this).removeClass('selected');
                
        } else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    });
}