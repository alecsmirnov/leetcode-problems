class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var i = 0
        var j = nums.count - 1

        while i <= j {
            let m = (i + j) / 2

            if nums[m] == target {
                return m
            }

            if target > nums[m] {
                i = m + 1
            } else if target < nums[m] {
                j = m - 1
            }
        }

        return i
    }
}