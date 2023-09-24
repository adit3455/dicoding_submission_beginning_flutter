class Fruit {
  final String name;
  final double price;
  final String image;
  final String description;

  Fruit(
      {required this.name,
      required this.price,
      required this.image,
      required this.description});
}

List<Fruit> fruits = <Fruit>[
  Fruit(
      name: "Orange",
      price: 5000,
      image: "https://cdn.britannica.com/24/174524-050-A851D3F2/Oranges.jpg",
      description:
          "Oranges are round orange-coloured fruit that grow on a tree which can reach 10 metres (33 ft) high. Orange trees have dark green shiny leaves and small white flowers with five petals. The flowers smell very sweet which attracts many bees. An orange has a tough shiny orange skin that holds acid in outside layer."),
  Fruit(
      name: "Apple",
      image:
          "https://thumbs.dreamstime.com/b/red-apple-isolated-clipping-path-19130134.jpg",
      price: 7000,
      description:
          "An apple is a round, edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found."),
  Fruit(
      name: "Grape",
      price: 10000,
      image:
          "https://www.eckes-granini.com/fileadmin/eckesgranini/eckes-granini.com/05-best-of-fruit/fruechte/titelbilder/fruechte-titelbilder-traube.jpg",
      description:
          "A grape is a fruit, botanically a berry, of genus Vitis and family Vitaceae. Grapes grow in clusters of 15–300 in different colors (crimson, black, dark blue, yellow, green, orange, pink, and white) and are specifically a nonclimacteric type and deciduous crop."),
  Fruit(
      name: "Guava",
      image:
          "https://cdn.britannica.com/59/139059-050-30794D53/Guava-fruit.jpg",
      price: 4000,
      description:
          "Guava is a fast growing evergreen shrub or small tree that can grow to a height of 3-10 m. It has a shallow root system. Guava produces low drooping branches from the base and suckers from the roots. The trunk is slender, 20 cm in diameter, covered with a smooth green to red brown bark that peels off in thin fla"),
  Fruit(
      name: "Mango",
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Mangos_-_single_and_halved.jpg/1200px-Mangos_-_single_and_halved.jpg',
      price: 6000,
      description:
          "Mango fruit is roughly oval in shape, with uneven sides. The fruit is a drupe, with an outer flesh surrounding a stone. The flesh is soft and yellow-orange in color. The fruit's skin ranges from yellow-green to red.")
];
