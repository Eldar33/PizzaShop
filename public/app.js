
function something() {

	var x = window.localStorage.getItem('x');

	x = x * 1 + 1;

	alert(x);

	window.localStorage.setItem('x', x)
	
}

function add_to_cart(product_id) {
	var key = 'product_' + product_id
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);
}

function get_cnt_products() {
	var total = 0;
	for (var i = 0; i < window.localStorage.length; i++) {

		key = window.localStorage.key(i);
		total = total + window.localStorage.getItem(key) * 1;
	}
	alert('В корзине ' + total + ' товаров');
}




