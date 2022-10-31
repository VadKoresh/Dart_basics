class MapWordCount {

  static Map<String, int> getMapWordCount(List<String> words) {
    var mapWordCount = <String, int>{};

    for (String word in words) {
      var valueMap = mapWordCount[word];
      if(valueMap != null){
        mapWordCount[word] = valueMap + 1;
      } else {
        mapWordCount[word] = 1;
      }
    }

    return mapWordCount;
  }

}
