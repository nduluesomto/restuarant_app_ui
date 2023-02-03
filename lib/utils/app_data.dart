import 'package:restuarant_app_ui/utils/app_assets.dart';

import '../models/food_model.dart';

const List<FoodModel> foodList = [
  FoodModel(
      id: 1,
      name: 'Pizza',
      price: 2000,
      seller: 'Dodo Pizza',
      location: 'Chornaya R.',
      rating: '4.2',
      time: '15-20',
      desc:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis porttitor rhoncus urna non posuere. Proin euismod, felis quis convallis bibendum, dolor diam pulvinar enim, nec mattis ante nisl posuere sem. Fusce consectetur diam nec ornare maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultricies tellus at tristique gravida.',
      imageUrl: AppAssets.pizza),
  FoodModel(
      id: 2,
      name: 'Burger',
      price: 1400,
      seller: "",
      location: "Petrogradskaya",
      rating: "4.8",
      time: "5-10",
      desc:
          "Fusce ut metus auctor, pharetra sem sit amet, porta nisi. Phasellus in eros id nisi facilisis lacinia. Suspendisse mattis libero ac ligula porta, nec pharetra justo euismod. In gravida molestie ante, nec finibus nisi hendrerit non. Quisque posuere condimentum lobortis. Ut at congue massa. Nullam consequat ultrices augue, vel ullamcorper mi malesuada ac. ",
      imageUrl: AppAssets.burger),
  // FoodModel(
  //     id: 3,
  //     name: "ExtraBig Burger",
  //     price: 3000,
  //     seller: "",
  //     location: "Pioneskaya",
  //     rating: "4.5",
  //     time: "20-30",
  //     desc: "",
  //     imageUrl: AppAssets.burgerBig),
  FoodModel(
      id: 4,
      name: "Grilled Chicken",
      price: 2000,
      seller: "KFC",
      location: "Nevsky Prospect",
      rating: "4.9",
      time: "5-15",
      desc:
          "Nam aliquam arcu nibh, a vestibulum purus eleifend ac. Praesent ut augue vel erat sagittis posuere eu sed felis. Quisque vitae dolor non leo faucibus interdum. Morbi quis dui eget sapien varius ornare ut quis tortor. Integer bibendum nisi non nulla scelerisque maximus. Nulla sit amet sollicitudin metus. ",
      imageUrl: AppAssets.chicken),
  FoodModel(
      id: 5,
      name: "Pancake",
      price: 500,
      seller: "",
      location: "Baltiskaya",
      rating: "3.9",
      time: "10-20",
      desc:
          "Aliquam ac elit eu justo ultricies pretium a vitae risus. Ut viverra pretium tincidunt. Integer egestas erat vel dui hendrerit commodo. Nam porta tempus risus eu pellentesque. Nunc pulvinar erat id gravida iaculis. Suspendisse dui diam, mattis id massa et, tempor tincidunt velit.",
      imageUrl: AppAssets.pancake),
  FoodModel(
      id: 6,
      name: "Burche Soup",
      price: 900,
      seller: "",
      location: "Nevsky Prospect",
      rating: "4.6",
      time: "10-15",
      desc:
          "In feugiat sit amet orci nec viverra. Praesent auctor est orci. Cras at mi a ante congue vulputate. Sed mauris elit, faucibus a velit a, tempus feugiat enim. Mauris semper id libero vel facilisis. ",
      imageUrl: AppAssets.soup),
  FoodModel(
      id: 7,
      name: "Sushi",
      price: 280,
      seller: "",
      location: "Sennaya Ploschad",
      rating: "3.9",
      time: "5-20",
      desc:
          "Donec feugiat dolor sit amet gravida accumsan. Praesent semper ante nec erat interdum pulvinar. Duis eleifend imperdiet lacus, in sodales leo suscipit ut. Praesent faucibus lorem quis nisi blandit accumsan.",
      imageUrl: AppAssets.sushi),
  FoodModel(
      id: 8,
      name: "Sushi Special",
      price: 450,
      seller: '',
      location: "Gostiny Dvor",
      rating: "4.7",
      time: "10-15",
      desc:
          "Praesent dignissim pulvinar velit nec feugiat. Nulla ultricies id nibh efficitur semper. Aenean pharetra ex sit amet efficitur interdum. Vestibulum et enim neque. Nam at est nec libero convallis hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mattis dignissim mattis.",
      imageUrl: AppAssets.sushiModern),
  FoodModel(
      id: 9,
      name: "Taco",
      price: 1500,
      seller: "",
      location: "Lesnaya",
      rating: "3.6",
      time: "15-25",
      desc:
          "Nulla ultrices purus in lorem lacinia blandit. Quisque vestibulum libero ut arcu congue dignissim. Quisque mi urna, pretium eu facilisis sed, fringilla eget metus. Nam scelerisque id magna sit amet volutpat. Aliquam sodales mi metus, quis hendrerit lectus volutpat et.",
      imageUrl: AppAssets.taco),
];
