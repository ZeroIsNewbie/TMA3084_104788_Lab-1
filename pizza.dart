import 'dart:io';

void main() {
  String? opt = 'y';
  while (opt == 'y' || opt == 'Y') {
    int price = 0;
    print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');
    print('Please enter you pizza size (small, medium, or large): ');
    String? size = stdin.readLineSync();
    print('How many pizzas do you want?');
    int num = int.parse(stdin.readLineSync()!);

    switch (size) {
      case 'small':
        price = 5;
        break;
      case 'medium':
        price = 7;
        break;
      case 'large':
        price = 10;
        break;
      default:
        print('Invalid pizza size. Please try again.');
    }
    int total = price * num;
    print('Your Total Payment is: $total');
    print('Do you want to start a new order? (y/n):');
    opt = stdin.readLineSync();
  }
}
