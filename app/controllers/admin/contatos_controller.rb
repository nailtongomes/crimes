class Admin::ContatosController < Admin::BaseController
  menu_item :contatos
  
  def index
    @open = Contato.pending
    @closed = Contato.closed
  end

  def show
    @contato = Contato.find(params[:id])
    respond_with @contato
  end

  def update
    @contato = Contato.find(params[:id])
    flash[:notice] = 'Contato atualizado.' if @contato.update_attributes(params[:contato])
    respond_with @contato, :location => admin_contatos_path
  end

  def destroy
    @contato = Contato.find(params[:id])
    @contato.destroy
    respond_with @contato, :location => admin_contatos_path
  end
end