//
//  ViewController.swift
//  Clouser_Part_1
//
//  Created by Shiju Varghese on 30/06/18.
//  Copyright © 2018 Shiju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  //MARK:- Clouser:: Clouser is a function without name and func keyword
  //MARK:- Syntax:- () -> ()

  override func viewDidLoad() {
    super.viewDidLoad()
    
//MARK: PART- 1 - Using INT Type
    //print(addTwoNumbers(number1: 10, number2: 20))

    //1:::
//    let addFunc = addTwoNumbers
//
//    print(addFunc(10,20))
    
    //2::
    
   // integrateClousers_First()
    
    //3::
    
    // integrateClousers_Second()
    
//MARK: PART- 2 - Using String Type

   // print(callString())
    
    print(clouserWithString())
    
  }
  
}

//MARK:- Int Type

extension ViewController {
  
  // Normal Func - Add Two Numbers
  func addTwoNumbers(number1:Int, number2: Int) -> Int {
    
    return number1 + number2
  }
  
  //Mark: Add Clouser -> 1
  func integrateClousers_First() {
    
    // Type Definination Part -> let addClousers:(Int, Int) -> Int
    
    /*
     Clousers Part_1:
     {
      (number1: Int, number2: Int) in
     
      return number1 + number2
     }
     
     in -> Seprator b/w parameters block and return block
     */
    
    let addClousers:(Int, Int) -> Int = { (number1: Int, number2: Int) in
      
      return number1 + number2
      
    }
    print(addClousers(20, 30))
    
  }
  
  //Mark: Add Clouser -> 2
  func integrateClousers_Second() {
    
   // Part_1
        let addClousers = { (number1: Int, number2: Int) in
    
          return number1 + number2
    
        }
        print(addClousers(20, 30))
    
    //Part_2
     //No return type
        let addClouser2 = { (number1: Int, number2: Int) in
    
          number1 + number2
    
        }
        print(addClouser2(30, 40))
    
    //Part_3
    // We can't remove ( :(Int, Int) -> Int) ) type, when we use $ sign
    let addClouserThree:(Int, Int) -> Int = { $0 + $1 }
    
    print(addClouserThree(20, 50))
  }
  
}

//MARK: String Type
extension ViewController {

  func callString() -> String {
    
    return "Hello, normal function"
  }
  
  func clouserWithString() {
    
    //Part: 1
    let callStringWithClouser: () -> String = { () in
      print("Hiiiii!!!!")
      return "Hello, string with clouser"
      
    }
    print(callStringWithClouser())
    
    //Part: 2
    //Also skip return keyword and Type

    let callStringWithClouserSecond: () -> String = { "Hello, string with clouser without return Type"}
    print(callStringWithClouserSecond())
    
    //Part: 3
    //Also skip return keyword and Type
    
    let callStringWithClouserThird = { "Hello, string without return keyword and Type () -> String "}
    print(callStringWithClouserThird())
  }
  
}

