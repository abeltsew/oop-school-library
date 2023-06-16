require_relative 'person'

class Teacher < Person
    def initialize(specialization)
        super()
        @specialization = specialization
    end

    def can_use_service? 
         true
    end
end
