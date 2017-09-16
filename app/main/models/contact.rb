class Contact < Volt::Model
  validate :name, presence: true
  validate :last_name, presence: true
  validate :email, presence: true
  validate :phone, presence: true, length: 9, numericality: true
end
