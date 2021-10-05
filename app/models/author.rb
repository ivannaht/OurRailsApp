class Author < ApplicationRecord
    validates :first_name, :last_name, :password, presence: true 
    validates :age, numericality: {greate_than: 18, less_than: 99}, on: :create
    #validates :password, confirmation: true, if: ->(author){author.password.length >= 3}
    validates :password, format: {with: /[A-Za-z0-9_]{6,15}/}
    validates :first_name, uniqueness: true
    validates :first_name, uniqueness: true
    #validates :status, :inclusion: {in: [:pending, :submitted]}

    has_one :additional_info
    def additional_info
        super || build_additional_info(address: 'No address found') 
    end

    has_many :books
    def books
        super || books(subject: 'No subject found') 
    end

    #private
    #def check_username
        #self.username.length >= 3
    #end

end