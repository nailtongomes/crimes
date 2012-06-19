class DoutrinasController < ApplicationController
  def index
    @crime = Crime.find(params[:crime_id])
    @doutrinas = @crime.doutrinas.ativo

    respond_with @doutrinas
  end

  def create
    @crime = Crime.find(params[:crime_id])
    if @doutrina = @crime.doutrinas.create(params[:doutrina])
      flash[:notice] = "Doutrina submetida aos moderadores..."
      redirect_to @crime
    else
      flash[:alert] = 'Erro!'
    end
  end
end