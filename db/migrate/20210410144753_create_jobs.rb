class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :company
      t.string :kind_of
      t.string :salary
      t.string :status
      t.string :place

      t.timestamps
    end
  end
end
