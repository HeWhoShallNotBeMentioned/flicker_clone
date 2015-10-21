class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
        t.column :caption, :string
        t.column :content, :string
        t.column :user_id, :integer
        t.column :tag, :string
        t.column :comment, :string

        t.timestamps
    end
  end
end
