class TemasController < ApplicationController
  def index
    @crime = Crime.find(params[:crime_id])
    @temas = @crime.temas.ativo

    respond_with @temas
  end

  def create
    @crime = Crime.find(params[:crime_id])
    if @tema = @crime.temas.create(params[:tema])
      flash[:notice] = "Tema submetido aos moderadores..."
      redirect_to @crime
    else
      flash[:alert] = 'Erro!'
    end
  end
end