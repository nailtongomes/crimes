# == Schema Information
#
# Table name: temas
#
#  id         :integer         not null, primary key
#  autor      :string(255)
#  titulo     :string(255)
#  corpo      :text
#  ref        :text
#  ativo      :boolean         default(FALSE)
#  crime_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Tema < ActiveRecord::Base
  belongs_to :crime
  attr_accessible :autor, :corpo, :ref, :crime_id, :ativo, :titulo

  default_scope :order => "ativo DESC"
  
  scope :pendente, where(:ativo => false)
  scope :ativo, where(:ativo => true)
  #inserir validações    
end
