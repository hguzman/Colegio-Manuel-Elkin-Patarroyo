class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # Operator_record
  include OperatorRecordable::Extension
end
