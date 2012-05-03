# == Schema Information
#
# Table name: crimes
#
#  id          :integer         not null, primary key
#  nome        :string(255)
#  capit       :text
#  pena        :string(255)
#  acao_penal  :string(255)
#  competencia :string(255)
#  fonte       :string(255)     default("CPB - DECRETO-LEI No 2.848, DE 7 DE DEZEMBRO DE 1940.")
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Crime < ActiveRecord::Base
  has_many :modalidades, :dependent => :destroy
  has_many :casos, :dependent => :destroy
  has_many :doutrinas, :dependent => :destroy
  has_many :juris, :dependent => :destroy
  has_many :qts, :dependent => :destroy
  has_many :temas, :dependent => :destroy
  
  attr_accessible :acao_penal, :capit, :competencia, :nome, :pena, :fonte
  
  default_scope :order => "capit"
  
  def self.search(terms) 
    where("LOWER(nome) LIKE :t OR LOWER(capit) LIKE :t", :t => "%#{terms.downcase}%")
  end
end
