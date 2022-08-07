class GroceryItem {
  String? name, img, price;
  dynamic? quantity;

  GroceryItem({this.name, this.img, this.price, this.quantity});

  static List<GroceryItem> itemList() {
    return [
      GroceryItem(
          img: 'images/rice.jpg', name: 'Rice', price: '100', quantity: 5),
      GroceryItem(
          img: 'images/onion.jpg', name: 'Onions', price: '40', quantity: 1),
      GroceryItem(
          img: 'images/oil.jpg', name: 'Oil', price: '900', quantity: 4),
      GroceryItem(
          img: 'images/meat.jpg', name: 'Meats', price: '750', quantity: 7),
      GroceryItem(
          img: 'images/lentil.jpg',
          name: 'Lentils',
          price: '150',
          quantity: 15),
      GroceryItem(
          img: 'images/juice.jpg', name: 'Jucies', price: '200', quantity: 10),
      GroceryItem(
          img: 'images/fruit.jpg', name: 'Fruits', price: '350', quantity: 2),
      GroceryItem(
          img: 'images/baverage.jpg',
          name: 'Baverage',
          price: '80',
          quantity: 5),
    ];
  }
}
