class Admin::ModalidadesController < Admin::BaseController
  menu_item :crimes
  def index
    @crime = Crime.find(params[:crime_id])
    @modalidades = @crime.modalidades

    respond_with @modalidades
  end

  def new
    @crime = Crime.find(params[:crime_id])
    @modalidade = @crime.modalidades.new
  end

  def create
    @crime = Crime.find(params[:crime_id])
    @modalidade = @crime.modalidades.create(params[:modalidade])
    flash[:notice] = 'Modalidade criada!'
    respond_with @crime, :location => admin_crime_modalidades_path(@crime.id)
  end
  
  def edit
    @crime = Crime.find(params[:crime_id])
    @modalidade = @crime.modalidades.find(params[:id])
  end

  def update
    @crime = Crime.find(params[:crime_id])
    @modalidade = @crime.modalidades.find(params[:id])
    flash[:notice] = 'Modalidade atualizada.' if @modalidade.update_attributes(params[:modalidade])
    respond_with @crime, :location => admin_crime_modalidades_path(@crime.id)
  end

  def destroy
    @crime = Crime.find(params[:crime_id])
    @modalidade = @crime.modalidades.find(params[:id])
    @modalidade.destroy
    flash[:notice] = 'Modalidade removida!'
    respond_with @crime, :location => admin_crime_modalidades_path(@crime.id)
  end
end