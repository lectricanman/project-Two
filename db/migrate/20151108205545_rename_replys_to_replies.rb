class RenameReplysToReplies < ActiveRecord::Migration
  def change
    rename_table :replys, :replies
  end
end
