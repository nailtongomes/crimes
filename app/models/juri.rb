# == Schema Information
#
# Table name: juris
#
#  id         :integer         not null, primary key
#  orgao      :string(255)
#  corpo      :text
#  ref        :text
#  ativo      :boolean         default(FALSE)
#  crime_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Juri < ActiveRecord::Base
  belongs_to :crime
  attr_accessible :orgao, :corpo, :ref, :crime_id, :ativo

  default_scope :order => "ativo DESC"
  
  scope :pendente, where(:ativo => false)
  scope :ativo, where(:ativo => true)
  #inserir validações  
end
