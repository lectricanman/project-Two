class CreateThreads < ActiveRecord::Migration
  def change
    create_table :threads do |t|
      t.references :user
      t.references :board
      t.string     :title
      t.text       :body
      t.string     :opt_image_url
      t.boolean    :active

      t.timestamps
    end
  end
end
