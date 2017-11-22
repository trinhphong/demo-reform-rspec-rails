class UserForm < Reform::Form
    property :first_name
    property :last_name
    property :full_name

    validates :first_name, presence: true
    validates :last_name, presence: true
end