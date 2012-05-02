class Admin::TemasController < Admin::BaseController
  menu_item :crimes
  def index
    @crime = Crime.find(params[:crime_id])
    @temas = @crime.temas
  end
  
  def update
    @crime = Crime.find(params[:crime_id])
    @tema = @crime.temas.find(params[:id])
    @tema.update_attributes(params[:tema])
    respond_with @crime, :location => admin_crime_temas_path(@crime.id)    
  end
 def new
    @crime = Crime.find(params[:crime_id])
    @tema = @crime.temas.new
  end

  def create
    @crime = Crime.find(params[:crime_id])
    @tema = @crime.temas.create(params[:tema])
    flash[:notice] = 'Tema criado!'
    respond_with @crime, :location => admin_crime_temas_path(@crime.id)
  end
  
  def edit
    @crime = Crime.find(params[:crime_id])
    @tema = @crime.temas.find(params[:id])
  end

  def destroy
    @crime = Crime.find(params[:crime_id])
    @tema = @crime.temas.find(params[:id])
    @tema.destroy
    flash[:notice] = 'Tema removido!'
    respond_with @crime, :location => admin_crime_temas_path(@crime.id)
  end
    
end