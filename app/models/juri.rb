class Juri < ActiveRecord::Base
  belongs_to :crime
  attr_accessible :orgao, :corpo, :ref, :crime_id, :ativo

  default_scope :order => "ativo DESC"
  
  scope :pendente, where(:ativo => false)
  scope :ativo, where(:ativo => true)
  #inserir validações  
end
