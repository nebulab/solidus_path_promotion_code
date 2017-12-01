module SolidusPathPromotionCode
  module StoreController
    module AddFireVisitedPage
      def self.prepended(base)
        base.before_action :fire_visited_path
      end

      def fire_visited_path
        ::PromootionHandler::Url.new(current_order, request.path).activate
      end

      Spree::StoreController.prepend self
    end
  end
end
