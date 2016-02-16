class Create < ActiveRecord::Migration
  def change
      create_table :creates do |t|
        t.string :name

        t.timestamps 
      end
  end
end
