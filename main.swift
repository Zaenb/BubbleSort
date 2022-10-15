

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {                                                                                                           
                                                                                                                                                                                   
       let temp = integers[firstIndex]                                                                                                                                             
      integers[firstIndex] = integers[secondIndex]                                                                                                                                
       integers[secondIndex] = temp                                                                                                                                                
   }                                                                                                                                                                               
  func bubbleSort(unsortedIntegers: [Int]) -> [Int]{                                                                                                                              
                                                                                                                                                                                  
     var totalSwap = 0                                                                                                                                                           
      var passCount = 0       
       var sortingIntegers = unsortedIntegers                                                                                                                                      
       var swapCountPerPass: Int = 0                                                                                                                                               
                                                                                                                                                                                  
     print("Pass: \(passCount), Swaps: \(swapCountPerPass)/\(totalSwap),", terminator: " ")                                                                                      
     print("Array: \(unsortedIntegers)")                                                                                                                                         
      repeat {                                                                                                                                                                    
         swapCountPerPass = 0                                                                                                                                                    
          //var sortingIntegers = unsortedIntegers                                                                                                                                
          for index in 0 ..< sortingIntegers.count - 1 {                                                                                                                          
              let thisIndex = index                                                                                                                                               
               let nextIndex = index + 1                                                                                                                                           
               let thisElement = sortingIntegers[thisIndex]                                                                                                                        
               let nextElement = sortingIntegers[nextIndex]                                                                                                                        
               if thisElement > nextElement {                                                                                                                                      
                   swap(integers: &sortingIntegers, firstIndex: thisIndex, secondIndex: nextIndex)                                                                                 
                 swapCountPerPass += 1                                                                                                                                           
                   totalSwap += 1                                                                                                                                                  
              }                                                                                                                                                                   
                                                                                                                                                                                  
                                                                                                                                                                                  
          }                                                                                                                                                                       
        passCount += 1 
          print("Pass: \(passCount), Swaps: \(swapCountPerPass)/\(totalSwap),", terminator: " ")                                                                                  
         print("Array: \(sortingIntegers)")                                                                                                                                      
                                                                                                                                                                                 
                                                                                                                                                                                 
      } while swapCountPerPass != 0                                                                                                                                               
                                                                                                                                                                                  
       return sortingIntegers                                                                                                                                                      
 }                                                                                                                                                                               
  let sortedIntegers = bubbleSort(unsortedIntegers: unsortedIntegers)                                                                                                             
  //print ("(sortedIntegers)")                     
