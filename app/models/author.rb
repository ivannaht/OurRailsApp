class Author < ApplicationRecord
    validates :first_name, :last_name, presence: true 
    validates :age, numericality: {greate_than: 18, less_than: 99}

    has_one :additional_info

    def additional_info
        super || build_additional_info(address: 'No address found' ) 
    end
end
