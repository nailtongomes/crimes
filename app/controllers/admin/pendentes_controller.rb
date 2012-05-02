class Admin::PendentesController < Admin::BaseController
  menu_item :pendentes
  def index
    @casos     = Caso.pendente
    @juris     = Juri.pendente
    @qts       = Qt.pendente
    @temas     = Tema.pendente
    @doutrinas = Doutrina.pendente
  end
    
end