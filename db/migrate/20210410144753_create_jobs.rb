class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :position, null: false
      t.string :company, null: false
      t.string :kind_of, limit:10
      t.string :salary
      t.string :status, null: false
      t.string :place

      t.timestamps
    end
  end
end
