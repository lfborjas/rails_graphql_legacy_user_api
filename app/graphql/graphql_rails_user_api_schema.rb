GraphqlRailsUserApiSchema = GraphQL::Schema.define do
  # we're not using mutations for this prototype
  #mutation(Types::MutationType)
  query(Types::QueryType)
end
