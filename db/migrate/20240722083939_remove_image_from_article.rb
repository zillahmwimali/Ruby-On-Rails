class RemoveImageFromArticle < ActiveRecord::Migration[7.1]
  def change
    remove_column :articles, :image, :string
  end
end
