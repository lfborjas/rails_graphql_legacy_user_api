Types::SubscriptionProfileType = GraphQL::ObjectType.define do
  name "SubscriptionProfile"
  field :id, !types.ID
  field :subscription_vertical_id, !types.Int
  field :shipping_address_id, !types.Int
  field :is_paused, !types.Boolean
end
