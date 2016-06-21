$(document).ready ->
  $("#trying").click ->
    $.ajax
      url: '/products'
      type: 'POST'
      data: { product: { name: $('#product_name').val() } }
      dataType: "json"
      error: (jqXHR, textStatus, errorThrown) ->
        $('body').append "AJAX Error: #{textStatus}"
      success: (data, textStatus, jqXHR) ->
        $('body').append "Successful AJAX call!"
