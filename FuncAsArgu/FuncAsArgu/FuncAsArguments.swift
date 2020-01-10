//
//  FuncAsArguments.swift
//  FuncAsArgu
//
//  Created by sunil.kumar1 on 1/10/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class FuncAsArguments: NSObject {
    
    override init() {
        super.init()
        self.knowCompletionBlockWithoutReturn()
        self.knowFunctionAsArgument()

        self.knowCompletionBlockWithReturn()
        self.knowFunctionAsArgumentWithReturn()
    }
    
    // MARK:- Completion Block without return
    func completionBlockWithoutReturn(x:Int, y:Int, completion: ((Int, Int)->Void)) {
        completion(x,y)
    }
    
    func knowCompletionBlockWithoutReturn() {
        completionBlockWithoutReturn(x: 1, y: 10) { (p, q) in
           print("p==\(p),q==\(q)")
        }
    }
    
    // MARK:- Pass Function as Agrument
    func multiplyNumber(firstNum:Int, secondNum:Int){
        let num = firstNum*secondNum
        print("multiple of two number == \(num)")
    }
    
    func knowFunctionAsArgument(){
        completionBlockWithoutReturn(x: 2, y: 10, completion: multiplyNumber)
    }
    
    //MARK:- Completion Block with return
    func completionBlockWithReturn(x:Int, y:Int, completion: ((Int, Int)->Int)) {
      let value = completion(x, y)
      print("value == \(value)")
    }
    
    
    func knowCompletionBlockWithReturn() {
        completionBlockWithReturn(x: 3, y: 10) { (p, q) -> Int in
            return p*q
        }
    }

    // MARK:- Pass Function as Agrument with return

    func multiplyNumberWithReturn(firstNum:Int, secondNum:Int) -> Int {
        let num = firstNum*secondNum*60
        print("multiple of two number == \(num)")
        return num
    }
    
    func knowFunctionAsArgumentWithReturn() {
        completionBlockWithReturn(x: 4, y: 10, completion: multiplyNumberWithReturn)
    }

}

