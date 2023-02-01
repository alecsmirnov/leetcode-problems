class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }

        var max = nums.first ?? 0
        var iMax = 1

        for i in iMax..<nums.count {
            if nums[i] > max {
                max = nums[i]
                nums[iMax] = max

                iMax += 1
            }
        }

        return iMax
    }
}