Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :user, !types[Types::UserType] do
    description "Get information about a customer"
    resolve ->(obj, args, ctx) {
      User.where(args)
    }
  end
end
