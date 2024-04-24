class CreateLeads < ActiveRecord::Migration[7.1]
  def change
    create_table :leads do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.text :mensagem

      t.timestamps
    end
  end
end
