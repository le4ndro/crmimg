$("#oportunidades_select").empty()
  .append("<option value=\"\">Selecione</option>")
  .append("<%= escape_javascript(render(:partial => @oportunidades)) %>")