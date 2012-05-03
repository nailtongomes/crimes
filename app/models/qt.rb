# == Schema Information
#
# Table name: qts
#
#  id         :integer         not null, primary key
#  assertiva  :text
#  resposta   :string(255)
#  ativo      :boolean         default(FALSE)
#  crime_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Qt < ActiveRecord::Base
  belongs_to :crime
  attr_accessible :assertiva, :resposta, :crime_id, :ativo

  default_scope :order => "ativo DESC"
  
  scope :pendente, where(:ativo => false)
  scope :ativo, where(:ativo => true)
  #inserir validações  
end
