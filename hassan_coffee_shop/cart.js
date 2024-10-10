
let cart = [];

function addToCart(product) {
    cart.push(product);
    alert(product + " added to cart!");
}

function checkout() {
    if (cart.length === 0) {
        alert("Your cart is empty!");
    } else {
        alert("Proceeding to checkout with: " + cart.join(", "));
        cart = []; // Empty the cart
    }
}
