# == Schema Information
#
# Table name: modalidades
#
#  id         :integer         not null, primary key
#  titulo     :string(255)
#  b_legal    :text
#  anotacoes  :text
#  pena       :string(255)
#  crime_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Modalidade < ActiveRecord::Base
  belongs_to :crime
  attr_accessible :anotacoes, :b_legal, :titulo, :crime_id, :pena
end
