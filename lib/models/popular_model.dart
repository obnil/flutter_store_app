import 'package:flutter_store_app/models/user_model.dart';

class Popular {
  final String imageUrl;
  final String desctiption;
  final int price;

  Popular({
    this.imageUrl,
    this.desctiption,
    this.price,
  });
}

// USERS
final User greg =
    User(id: 1, name: 'Liva’s Shop', imageUrl: 'assets/images/greg.jpg');
final User james =
    User(id: 2, name: 'Eric Books', imageUrl: 'assets/images/james.jpg');
final User john =
    User(id: 3, name: 'Shop Center', imageUrl: 'assets/images/john.jpg');
final User olivia =
    User(id: 4, name: 'Sweet Home', imageUrl: 'assets/images/olivia.jpg');

// FAVORITE CONTACTS
List<User> sellers = [greg, james, john, olivia];

// EXAMPLE CHATS ON HOME SCREEN
List<Popular> populars = [
  Popular(
    imageUrl: 'assets/images/lakers-purple.png',
    desctiption: 'The NBA Collection',
    price: 250,
  ),
  Popular(
    imageUrl: 'assets/images/desert_sand_opt.png',
    desctiption: 'Desert Sand',
    price: 120,
  ),
  Popular(
    imageUrl: 'assets/images/crystalblue_opt.png',
    desctiption: 'Crystal Blue',
    price: 100,
  ),
];
