class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var parsedX = x
        var reversedX = 0
        
        while parsedX > 0 {
            let lastDigitX = parsedX % 10
            
            reversedX = reversedX * 10 + lastDigitX
            parsedX /= 10
        }

        return x == reversedX
    }
}