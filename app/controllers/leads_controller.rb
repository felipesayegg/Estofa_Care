class LeadsController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to root_path, notice: 'Informaçoes enviadas com sucesso!'
    else
      render :new
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:nome, :email, :telefone, :mensagem)
  end
end
