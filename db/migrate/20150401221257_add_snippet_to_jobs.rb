class AddSnippetToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :list_snippet, :string
  end
end
