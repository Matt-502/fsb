class Property < ApplicationRecord
  belongs_to :user
  has_many :favorites

  validates :prefecture_code, presence: true
  validates :postcode, presence: true  
  validates :address_city, presence: true 
  validates :address_street, presence: true  
  validates :address_building, presence: true      
  validates :title, presence: true         
  validates :description, presence: true  
  validates :details, presence: true       
  validates :price, presence: true         
  validates :hobby, presence: true         
  validates :layout, presence: true        
  validates :location, presence: true
  mount_uploader :image, ImageUploader

  include JpPrefecture
  jp_prefecture :prefecture_code, method_name: :pref

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end


end
