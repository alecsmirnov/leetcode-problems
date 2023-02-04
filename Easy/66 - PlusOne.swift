class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits

        for i in stride(from: result.count - 1, through: 0, by: -1) {
            if digits[i] == 9 {
                result[i] = 0
            } else {
                result[i] += 1

                return result
            }
        }

        return [1] + result
    }
}