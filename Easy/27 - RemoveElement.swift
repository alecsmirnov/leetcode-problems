class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var lastPosition = 0

        for number in nums {
            if number != val {
                nums[lastPosition] = number
                lastPosition += 1
            }
        }

        return lastPosition
    }
}