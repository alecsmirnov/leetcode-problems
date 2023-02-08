class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x > 1 else {
            return x
        }

        var i = 1
        var j = x / 2

        repeat {
            let mid = (i + j) / 2

            if mid * mid == x {
                return mid
            }

            if mid * mid > x {
                j = mid - 1
            } else if mid * mid < x {
                i = mid + 1
            }
        } while i <= j

        return j
    }
}