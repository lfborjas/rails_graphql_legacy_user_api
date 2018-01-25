Types::DateType = GraphQL::ScalarType.define do
  name "Date"
  description "Standardized date type"

  coerce_input ->(value, context){ Date.parse(value) }
  coerce_result ->(value, context){  value.strftime("%F")  }
end
