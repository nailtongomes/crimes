# == Schema Information
#
# Table name: contatos
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  nome       :string(255)
#  msg        :text
#  assunto    :string(255)
#  open       :boolean         default(TRUE)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Contato < ActiveRecord::Base
  attr_accessible :email, :nome, :assunto, :open, :msg
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_presence_of :nome, :email, :msg
  validates_inclusion_of :open, :in => [true, false]

  scope :pending, where(:open => true)
  scope :closed, where(:open => false)
end
