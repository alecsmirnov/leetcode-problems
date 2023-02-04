class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        var previousTen = 1

        for i in stride(from: result.count - 1, through: 0, by: -1) {
            result[i] = (digits[i] + previousTen) % 10
            previousTen = (digits[i] + previousTen) / 10

            if previousTen == 0 {
                return result
            }
        }

        return previousTen == 1 ? [1] + result : result
    }
}