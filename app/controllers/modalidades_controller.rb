class ModalidadesController < ApplicationController 
  def index
    @crime = Crime.find(params[:crime_id])
    @modalidades = @crime.modalidades

    respond_with @modalidades  
  end  
end