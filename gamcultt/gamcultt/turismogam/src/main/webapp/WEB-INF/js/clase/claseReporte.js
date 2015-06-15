/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#reporteClasesExcel').on('click', function() {
    window.location.href = 'reporteClase';
});

$('.claseReporteIndividualButton').on('click', function() {
    var tr = $($($($(this).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    window.location.href = 'reporteIndividualClase/' + id;
});
