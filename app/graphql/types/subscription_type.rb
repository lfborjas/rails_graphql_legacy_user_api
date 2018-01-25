Types::SubscriptionType = GraphQL::ObjectType.define do
  name "Subscription"
  field :id, !types.ID
  field :subscription_type, !types.Int
  field :status, !types.Int
  field :boxes_remaining, !types.Int
  field :next_ship_date, !Types::DateType
  field :created_at, !Types::DatetimeType
  field :updated_at, !Types::DatetimeType
  field :shipping_frequency, !types.Int

  # need explicit resolver for these, as they're not just attributes in the model
  field :is_active, !types.Boolean do
    resolve -> (object, args, context) {
      !object.status.zero?
    }
  end
  field :vertical, !types.Int do
    resolve -> (object, args, context) {
      object.subscription_profile.subscription_vertical_id
    }
  end
  # This is just an association, so it _should_ be auto-resolved
  field :subscription_profile, !Types::SubscriptionProfileType 
end
