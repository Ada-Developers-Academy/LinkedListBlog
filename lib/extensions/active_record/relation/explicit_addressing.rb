module Extensions
  module ActiveRecord
    module Relation
      module ExplicitAddressing
        def load
          clauses = where_values_hash
          if clauses.keys != [primary_key] or not clauses[primary_key].is_a? Integer
            raise NotImplementedError
          end

          super
        end
      end
    end
  end
end
