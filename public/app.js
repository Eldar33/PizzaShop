

function add_to_cart(product_id) {
	var key = 'product_' + product_id
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);

	// alert('В корзине ' + get_number_product_in_cart() + ' товаров');
	update_orders_input();
	update_orders_button();
}

function get_number_product_in_cart() {
	var total = 0;
	for (var i = 0; i < window.localStorage.length; i++) {
		key = window.localStorage.key(i);
		if (key.indexOf('product_') == 0){			
			total = total + window.localStorage.getItem(key) * 1;
		}
	}
	
	return total
}

function update_orders_input(){
	var orders = get_cart_orders();	
	$('#orders_input').val(orders);	
}

function update_orders_button(){
	var cnt = get_number_product_in_cart();
	$('#orders_button').val('Корзина (' + cnt + ')');
}

function get_cart_orders() {

	var result = '';
	for (var i = 0; i < window.localStorage.length; i++) {
		key = window.localStorage.key(i);

		if (key.indexOf('product_') == 0) {
			value = window.localStorage.getItem(key);
			result = result + key + '=' + value;
			if (i < window.localStorage.length - 1){
				result = result + ','
			}
		}
	}

	// alert(result);
	return result;
}

function clear_cart() {
	window.localStorage.clear();
	update_orders_input();
	update_orders_button();

	$('#cart').text('Ваша корзина пуста!')
}



