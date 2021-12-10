/// Function for search element index in sorted array of integers.
/// - Parameters:
///   - array: Input array of sorted integers.
///   - element: Integer to search.
/// - Returns: If algorithm found element function return element *index* in array. In others case function return *nil*.
/// - Complexity: O(log n)
func binarySearch(array: [Int], element: Int) -> Int? {
    
    var maxIndex: Int = integers.count - 1
    var minIndex: Int = 0
    
    while minIndex <= maxIndex {
        let middle = (minIndex + maxIndex) / 2
        let guess = integers[middle]
        
        if guess == value {
            return middle
        } else if guess > value {
            maxIndex = middle - 1
        } else if guess < value {
            minIndex = middle + 1
        }
    }
    return nil
}
