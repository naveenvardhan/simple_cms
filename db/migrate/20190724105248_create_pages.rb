class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string 'name'
      t.text 'position'
      t.string 'permulink'
      t.string 'visible'
      t.references :subjects
      t.timestamps
    end
  end
end
