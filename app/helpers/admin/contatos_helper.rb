module Admin::ContatosHelper

  def toggle_open(contato)
    params = { :contato => { :open => !contato.open } }
    text   = contato.open? ? "Fechar" : "Reabrir"

    link_to text,
      admin_contato_path(contato, params),
      :method => "put",
      :class => "button"
  end

  def row_class(contato)
    status = (contato.open?) ? "Aberto" : "Fechado"
    "#{cycle(:odd, :even)} #{status}"
  end

end
