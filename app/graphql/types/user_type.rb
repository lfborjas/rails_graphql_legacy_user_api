Types::UserType = GraphQL::ObjectType.define do
  name "User"

  field :id, !types.ID
  field :email, !types.String
  field :group_id, !types.Int

  field :subscriptions, !types[Types::SubscriptionType]
end
