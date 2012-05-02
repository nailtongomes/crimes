class Admin::JurisController < Admin::BaseController
  menu_item :crimes
  def index
    @crime = Crime.find(params[:crime_id])
    @juris = @crime.juris
  end
  
  def update
    @crime = Crime.find(params[:crime_id])
    @juri = @crime.juris.find(params[:id])
    @juri.update_attributes(params[:juri])
    respond_with @crime, :location => admin_crime_juris_path(@crime.id)    
  end
 def new
    @crime = Crime.find(params[:crime_id])
    @juri = @crime.juris.new
  end

  def create
    @crime = Crime.find(params[:crime_id])
    @juri = @crime.juris.create(params[:juri])
    flash[:notice] = 'Jurisprudencia criada!'
    respond_with @crime, :location => admin_crime_juris_path(@crime.id)
  end
  
  def edit
    @crime = Crime.find(params[:crime_id])
    @juri = @crime.juris.find(params[:id])
  end

  def destroy
    @crime = Crime.find(params[:crime_id])
    @juri = @crime.juris.find(params[:id])
    @juri.destroy
    flash[:notice] = 'Jurisprudencia removida!'
    respond_with @crime, :location => admin_crime_juris_path(@crime.id)
  end
    
end