class CreateFakeposts < ActiveRecord::Migration
  def change
    create_table :fakeposts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
