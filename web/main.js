/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var servicio = "";
var unidad = "";
var responsable = "";
var tarea = "";

$(document).ready(function(){
        
    $('#servicios').change(function(){
        
        $("#unidades").prop('selectedIndex',0);
        servicio = $(this).val();
        
        $.each($("#unidades option"), function(v,i){
            $(this).show();
        });
        
        $.each($("#unidades option"), function(v,i){
            if ( $(this).attr('x-data-parent') !== servicio )
            {
                $(this).hide();
            }
        });
        $('#unidades').prop('disabled', false);
    });
    
    $('#unidades').change(function(){
        
        $("#responsables").prop('selectedIndex',0);
        
        unidad = $(this).val();
        console.log(unidad);
        
        $.each($("#responsables option"), function(v,i){
            $(this).show();
        });
        
        $.each($("#responsables option"), function(v,i){
            if ( $(this).attr('x-data-parent') != unidad )
            {
                $(this).hide();
            }
        });
        
        $('#responsables').prop('disabled', false);
    });
    
    $('#responsables').change(function(){
        responsable = $(this).val();
    });
});

