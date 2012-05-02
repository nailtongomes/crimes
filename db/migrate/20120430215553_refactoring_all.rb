class RefactoringAll < ActiveRecord::Migration
  def up
    create_table :crimes do |t|
      t.string :nome
      t.text   :capit
      t.string :pena
      t.string :acao_penal
      t.string :competencia
      t.string :fonte, :default => "CPB - DECRETO-LEI No 2.848, DE 7 DE DEZEMBRO DE 1940."
      t.timestamps
    end

    create_table :modalidades do |t|
      t.string :titulo
      t.text :b_legal
      t.text :anotacoes
      t.string :pena
      t.references :crime
      t.timestamps
    end

    create_table :doutrinas do |t|
      t.string  :autor
      t.text    :corpo
      t.text    :ref
      t.boolean :ativo, :default => false
      t.references :crime
      t.timestamps
    end

    create_table :juris do |t|
      t.string  :orgao
      t.text    :corpo
      t.text    :ref
      t.boolean :ativo, :default => false
      t.references :crime
      t.timestamps
    end

    create_table :casos do |t|
      t.string  :autor
      t.text    :corpo
      t.text    :ref
      t.boolean :ativo, :default => false
      t.references :crime
      t.timestamps
    end

    create_table :temas do |t|
      t.string  :autor
      t.string  :titulo
      t.text    :corpo
      t.text    :ref
      t.boolean :ativo, :default => false
      t.references :crime
      t.timestamps
    end

    create_table :qts do |t|
      t.text    :assertiva
      t.string  :resposta
      t.boolean :ativo, :default => false
      t.references :crime
      t.timestamps
    end

    add_index :doutrinas, :crime_id
    add_index :juris, :crime_id
    add_index :casos, :crime_id
    add_index :temas, :crime_id
    add_index :qts, :crime_id
    add_index :modalidades, :crime_id
  end

  def down
    # not much we can do to restore deleted data
    raise ActiveRecord::IrreversibleMigration, "Can't recover the deleted data"
  end
end