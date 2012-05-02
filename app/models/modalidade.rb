class Modalidade < ActiveRecord::Base
  belongs_to :crime
  attr_accessible :anotacoes, :b_legal, :titulo, :crime_id, :pena
end
