class Admin::QtsController < Admin::BaseController
  menu_item :crimes
  def index
    @crime = Crime.find(params[:crime_id])
    @qts = @crime.qts
  end
  
  def update
    @crime = Crime.find(params[:crime_id])
    @qt = @crime.qts.find(params[:id])
    @qt.update_attributes(params[:qt])
    respond_with @crime, :location => admin_crime_qts_path(@crime.id)    
  end
 def new
    @crime = Crime.find(params[:crime_id])
    @qt = @crime.qts.new
  end

  def create
    @crime = Crime.find(params[:crime_id])
    @qt = @crime.qts.create(params[:qt])
    flash[:notice] = 'Questao criada!'
    respond_with @crime, :location => admin_crime_qts_path(@crime.id)
  end
  
  def edit
    @crime = Crime.find(params[:crime_id])
    @qt = @crime.qts.find(params[:id])
  end

  def destroy
    @crime = Crime.find(params[:crime_id])
    @qt = @crime.qts.find(params[:id])
    @qt.destroy
    flash[:notice] = 'Questao removida!'
    respond_with @crime, :location => admin_crime_qts_path(@crime.id)
  end
    
end