void main() {
  const STEPS_NUMBER = 8;
  const STEPS_STRING = "UDDDUDUU";

  bool validStepNumber = checkStepsNumbers(STEPS_NUMBER);
  bool validStepsString = checkStepsString(STEPS_STRING, STEPS_NUMBER);

  if (validStepNumber && validStepsString) {
    runCalculation(STEPS_STRING, STEPS_NUMBER);
  }
}

bool checkStepsNumbers(int steps) {
  const MAX = 1000000;
  const MIN = 2;

  if (steps > MIN && steps < MAX) {
    return true;
  }

  print("Error the number provided is not valid!");
  return false;
}

bool checkStepsString(String stepsString, int stepsNumber) {
  const VALID_CHARACTERS = ['U', 'D'];

  if (stepsString.length != stepsNumber) {
    print("Error the number provided and the string are not matching!");
    return false;
  }

  bool valid = true;
  for (int i = 0; i < stepsString.length; i++) {
    if (!VALID_CHARACTERS.contains(stepsString[i])) {
      print("Error the string contains unknow characters!");  
      valid = false;
      break;
    }
  }

  return valid;
}

void runCalculation(String stepsString, int stepsNumber) {
  const SEA_LEVEL = 0;
  
  int currentLevel = 0;
  int valley = 0;
  bool goesValley = false;
  
  for (int i = 0; i < stepsNumber; i++) {

    if (stepsString[i] == 'U') {
      currentLevel++;
      if(goesValley && currentLevel == SEA_LEVEL){
        valley++;
        goesValley=false;
      }

    }

    if (stepsString[i] == 'D') {
      currentLevel--;
      if (currentLevel < SEA_LEVEL) {
        goesValley = true;
      }
    }
  }
  
  print(valley);
}

