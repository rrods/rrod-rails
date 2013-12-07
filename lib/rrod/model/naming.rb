module Rrod
  module Model
    module Naming
      include ::ActiveModel::Naming
    end

    module ClassMethods
      include Naming
    end
  end
end
