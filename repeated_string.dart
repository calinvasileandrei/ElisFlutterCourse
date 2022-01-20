void main() {
  const letter= 'a';
  const n= 10;
  const s='aba';
  
  //see how many times the "a" is contained in the first string
  var numberOfLetter = s.split('').where((l) => l == letter).length;
  
  // calculate how many times the string is repeded
  var repetitions = (n/s.length).floor();

  // is the number is odd the string will have a rest
  var restLetterNumber = n % s.length;
  
  // count the remaining letters in the substring
  var numberOfRest = s.substring(0,restLetterNumber).split('').where((l) => l == letter).length;
  
  var result = (numberOfLetter * repetitions) + numberOfRest;
  print(result);

}

