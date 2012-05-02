class Admin::CrimesController < Admin::BaseController
  menu_item :crimes

  def index
    @crimes = Crime.all
    respond_with @crimes
  end
  
  def show
    @crime = Crime.find(params[:id])
    respond_with @crime do |format|
      format.html { render :layout => "application" }
    end
  end  

  def new
    @crime = Crime.new
    respond_with @crime
  end

  def edit
    @crime = Crime.find(params[:id])
  end

  def create
    @crime = Crime.new(params[:crime])
    flash[:notice] = 'Crime armazenado.' if @crime.save
    respond_with @crime, :location => admin_crimes_path
  end

  def update
    @crime = Crime.find(params[:id])
    flash[:notice] = 'Crime atualizado.' if @crime.update_attributes(params[:crime])
    respond_with @crime, :location => edit_admin_crime_path(@crime)
  end

  def destroy
    @crime = Crime.find(params[:id])
    @crime.destroy

    respond_with @crime, :location => admin_crimes_path
  end
end