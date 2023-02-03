class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var length = 0

        /*
        var endIndex = s.index(before: s.endIndex)

        while endIndex != s.startIndex {
            if s[endIndex] != " " {
                length += 1
            } else if length > 0 {
                return length
            }

            endIndex = s.index(before: endIndex)
        }
        */

        /*
         Reverse a collection without allocating new space by calling reversed() method.
         Wraps an underlying collection and provides access to its elements in reverse order.

         reversed() method complexity: O(1)
        */
        let reversedString = s.reversed()

        for character in reversedString {
            if character != " " {
                length += 1
            } else if length > 0 {
                return length
            }
        }

        return length
    }
}