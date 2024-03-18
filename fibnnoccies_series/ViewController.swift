//
//  ViewController.swift
//  fibnnoccies_series
//
//  Created by Karthiga on 18/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var val = 10
        print("Following is the Fibonacci series:")

        // Iterate for every number stating from 0 to val
        for j in 0...val{
           let output = fibonacciSeries(num: j)
           print(output)
        }
    }


    func fibonacciSeries(num: Int) -> Int{
       // The value of 0th and 1st number of the fibonacci series are 0 and 1
       var n1 = 0
       var n2 = 1

       // To store the result
       var nR = 0
       // Adding two previous numbers to find ith number of the series
       for _ in 0..<num{
          nR = n1
          n1 = n2
          n2 = nR + n2
       }
       return n1
    }

   

}

