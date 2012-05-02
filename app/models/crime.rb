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
