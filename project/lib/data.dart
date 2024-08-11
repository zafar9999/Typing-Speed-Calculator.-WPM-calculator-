import 'dart:math';

const words =
    "sock tap unit vase wind xylophone yarn zebra antelope book cloud drum egg frog grape house ice jar kite lemon mop nut olive paint quilt rock sock tap unit vase wind xylophone yarn zebra antelope basket cup dice egg frog goat hat ink jar kite lime mop nut olive pen quilt rose sock tree umbrella vase wolf xylophone yam zebra antelope ball cat duck egg frog goat hat ink jar kite lime mop nut olive pencil quilt rose sock tree umbrella vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant airplane balloon car dog egg frog grape house ice jar kite lemon moon nut olive pencil quilt rock sock tap unit vase wind xylophone yarn zebra antelope book cloud drum egg frog grape house ice jar kite lemon mop nut olive paint quilt rock sock tap unit vase wind xylophone yarn zebra antelope basket cup dice egg frog goat hat ink jar kite lime mop nut olive pen quilt rose sock tree umbrella vase wolf xylophone yam zebra antelope ball cat duck egg frog goat hat ink jar kite lime mop nut olive pencil quilt rose sock tree umbrella vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant airplane balloon car dog egg frog grape house ice jar kite lemon moon nut olive pencil quilt rock sock tap unit vase wind xylophone yarn zebra antelope book cloud drum egg frog grape house ice jar kite lemon mop nut olive paint quilt rock sock tap unit vase wind xylophone yarn zebra antelope basket cup dice egg frog goat hat ink jar kite lime mop nut olive pen quilt rose sock tree umbrella vase wolf xylophone yam zebra antelope ball cat duck egg frog goat hat ink jar kite lime mop nut olive pencil quilt rose sock tree umbrella vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant airplane balloon car dog egg frog grape house ice jar kite lemon moon nut olive pencil quilt rock sock tap unit vase wind xylophone yarn zebra antelope book cloud drum egg frog grape house ice jar kite lemon mop nut olive paint quilt rock sock tap unit vase wind xylophone yarn zebra antelope basket cup dice egg frog goat hat ink jar kite lime mop nut olive pen quilt rose sock tree umbrella vase wolf xylophone yam zebra antelope ball cat duck egg frog goat hat ink jar kite lime mop nut olive pencil quilt rose sock tree umbrella vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant airplane balloon car dog egg frog grape house ice jar kite lemon moon nut olive pencil quilt rock sock tap unit vase wind xylophone yarn zebra antelope book cloud drum egg frog grape house ice jar kite lemon mop nut olive paint quilt rock sock tap unit vase wind xylophone yarn zebra antelope basket cup dice egg frog goat hat ink jar kite lime mop nut olive pen quilt rose sock tree umbrella vase wolf xylophone yam zebra antelope ball cat duck egg frog goat hat ink jar kite lime mop nut olive pencil quilt rose sock tree umbrella vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant airplane balloon car dog egg frog grape house ice jar kite lemon moon nut olive pencil quilt rock sock tap unit vase wind xylophone yarn zebra antelope book cloud drum egg frog grape house ice jar kite lemon mop nut olive paint quilt rock sock tap unit vase wind xylophone yarn zebra antelope basket cup dice egg frog goat hat ink jar kite lime mop nut olive pen quilt rose sock tree umbrella vase wolf xylophone yam zebra antelope ball cat duck egg frog goat hat ink jar kite lime mop nut olive pencil quilt rose sock tree umbrella vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant apple balloon cat dog egg frog goat hat ice jar kite lime mop nut olive pen quill rose sock tree urn vase wolf xylophone yam zebra ant bat crab doll egg frog goat hat ink jar kite lime mop nut olive pie quill rose sock tea urn vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf xylophone yam zebra ant airplane balloon car dog egg frog grape house ice jar kite lemon moon nut olive pencil quilt rock sock tap unit vase wind xylophone yarn zebra antelope book cloud drum egg frog grape house ice jar kite lemon mop nut olive paint quilt rock sock tap unit vase wind xylophone yarn zebra antelope basket cup dice egg frog goat hat ink jar kite lime mop nut olive pen quilt rose sock tree umbrella vase wolf xylophone yam zebra antelope ball cat duck egg frog goat hat ink jar kite lime mop nut olive pencil quilt rose sock tree umbrella vase wolf xylophone yam zebra ant book cup dice egg frog goat hill ink jar kite lime mop nut olive pie quill rose sock tree urn vase wolf x";

final List<String> splittedBySpace = words.split(" ");
const int max = 350;
final Random random = Random();

List<String> selectRandomWords() {
  List<String> selectedRandomWords = [];

  List<int> usedIndexes = [];

  for (int i = 0; i < max; i++) {
    int randomIndex;

    while (true) {
      randomIndex = random.nextInt(splittedBySpace.length);
      if (!usedIndexes.contains(randomIndex)) break;
    }

    usedIndexes.add(randomIndex);
    selectedRandomWords.add(splittedBySpace[randomIndex]);
  }

  return selectedRandomWords;
}

List<String> breakDownToLetters() {
  List<String> letters = [];
  selectRandomWords().forEach((word) {
    for (var i = 0; i < word.length; i++) {
      letters.add(word[i]);
      if (i == word.length - 1) letters.add(" ");
    }
  });

  return letters.sublist(0, letters.length-1);
}
