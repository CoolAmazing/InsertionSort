var array = [String]()

func insertionSort(_ array: inout [String]){
    var a = array
    var swap = 0
    var swapCount = 0
    for x in 0..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && temp < a[y - 1] {
            a[y] = a[y - 1]
            y -= 1
            swap += 1
          }
        a[y] = temp
        swapCount += swap
        print("Pass: \(x), Swaps: \(swap)/\(swapCount), Array: \(a)")
        swap = 0
     }
}
