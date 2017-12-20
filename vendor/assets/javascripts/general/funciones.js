jQuery(document).ready(function($) {
    // Tooltip
    $(document).tooltip({ selector: '[data-toggle=tooltip]', container: '.body' });
    
    // Chosen
    chosen();
});

function chosen() {
    $(".chosen-select").chosen(chosen_language);
}

function eliminar_logico(modelo) {
    var table = $('#dt_tabla').DataTable();
    var data = table.row('.selected').data();
            
    $.ajax({
        url:'/borrarLogico',
        data:{
            id: data.id,
            modelo: modelo
        },
        success:function(data){
            toastr.success(data.message);
            table.row( '.selected' ).remove().draw();
            $('#modalConfirmacion').modal('hide');
        },
        error:function(data){ toastr.error(data.message, "Oops!"); }
    });
}

function cambiar_estatus(modelo, id, table) {
    $.ajax({
        url:'/activeDesactiveEstatus',
        data:{
            id: id,
            modelo: modelo
        },
        success:function(data){
            toastr.success(data.message);
            table.row( '.selected' ).data( data.nuevo ).draw();
        },
        error:function(data){ toastr.error(data.message, "Oops!"); }
    });
}

function validarcampos(valor) {
    if (valor.length === 0) {
        return false;
    } else {
        return true;
    }
}

function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}

function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
function reemplazar_puntos(variable) {
    /* Si el valor que trae la variable viene en el formato 1.025.345,25
     * el retorno seria 1025345.25
     * Primero se eliminan los puntos por vacío y luego la coma se sustituye por punto.
     */
    if (variable !== '') {
        return ((variable).replace(/\./g, '')).replace(/,/g, '.');
    } else {
        return variable;
    }
}

function saldo_con_formato(variable) {
    /* Si el valor que trae la variable viene en el formato 1025345.25
     * el retorno seria 1.025.345,25
     */
    var formatNumber = {
        separador: ".", // separador para los miles
        sepDecimal: ',', // separador para los decimales
        formatear: function (num) {
            num += '';
            var splitStr = num.split('.');
            var splitLeft = splitStr[0];
            var splitRight = splitStr.length > 1 ? this.sepDecimal + splitStr[1] : this.sepDecimal + '00';
            var regx = /(\d+)(\d{3})/;
            while (regx.test(splitLeft)) {
                splitLeft = splitLeft.replace(regx, '$1' + this.separador + '$2');
            }
            return this.simbol + splitLeft + splitRight;
        },
        nuevo: function (num, simbol) {
            this.simbol = simbol || '';
            return this.formatear(num);
        }
    };
    return formatNumber.nuevo(variable);
}

function validar_fechas(inicio,fin){
    if(Date.parse(inicio) >= Date.parse(fin)){
       
        toastr.error('La fecha final no puede ser menor i igual a la fecha de inicio');
        return false;
    }
    else{
        return true;
    }
  
}
function formato_fecha(d) {
    return d.substring(8, 10) + "/" + d.substring(5, 7) + "/" + d.substring(0, 4);
}