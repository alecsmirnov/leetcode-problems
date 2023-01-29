class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let firstString = strs.first else {
            return ""
        }

        var result = ""

        for i in firstString.indices {
            for j in 1..<strs.count {
                guard i < strs[j].endIndex, firstString[i] == strs[j][i] else {
                    return result
                }
            }

            result.append(firstString[i])
        }

        return result
    }
}