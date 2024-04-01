//
//  main.swift
//  lab6-task5
//
//  Created by Алина on 1.04.24.
//

import Foundation

func printDictionary(d: Dictionary<String, Int>)-> Void{
    for key in d.keys{
        print("\(key): \(d[key]!)")
    }
}

func enterMenuItem()->Int{
    if let input = readLine(){
        if let num = Int(input){
            return num
        }
    }
    return -1
}

func printSorted(arr: Array<(Any, Any)>)->Void{
    for el in arr{
        print("\(el.0): \(el.1)")
    }
}

func main()->Void{
    var enrolee = Dictionary<String, Int>()
    var vuz:Dictionary<String, Int> = ["BSU":399, "BSUIR":250, "BSTU": 200, "BSEU":230]
    print("-------------Menu-------------")
    while true{
        print("Choose an action: \n\t1)Count dictionary size\n\t2)Output element by key\n\t3)Output all elements\n\t4)Add element\n\t5)Modify value by key\n\t6) Sort dictionary\n\t7)Delete elements\n\t8)Exit");
        var choice: Int = -1
        choice = enterMenuItem()
        switch choice{
        case 1:
            print("Count dictionary size for:\n\t1)Enrolee dictionary\n\t2)Vuz dictionary")
            var count: Int = 0
            switch enterMenuItem() {
            case 1:
                count = enrolee.count
                break
            case 2:
                count = vuz.count
                break
            default:
                print("Wrong choice. Operation cancelled.")
            }
                print("Choosen dictionary size is \(count)")
                break;
            
        case 2:
            print("Enter the key:")
            let key = readLine()
print("Search value in:\n\t1 Enrolee dictionary\n\t2)Vuz dictionary")
            print("Result:")
            switch enterMenuItem() {
            case 1:
                print("\(key!): \(enrolee[key!]!)")
                break
            case 2:
                print("\(key!): \(vuz[key!]!)")
                break
            default:
                print("Wrong choice. Operation cancelled.")
            }
                break;
            case 3:
        print("Output:\n\t1) Enrolee dictionary\n\t2) Vuz dictionary")
                switch enterMenuItem() {
                case 1:
                    printDictionary(d: enrolee)
                    break
                case 2:
                    printDictionary(d: vuz)
                    break
                default:
                    print("Wrong choice. Operation cancelled.")
                }
                    break;
                case 4:
                    print("Choose the dictionary:\n\t1) Enrolee dictionary\n\t2)Vuz dictionary")
                    choice = enterMenuItem()
                    print("Enter the key:")
                    let key = readLine()
                    switch choice {
                    case 1:
                        print("Enter the enrolee's avarage mark:")
                        var avarage_mark: Int = 0
                        if let input = readLine(){
                            if let d = Int(input) {
                                avarage_mark = d
                            }
                        }
                                enrolee[key!] = avarage_mark
                                break
                            case 2:
                        print("Enter the passing score:")
                        if let passing_score = readLine(), let score = Int(passing_score) {
                            vuz[key!] = score
                            print("Passing score updated successfully.")
                        } else {
                            print("Invalid input. Please enter a valid integer.")
                        }

                                break
                            default:
                                print("Wrong choice. Operation cancelled.")
                    }
                                
                                break;
                            case 5:
                                print("Choose the dictionary:\n\t1) Enrolee dictionary\n\t2) Vuz dictionary")
                                choice = enterMenuItem()
                                print("Enter the key:")
                                let key = readLine()
                                switch choice {
                                case 1:
                                    print("Enther the updated enrolee's avarage_mark:")
                                    var avarage_mark: Int = 0
                                    if let input = readLine(){
                                        if let d = Int(input) {
                                            avarage_mark = d
                                        }
                                    }
                                        
                                    enrolee.updateValue(avarage_mark, forKey: key!)
                                        break
                                    case 2:
                                    print("Enter the updated passing score:")
                                    if let passingScoreString = readLine(), let passingScore = Int(passingScoreString) {
                                        vuz.updateValue(passingScore, forKey: key!)
                                        print("Passing score updated successfully.")
                                    } else {
                                        print("Invalid input. Please enter a valid integer.")
                                    }

                                        break
                                    default:
                        print("Wrong choice. Operation cancelled.")
                                }
                                        break;
                                        
                                    case 6:
                                    print("Sort by:\n\t1)Key\n\t2)Value")
                                    choice = enterMenuItem()
                                    print("Choose dictionary:\n\t1)Enrolee dictionary\n\t2) Vuz dictionary")
                                    switch enterMenuItem() {
                                    case 1:
                                        switch choice {
                                        case 1:
                                            let sorted = enrolee.sorted(by: {$0.key < $1.key})
                                            printSorted(arr: sorted)
                                            break;
                                        case 2:
                                            let sorted = enrolee.sorted(by: {$0.value < $1.value})
                                            printSorted(arr: sorted)
                                            break;
                                        default:
                                            print("Wrong choice. Operation cancelled.")
                                        }
                                            break;
                                        case 2:
                                            switch choice {
                                            case 1:
                                                let sorted = vuz.sorted(by: {$0.key < $1.key})
                                                printSorted(arr: sorted)
                                                break;
                                            case 2:
                                                let sorted = vuz.sorted(by: {$0.value < $1.value})
                                                printSorted(arr: sorted)
                                                break;
                                            default:
                                                print("Wrong choice. Operation cancelled.")
                                            }
                                                break;
                                            default:
                                                print("Wrong choice. Operation cancelled.")
                                    }
                                                break;
                                            case 7:
                                                print("Remove:\n\t1)All elements\n\t2)Element by key")
            
                                                switch enterMenuItem() {
                                                case 1:
                                                    print("Choose dictionary:\n\t1)Enrolee dictionary\n\t2) Vuz dictionary")
                                                    switch enterMenuItem() {
                                                    case 1:
                                                        enrolee.removeAll()
                                                        break;
                                                    case 2:
                                                        vuz.removeAll()
                                                        break;
                                                    default:
                                                        print("Wrong choice. Operation cancelled.")
                                                    }
                                                        break;
                                                    case 2:
                                                        print("Enter the key:")
                                                        let key = readLine()
                                                        print("Choose dictionary:\n\t1)Enrolee dictionary\n\t2)Vuz dictionary")
                                                        switch enterMenuItem() {
                                                        case 1:
                                                            enrolee.removeValue(forKey: key!)
                                                            break;
                                                        case 2:
                                                            vuz.removeValue(forKey: key!)
                                                            break;
                                                        default:
                                                            print("Wrong choice. Operation cancelled.")
                                                        }
                                                            break;
                                                        default:
                                                            print("Wrong choice. Operation cancelled.")
                                                }
                                                            break;
                                                        case 8:
                                                            print("====== [ Programm Finished ] == ")
                                                                   return
                                                                   default:
                                                            print("Wrong input")
        
                                                                   }
    }
}
                                                    
                                                                   
                                                                main()
           

