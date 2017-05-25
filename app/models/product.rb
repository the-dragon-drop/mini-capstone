class Product < ApplicationRecord
  belongs_to :supplier

  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products

  def discounted?
    price < 20
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def first_image_url
    image_collection = images
    if image_collection.length == 0
      "https://s-media-cache-ak0.pinimg.com/736x/3f/80/72/3f8072a194b937992b1556799355aaaf.jpg"
    else
      image_collection.first.url
    end
  end

  def stringify_categories
    categories.map { |category| category.name.titleize }.join(", ")
  end
end








