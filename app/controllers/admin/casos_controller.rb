class Admin::CasosController < Admin::BaseController
  menu_item :crimes
  def index
    @crime = Crime.find(params[:crime_id])
    @casos = @crime.casos
  end
  
  def update
    @crime = Crime.find(params[:crime_id])
    @caso = @crime.casos.find(params[:id])
    @caso.update_attributes(params[:caso])
    respond_with @crime, :location => admin_crime_casos_path(@crime.id)    
  end
 def new
    @crime = Crime.find(params[:crime_id])
    @caso = @crime.casos.new
  end

  def create
    @crime = Crime.find(params[:crime_id])
    @caso = @crime.casos.create(params[:caso])
    flash[:notice] = 'Caso criado!'
    respond_with @crime, :location => admin_crime_casos_path(@crime.id)
  end
  
  def edit
    @crime = Crime.find(params[:crime_id])
    @caso = @crime.casos.find(params[:id])
  end

  def destroy
    @crime = Crime.find(params[:crime_id])
    @caso = @crime.casos.find(params[:id])
    @caso.destroy
    flash[:notice] = 'Caso removido!'
    respond_with @crime, :location => admin_crime_casos_path(@crime.id)
  end
    
end