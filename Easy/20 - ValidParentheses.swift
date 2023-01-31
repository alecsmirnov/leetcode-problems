class Solution {
    func isValid(_ s: String) -> Bool {
        let parentheses: [Character: Character] = [
            ")": "(",
            "}": "{",
            "]": "["
        ]

        var openingParenthesesStack: [Character] = []

        for character in s {
            if character == "(" || character == "{" || character == "[" {
                openingParenthesesStack.append(character)
            } else {
                guard let openingParenthesis = openingParenthesesStack.popLast(),
                      openingParenthesis == parentheses[character]
                else {
                    return false
                }
            }
        }

        return openingParenthesesStack.isEmpty
    }
}