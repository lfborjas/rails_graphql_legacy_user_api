Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :signUp, function: Mutations::SignUpUser.new
end
