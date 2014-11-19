class CreateTccapis < ActiveRecord::Migration
  def change
    create_table :tccapis do |t|

      t.timestamps
    end
  end
end
