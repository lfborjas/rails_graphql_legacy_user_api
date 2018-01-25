Types::DatetimeType = GraphQL::ScalarType.define do
  name "DateTime"
  description "Standardized datetime type"

  coerce_input ->(value, context){ DateTime.parse(value) }
  coerce_result ->(value, context){  value.iso8601  }
end
