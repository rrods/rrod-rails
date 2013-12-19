module Rrod
  module Model
    module FormHelper
      def method_missing(method_id, *args, &block)
        puts caller.binding.class
      end
    end

    include FormHelper
  end
end
