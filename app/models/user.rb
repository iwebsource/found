class User < ActiveRecord::Base

  has_many :projects
  has_many :project_issues, :through => :projects
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  def create
  @user = User.create( user_params )
end

private
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	def current_admin
		current_user && current_user.is_admin
	end

end
