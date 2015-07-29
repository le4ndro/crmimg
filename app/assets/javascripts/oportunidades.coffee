# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).on 'change', '#cliente_potencial_select', (evt) ->
    $.ajax '/oportunidades/update_oportunidades',
      type: 'GET'
      dataType: 'script'
      data: {
        cliente_potencial_id: $("#cliente_potencial_select option:selected").val()
        
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic oportunidade select OK!")
