class CreateContatos < ActiveRecord::Migration
  def self.up
    create_table :contatos do |t|
      t.string  :email
      t.string  :nome
      t.text    :msg
      t.string  :assunto
      t.boolean :open, :default => true

      t.timestamps
    end    
  end

  def self.down
    drop_table :contatos
  end
end
