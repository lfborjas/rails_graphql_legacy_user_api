class Mutations::SignUpUser < GraphQL::Function
  argument :email, !types.String
  argument :password, !types.String
  argument :first_name, !types.String
  argument :last_name, !types.String

  type Types::UserType

  def call(obj, args, ctx)
    # TODO: handle exceptions!
    User.create_remote(
      email: args.email,
      password: args.password,
      first_name: args.first_name,
      last_name: args.last_name
    )
  end
end
