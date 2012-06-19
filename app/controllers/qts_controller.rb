class QtsController < ApplicationController
  def index
    @crime = Crime.find(params[:crime_id])
    @qts = @crime.qts.ativo

    respond_with @qts
  end

  def create
    @crime = Crime.find(params[:crime_id])
    if @qt = @crime.qts.create(params[:qt])
      flash[:notice] = "Questao submetida aos moderadores..."
      redirect_to @crime
    else
      flash[:alert] = 'Erro!'
    end
  end
end