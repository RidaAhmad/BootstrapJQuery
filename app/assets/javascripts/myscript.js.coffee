console.log("Before AJAX Call!")
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
        console.log("Within AJAX Call!")
        $('body').append "Successful AJAX call!"
console.log("After AJAX Call!")
