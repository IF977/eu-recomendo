class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :sobrenome
      t.string :email
      t.string :nickname
      t.integer :telefone
      t.string :rua
      t.integer :cep
      t.integer :numero
      t.string :complemento
      t.string :tipo

      t.timestamps null: false
    end
  end
end
