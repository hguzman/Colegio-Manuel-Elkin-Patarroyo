// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require rails-ujs
//= require activestorage
//= require jquery/jquery-3.1.1.min.js
//= require popper
//= require bootstrap
//= require pace/pace.min.js
//= require slimscroll/jquery.slimscroll.min.js
//= require metisMenu/jquery.metisMenu.js
//= require inspinia.js
//= require toastr/toastr.min.js
//= require trix

// Datatables

$(document).ready(function() {
    $('#cursos').DataTable( {
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)",
						"search" : "Buscar: ",
						"paginate" : {
							"previous" : "Anterior",
							"next" : "Siguiente"
						}
        }
    } );

    $('#users').DataTable( {
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)",
						"search" : "Buscar: ",
						"paginate" : {
							"previous" : "Anterior",
							"next" : "Siguiente"
						}
        }
    } );

    $('#roles').DataTable( {
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)",
						"search" : "Buscar: ",
						"paginate" : {
							"previous" : "Anterior",
							"next" : "Siguiente"
						}
        }
    } );

    $('#asistencias').DataTable( {
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)",
						"search" : "Buscar: ",
						"paginate" : {
							"previous" : "Anterior",
							"next" : "Siguiente"
						}
        }
    } );

    $('#show-asistencia').DataTable( {
        "language": {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "No se encontraron resultados",
            "info": "Mostrando página _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros disponibles",
            "infoFiltered": "(filtrado de _MAX_ registros totales)",
						"search" : "Buscar: ",
						"paginate" : {
							"previous" : "Anterior",
							"next" : "Siguiente"
						}
        }
    } );
});
   
$(document).ready(function() {
    $('#cursos').DataTable();
    $('#users').DataTable();
    $('#roles').DataTable();
    $('#asistencias').DataTable();
    $('#show-asistencia').DataTable();
});

// Final de datatable