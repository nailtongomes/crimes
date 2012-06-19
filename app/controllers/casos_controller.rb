class CasosController < ApplicationController
  def index
    @crime = Crime.find(params[:crime_id])
    @casos = @crime.casos.ativo

    respond_with @casos  
  end

  def create
    @crime = Crime.find(params[:crime_id])    
    if @caso = @crime.casos.create(params[:caso])
    flash[:notice] = "Caso submetido aos moderadores..."  
    redirect_to @crime
    else
    flash[:alert] = 'Erro!'
    end
  end  
end