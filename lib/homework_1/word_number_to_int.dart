class WordNumberToInt{

  static final Map<String, int> _mapInt = {"one": 1, "two": 2, "three": 3,
    "four": 4, "five": 5, "six": 6,
    "seven": 7, "eight": 8, "nine": 9};


  static Set<int> wordNumberToInt(String words){
    Set<int> setInteger = {};

    for(String word in words.split(", ")){
      if(_mapInt.containsKey(word)){
        setInteger.add(_mapInt[word]!);
      }
    }

    return setInteger;
  }
}