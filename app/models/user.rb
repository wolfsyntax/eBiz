class User < ActiveRecord::Base
  #attr_accessor :username, :password, :password_confirmation
  
=begin
  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create

=end
  validates_presence_of :username
  validates_uniqueness_of :username
  has_secure_password

  validates :username, format: {with: /[a-zA-Z0-9]/, message: "Invalid format"}
  validates :username, length: {minimum: 6, maximum: 12, message: "The length of username must be 6 to 12 characters only"}
  validates :password, format: {with: /[a-zA-Z0-9]/, message: "Invalid format"}
  validates :password, length: {minimum: 4, maximum: 12, message: "Invalid length of password. It should be 8 to 12 alpha numeric characters"}

=begin
  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
=end

end
=begin
      t.string :username
      t.string :password_hash
      t.string :password_salt
=end