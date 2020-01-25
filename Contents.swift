// mergeSort

import Foundation
func mergeSort(array:[Int]) -> [Int] {
    guard array.count>1 else {
        return array
    }
    let q=array.count/2
    let leftArray=Array(array[0..<q])
    let rightArray=Array(array[q..<array.count])
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

func merge(left:[Int], right:[Int])->[Int] {
    var mergedArray=[Int]()
    var leftPart=left
    var rightPart=right
    while leftPart.count>0 && rightPart.count>0 {
        if leftPart.first!<rightPart.first! {
            mergedArray.append(leftPart.first!)
            leftPart.removeFirst()
        } else {
            mergedArray.append(rightPart.first!)
            rightPart.removeFirst()
        }
    }
    return mergedArray+rightPart+leftPart
}

var myArray:[Int]=[5, -1, 0, 4, -2, 1, -3, 2, -5, 3, -4]


print(mergeSort(array: myArray))
