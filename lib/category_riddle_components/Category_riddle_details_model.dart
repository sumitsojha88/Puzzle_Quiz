class Riddle {
  final String name;
  final String type;
  final String shortDesc;
  final String desc;
  final String image;
 // final int rate;
  final int level;

  Riddle(
      {this.name,
        this.type,
        this.shortDesc,
        this.desc,
        this.image,
      //  this.rate,
        this.level});
}

List<Riddle> menu = [
  Riddle(
      name: "Classic",
      type: 'Riddle',
      shortDesc: "These are the riddles that make the rounds",
      desc:
      "A Riddle judged over a period of time to be of the highest quality and outstanding of its kind. These oldies are definitely goodies!You may remember some of these classic riddles from your childhood and now you can stump and delight your Friends with them! ",
      image: "assets/images/clock-logo.jpg",
      level: 22),
  Riddle(
      name: "Macchiato",
      type: "Hot",
      shortDesc: "Espresso dengan milky dan gurih.",
      desc:
      "Take these clues and deduct what we are describing. What in the world could it be? Tell me what is IT?",
      image: "assets/images/clock-logo.jpg",
      level: 22000),
  Riddle(
      name: "Espresso",
      type: "Hot",
      shortDesc: "Ekstrak kopi dengan buih putih",
      desc:
      "Minuman kopi paling dasar ini biasanya disajikan dalam demitasse alias cangkir khusus espresso berukuran 30 mililiter (satu shot) sampai 118 mililiter. Espresso bertekstur pekat dan pahit, dengan buih putih alias crema di atasnya yang terbentuk dari tekanan minyak dalam bijih kopi.",
      image: "assets/images/clock-logo.jpg",
      level: 12000),
  Riddle(
      name: "Americano",
      type: "Hot",
      shortDesc: "Espresso dengan air panas",
      desc:
      "Americano terdiri dari satu shot espresso yang dituangkan dalam cangkir berukuran 178 mililiter yang dicampur dengan air panas hingga memenuhi gelas. Jenis lainnya adalah doppio, yakni segelas Americano dengan dua shot espresso. Minuman ini kerap disajikan dalam panas maupun dingin yang disebut iced Americano.",
      image: "assets/images/clock-logo.jpg",
      level: 15000),
];