class AddColumnsToSpreePromotions < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_promotions, :url_path, :string
    add_column :spree_promotions, :redeem_from_store_controller, :boolean, default: false
  end
end
