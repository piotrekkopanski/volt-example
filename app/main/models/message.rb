class Message < Volt::Model
  own_by_user
  field :body, String
  validate :body, presence: true

end
