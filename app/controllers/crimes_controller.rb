class CrimesController < ApplicationController
  def index
    @crimes = Crime.scoped
    @crimes = @crimes.search(params[:search]) if params[:search].present?

    respond_with @crimes 
  end

  def show
    @crime = Crime.find(params[:id])
    @doutrinas = @crime.doutrinas.ativo
    @temas = @crime.temas.ativo
    @casos = @crime.casos.ativo
    @qts =   @crime.qts.ativo
    @juris =   @crime.juris.ativo    
    
    respond_with @crime
  end
end
