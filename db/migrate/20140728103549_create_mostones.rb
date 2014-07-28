class CreateMostones < ActiveRecord::Migration
  def change
    create_table :mostones do |t|
      t.integer :phone

      t.timestamps
    end
  end
end
