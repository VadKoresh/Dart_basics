class TextParserToNum{

  static List<num> parserText(String text){
    List<num> numList = [];

    for(String string in text.split(" ")){
      var numToParse = num.tryParse(string);
      if(numToParse != null){
        numList.add(numToParse);
      }
    }

    return numList;
  }
}