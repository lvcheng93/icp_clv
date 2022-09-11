import Array "mo:base/Array";
import Int "mo:base/Int";

actor {
  func partition(array: [var Int], low: Int, high: Int): Int {
    var i : Int = low - 1;
    var pivot : Int = array[Int.abs(high)];
    var j : Int = low;
    var temp : Int = 0;
    while (j < high) {
      if(array[Int.abs(j)] <= pivot) {
        i := i + 1;
        temp := array[Int.abs(i)];
        array[Int.abs(i)] := array[Int.abs(j)];
        array[Int.abs(j)] := temp;
      };
      j := j + 1;
    };
    temp := array[Int.abs(high)];
    array[Int.abs(high)] := array[Int.abs(i + 1)];
    array[Int.abs(i + 1)] := temp;
    Int.abs(i + 1);
  };

  func quicksort(arr: [var Int], low: Int, high: Int): Int {
    if(low < high) {
      var pi : Int = partition(arr, low, high);
      ignore quicksort(arr, low, pi - 1);
      ignore quicksort(arr, pi + 1, high);
    };
    low;
  };

  public func qsort(arr: [Int]): async [Int] {
    var array : [var Int] = Array.thaw(arr);
    ignore quicksort(array, 0, array.size() - 1);
    return Array.freeze(array);
  };
};
