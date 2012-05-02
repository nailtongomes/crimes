class CrimesController < ApplicationController
  def index
    @crimes = Crime.scoped
    @crimes = @crimes.search(params[:search]) if params[:search].present? 

    respond_with @crimes 
  end

  def show
    @crime = Crime.find(params[:id])
#    @argumentos = @crime.argumentos
    respond_with @crime
  end
end
