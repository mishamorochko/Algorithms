/// Function for search element index in sorted array of integers.
/// - Parameters:
///   - array: Input array of sorted integers.
///   - element: Integer to search.
/// - Returns: If algorithm found element function return element *index* in array. In others case function return *nil*.
/// - Complexity: O(log n)
func binarySearch(array: [Int], element: Int) -> Int? {
    
    var minArraySize: Int = 0
    var maxArraySize: Int = array.count
    
    while minArraySize <= maxArraySize {
        let middleIndex = (minArraySize + maxArraySize) / 2
        
        if array[middleIndex] == element {
            return middleIndex
        } else if array[middleIndex] > element {
            maxArraySize = middleIndex
        } else if array[middleIndex] < element {
            minArraySize = middleIndex
        }
    }
    return nil
}
