class CreateRecomendations < ActiveRecord::Migration
  def change
    create_table :recomendations do |t|
      t.string :prdname
      t.string :comname

      t.timestamps null: false
    end
  end
end
