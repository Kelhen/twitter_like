Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :id, !types.ID
  field :name, !types.String
  field :email, !types.String
  field :validation_token, !types.String
  field :validated, !types.Boolean
  field :image, !types.String
  # filed :followed, -> { Types::UserType }, property: :follower
end
