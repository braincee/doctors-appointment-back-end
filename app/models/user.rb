class User < ApplicationRecord
    validates :username, precence:true, length {minimum: 3, maximum: 15  }

end
