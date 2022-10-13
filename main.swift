var words = [String]()

func readWords() -> [String] {
    var line : String?
    repeat {
        line = readLine()?.lowercased()
        if line != nil {
            words.append(line!)
        }
    } while line != nil
    return words
}

func insertionSort(_ array: [String]) -> [String]{
    var a = readWords()
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && temp < a[y - 1] {
            a[y] = a[y - 1]
            y -= 1
          }
        a[y] = temp
    }
    return a
}

let a = insertionSort(words)

for x in a {
    print(x)
}
