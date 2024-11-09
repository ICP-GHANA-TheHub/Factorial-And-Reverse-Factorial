import Debug "mo:base/Debug";
import Float "mo:base/Float";

actor {
    // function to calculate factorial
    public func factorial(number: Float): async Float {
      var result: Float = 0;
      var i: Float = (number - 1);
        if (number < 0){
          return -1;
        }
        else if (number == 0) {
            return 1;
        } 
        else {
            return number * (await factorial(number - 1.0));
        };
    };

    public func reverseFactorial(target: Float): async Float {
        if (target < 1.0) {
            return -1.0; // Factorial is not defined for numbers less than 1
        };
        var num: Float = 1.0;
        var fact: Float = 1.0;
        while (fact < target) {
            num += 1.0;
            fact *= num;
        };
        if (fact == target) {
            return num;
        } else {
            return -1.0; 
        }}
};