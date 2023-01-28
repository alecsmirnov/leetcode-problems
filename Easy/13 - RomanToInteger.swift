class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanNumerals: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var result = 0
        var lastNumeral = 0

        for character in s {
            let currentNumeral = romanNumerals[character] ?? 0

            if lastNumeral < currentNumeral {
                result -= lastNumeral
            } else {
                result += lastNumeral
            }

            lastNumeral = currentNumeral
        }

        return result + lastNumeral
    }
}