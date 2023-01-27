class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numsIndices: [Int: Int] = [:]

        for i in 0..<nums.count {
            if let j = numsIndices[target - nums[i]] {
                return [i, j]
            }
            numsIndices[nums[i]] = i
        }

        return []
    }
} 