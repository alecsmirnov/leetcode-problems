/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
 
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let headPtr = ListNode()
        var lastNodePtr: ListNode? = headPtr

        var list1Ptr = list1
        var list2Ptr = list2

        while list2Ptr != nil || list1Ptr != nil {
            if list1Ptr == nil {
                lastNodePtr?.next = list2Ptr
                return headPtr.next
            }

            if list2Ptr == nil {
                lastNodePtr?.next = list1Ptr
                return headPtr.next
            }

            if list1Ptr?.val ?? 0 >= list2Ptr?.val ?? 0 {
                lastNodePtr?.next = list2Ptr
                list2Ptr = list2Ptr?.next
            } else {
                lastNodePtr?.next = list1Ptr
                list1Ptr = list1Ptr?.next
            }

            lastNodePtr = lastNodePtr?.next
        }

        return headPtr.next
    }
}