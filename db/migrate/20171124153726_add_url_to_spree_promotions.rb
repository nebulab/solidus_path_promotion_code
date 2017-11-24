class AddUrlToSpreePromotions < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_promotions, :url, :string
  end
end
