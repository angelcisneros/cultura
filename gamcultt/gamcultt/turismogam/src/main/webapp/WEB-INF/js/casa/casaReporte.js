/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('#reporteCasasExcel').on('click', function() {
    window.location.href = 'reporteCasa';
});

 $('#casaTbody').on('click', '.casaReporteIndividualButton', function() {   
    var tr = $($($($(this).parent())).parent()).parent();
    var id = $(tr).find('td.id label.ocultar').text();
    window.location.href = 'reporteIndividualCasa/' + id;
});
