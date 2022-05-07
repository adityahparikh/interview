class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.text :url
      t.text :short_id

      t.timestamps
    end
  end
end
