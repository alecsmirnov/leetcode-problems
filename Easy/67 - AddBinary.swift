class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var maxString: String
        var minString: String

        if a.count > b.count {
            maxString = a
            minString = b
        } else {
            maxString = b
            minString = a
        }

        var previousBit: Character = "0"

        var maxEndIndex = maxString.endIndex
        var minEndIndex = minString.endIndex

        repeat {
            maxEndIndex = maxString.index(before: maxEndIndex)
            minEndIndex = minString.index(before: minEndIndex)

            switch (minString[minEndIndex], maxString[maxEndIndex], previousBit) {
                case ("1", "0", "0"),
                     ("0", "1", "0"),
                     ("0", "0", "1"):
                    maxString.remove(at: maxEndIndex)
                    maxString.insert("1", at: maxEndIndex)

                    previousBit = "0"
                case ("1", "1", "0"),
                     ("1", "0", "1"),
                     ("0", "1", "1"):
                    maxString.remove(at: maxEndIndex)
                    maxString.insert("0", at: maxEndIndex)

                    previousBit = "1"
                case ("1", "1", "1"):
                    maxString.remove(at: maxEndIndex)
                    maxString.insert("1", at: maxEndIndex)

                    previousBit = "1"
                default:
                    previousBit = "0"
            }
        } while minEndIndex != minString.startIndex

        guard previousBit == "1" else {
            return maxString
        }

        while maxEndIndex != maxString.startIndex {
            maxEndIndex = maxString.index(before: maxEndIndex)

            if maxString[maxEndIndex] == "1" {
                maxString.remove(at: maxEndIndex)
                maxString.insert("0", at: maxEndIndex)
            } else {
                maxString.remove(at: maxEndIndex)
                maxString.insert("1", at: maxEndIndex)

                return maxString
            }
        }

        maxString.insert("1", at: maxEndIndex)
        return maxString
    }
}