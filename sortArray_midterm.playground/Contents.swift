var array1 = [2,3,4]
var array2 = [7,6,5]



func sortArray(array1:[Int],array2:[Int])->[Int]{
var array3 = array1 + array2

var indexNum: Int = array3.count - 1
//print(indexNum)
var temp: Int
var n = 0
for n in 0...indexNum{
    for (n1) in 0...indexNum{
    if array3[n] < array3[n1]{
        
       
        print(array3)
        print(array3[n1])
        print(array3[n])
      temp = array3[n]
        
       //print(temp)

        
        array3[n] = array3[n1]
        print(array3[n1])
       print(array3)
        
        array3[n1] = temp  //將 array3[n]的值 第一次為index 0 複寫 array3[n1]的值 第一次為 index 1 此動作為交換
        
       print(array3[n1])
        print(array3)
        print("THE END")
    }
    }
    
}
for m in 0...indexNum{
    if m <= indexNum-1{
        if array3[indexNum-m] == array3[indexNum-m-1]{
            array3.remove(at: indexNum-m)
            indexNum = indexNum - 1
        }
    }
}


return array3

}


sortArray(array1: [3,3,4,5,6], array2: [2,4,5,6,7])




