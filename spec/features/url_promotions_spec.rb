require 'spec_helper'

describe Spree::StoreController do
  let!(:product) { create(:product, name: "RoR Mug", price: 20) }

  before do
    promotion = Spree::Promotion.create!(name:       "$10 off",
                                         url_path:   'test',
                                         starts_at:  1.day.ago,
                                         expires_at: 1.day.from_now)

    visit spree.root_path
  end

  context "when redeem from store controller option is active" do
    it "applies a page promotion upon visiting" do
      binding.pry
    end
  end
end
