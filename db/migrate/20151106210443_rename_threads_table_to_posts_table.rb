class RenameThreadsTableToPostsTable < ActiveRecord::Migration
  def change
    rename_table :threads, :posts
  end
end
