class JurisController < ApplicationController
  def index
    @crime = Crime.find(params[:crime_id])
    @juris = @crime.juris.ativo

    respond_with @juris
  end

  def create
    @crime = Crime.find(params[:crime_id])
    if @juri = @crime.juris.create(params[:juri])
      flash[:notice] = "Jurisprudencia submetida aos moderadores..."
      redirect_to @crime
    else
      flash[:alert] = 'Erro!'
    end
  end
end