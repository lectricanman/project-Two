class CreateReplys < ActiveRecord::Migration
  def change
    create_table :replys do |t|
      t.references :user
      t.text       :text
      t.string     :opt_image_url

      t.timestamps
    end
  end
end
