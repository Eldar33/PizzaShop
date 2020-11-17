class AddProducts < ActiveRecord::Migration[6.0]
  def change
  	Product.create :title => 'Гавайская',
	  	:description => 'Это гавайская пицца',
	  	:price => 350,
	  	:size => 30,
	  	:is_spicy => false,
	  	:is_veg => false,
	  	:is_best_offer => false,
	  	:description => '/images/01.jpg'

	  Product.create :title => 'Пепперони',
	  	:description => 'Это пицца Пепперони',
	  	:price => 450,
	  	:size => 30,
	  	:is_spicy => false,
	  	:is_veg => false,
	  	:is_best_offer => true,
	  	:description => '/images/02.jpg'

	  Product.create :title => 'Вегетарианская',
	  	:description => 'Это вегетарианская пицца',
	  	:price => 400,
	  	:size => 30,
	  	:is_spicy => false,
	  	:is_veg => true,
	  	:is_best_offer => false,
	  	:description => '/images/03.jpg'
  end
end
