class Contato < ActiveRecord::Base
  attr_accessible :email, :nome, :assunto, :open, :msg
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_presence_of :nome, :email, :msg
  validates_inclusion_of :open, :in => [true, false]

  scope :pending, where(:open => true)
  scope :closed, where(:open => false)
end
