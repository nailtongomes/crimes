class ContatosController < ApplicationController
  def new
    @contato = Contato.new
  end

  def create
    @contato = Contato.new(params[:contato])

    if @contato.save
      flash[:notice] = 'Sua mensagem foi enviada!'
      redirect_to new_contato_path
    else
      render :new
    end
  end

end