class Admin::UsuariosController < Admin::BaseController
  menu_item :usuarios

  def index
    @usuarios = Usuario.all
    respond_with @usuarios
  end

  def new
    @usuario = Usuario.new
    respond_with @usuario
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def create
    @usuario = Usuario.new(params[:usuario])
    flash[:notice] = 'Usuario cadastrado.' if @usuario.save
    respond_with @usuario, :location => [:admin, :usuarios]
  end

  def update
    @usuario = Usuario.find(params[:id])
    flash[:notice] = 'Usuario atualizado.' if @usuario.update_attributes(params[:usuario])
    respond_with @usuario, :location => [:admin, :usuarios]
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy

    respond_with @usuario, :location => [:admin, :usuarios]
  end
end