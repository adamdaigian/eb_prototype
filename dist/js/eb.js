$(document).ready(function() {

  //mixpanel track
  $('[track]').click(function () {
    mixpanel.track($(this).attr("track"))  
  });

  //signup
  $('#email-signup').click(function () { 
    $('#github-signup').hide()
    $('#google-signup').hide()
    $('#email-signup').hide()
    $('.divider').hide()
    $('#signup-form').show()
  });  

  //use cases jquery  
  $('#use-case-1').click(function () {
    $('#use-case-select-1').addClass('active')
    $('#use-case-carrot-1').addClass('active')
    $('#use-case-lead-1').addClass('active')
    $('#use-case-description-1').show()
    $('#use-case-select-2').removeClass('active')
    $('#use-case-carrot-2').removeClass('active')
    $('#use-case-lead-2').removeClass('active')
    $('#use-case-description-2').hide()
    $('#use-case-select-3').removeClass('active')
    $('#use-case-carrot-3').removeClass('active')
    $('#use-case-lead-3').removeClass('active')
    $('#use-case-description-3').hide()
    $('#use-case-select-4').removeClass('active')
    $('#use-case-carrot-4').removeClass('active')
    $('#use-case-lead-4').removeClass('active')
    $('#use-case-description-4').hide()
  });
  $('#use-case-2').click(function () {
    $('#use-case-select-2').addClass('active')
    $('#use-case-carrot-2').addClass('active')
    $('#use-case-lead-2').addClass('active')
    $('#use-case-description-2').show()
    $('#use-case-select-1').removeClass('active')
    $('#use-case-carrot-1').removeClass('active')
    $('#use-case-lead-1').removeClass('active')
    $('#use-case-description-1').hide()
    $('#use-case-select-3').removeClass('active')
    $('#use-case-carrot-3').removeClass('active')
    $('#use-case-lead-3').removeClass('active')
    $('#use-case-description-3').hide()
    $('#use-case-select-4').removeClass('active')
    $('#use-case-carrot-4').removeClass('active')
    $('#use-case-lead-4').removeClass('active')
    $('#use-case-description-4').hide()
  });
  $('#use-case-3').click(function () {
    $('#use-case-select-3').addClass('active')
    $('#use-case-carrot-3').addClass('active')
    $('#use-case-lead-3').addClass('active')
    $('#use-case-description-3').show()
    $('#use-case-select-1').removeClass('active')
    $('#use-case-carrot-1').removeClass('active')
    $('#use-case-lead-1').removeClass('active')
    $('#use-case-description-1').hide()
    $('#use-case-select-2').removeClass('active')
    $('#use-case-carrot-2').removeClass('active')
    $('#use-case-lead-2').removeClass('active')
    $('#use-case-description-2').hide()
    $('#use-case-select-4').removeClass('active')
    $('#use-case-carrot-4').removeClass('active')
    $('#use-case-lead-4').removeClass('active')
    $('#use-case-description-4').hide()
  });
  $('#use-case-4').click(function () {
    $('#use-case-select-4').addClass('active')
    $('#use-case-carrot-4').addClass('active')
    $('#use-case-lead-4').addClass('active')
    $('#use-case-description-4').show()
    $('#use-case-select-1').removeClass('active')
    $('#use-case-carrot-1').removeClass('active')
    $('#use-case-lead-1').removeClass('active')
    $('#use-case-description-1').hide()
    $('#use-case-select-2').removeClass('active')
    $('#use-case-carrot-2').removeClass('active')
    $('#use-case-lead-2').removeClass('active')
    $('#use-case-description-2').hide()
    $('#use-case-select-3').removeClass('active')
    $('#use-case-carrot-3').removeClass('active')
    $('#use-case-lead-3').removeClass('active')
    $('#use-case-description-3').hide()
  });

  //data sheet download
  $('#datasheet-prompt').click(function () { 
    $('#datasheet-prompt').hide()
    $('#download-datasheet-filter').show()
  });
});