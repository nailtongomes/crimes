class Admin::DoutrinasController < Admin::BaseController
  menu_item :crimes
  def index
    @crime = Crime.find(params[:crime_id])
    @doutrinas = @crime.doutrinas
  end
  
  def update
    @crime = Crime.find(params[:crime_id])
    @doutrina = @crime.doutrinas.find(params[:id])
    @doutrina.update_attributes(params[:doutrina])
    respond_with @crime, :location => admin_crime_doutrinas_path(@crime.id)    
  end
 def new
    @crime = Crime.find(params[:crime_id])
    @doutrina = @crime.doutrinas.new
  end

  def create
    @crime = Crime.find(params[:crime_id])
    @doutrina = @crime.doutrinas.create(params[:doutrina])
    flash[:notice] = 'Doutrina criada!'
    respond_with @crime, :location => admin_crime_doutrinas_path(@crime.id)
  end
  
  def edit
    @crime = Crime.find(params[:crime_id])
    @doutrina = @crime.doutrinas.find(params[:id])
  end

  def destroy
    @crime = Crime.find(params[:crime_id])
    @doutrina = @crime.doutrinas.find(params[:id])
    @doutrina.destroy
    flash[:notice] = 'Doutrina removida!'
    respond_with @crime, :location => admin_crime_doutrinas_path(@crime.id)
  end
    
end