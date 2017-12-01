module PromootionHandler
  class Url
    attr_reader :order, :path

    def initialize(order, path)
      @order = order
      @path = path.gsub(/\A\//, '')
    end

    def activate
      if promotion && promotion.eligible?(order) && promotion.redeem_from_store_controller
        promotion.activate(order: order)
      end
    end

    private

    def promotion
      @promotion ||= Spree::Promotion.active.find_by(url_path: path)
    end
  end
end
