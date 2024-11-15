import Float "mo:base/Float";
import Int "mo:base/Int";

actor Calculator {
  // Variable to store the current value
  private var counter : Float = 0.0;

  // Add x to counter
  // shared = value not changed when open in another tab
  public shared func add(x : Float) : async Float {
    counter += x;
    counter;
  };

  // Subtract x from counter
  public shared func substract(x : Float) : async Float {
    counter -= x;
    counter;
  };

  // Multiply counter by x
  public shared func multiply(x : Float) : async Float {
    counter *= x;
    counter;
  };

  // Divide counter by x, returns null if x is 0
  public shared func divide(x : Float) : async ?Float {
    if (x == 0.0) {
      null;
    } else {
      counter /= x;
      ?counter;
    };
  };

  // Reset counter to 0
  public shared func reset() : async () {
    counter := 0.0;
  };

  // Query the current value of counter

  // Raise counter to power x (pangkat)
  public shared func power(x : Float) : async Float {
    counter := Float.pow(counter, x);
    counter;
  };

  // Calculate square root of counter
  public shared func sqrt() : async Float {
    counter := Float.sqrt(counter);
    counter;
  };

  // Get floor value of counter (pembulatan ke bawah)
  public shared func floor() : async Int {
    Float.toInt(Float.floor(counter));
  };
};
