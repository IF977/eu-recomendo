class User < ActiveRecord::Base
    validates :nome,  presence: true
    validates :sobrenome,  presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    validates :nickname,  presence: true
    validates :telefone,  presence: true
    validates :rua,  presence: true
    validates :cep,  presence: true
    validates :numero,  presence: true
    validates :tipo,  presence: true
    
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
end
