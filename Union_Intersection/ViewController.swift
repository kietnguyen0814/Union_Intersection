//
//  ViewController.swift
//  Union_InterSection
//
//  Created by Kiet Nguyen on 10/29/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let U = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let VowelCharacters = Array("AEIOU")
    let ConsonantCharacters = Array("BCDFGHJKLMNPQRSTVWXYZ")
    
    var Vowels = Array<Any>(repeating: 0, count: 26)
    var Consonants = Array<Any>(repeating: 0, count: 26)
    var Universal = Array<Any>(repeating: 0, count: 26)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        printSetList(printList: U, width: 8)
        
        for i in 0..<U.count
        {
            Universal[i] = U.contains(U[i]) ? true : false
            Vowels[i] = VowelCharacters.contains(U[i]) ? true : false
            Consonants[i] = ConsonantCharacters.contains(U[i]) ? true : false
        }
        
        print()
        print("Bit represents of sets of U")
        printSetList(printList: Universal, width: 8)
        
        print()
        print("Bit represents of sets of Vowels")
        printSetList(printList: Vowels, width: 8)
        
        print()
        print("Bit represents of sets of Consonants")
        printSetList(printList: Consonants, width: 8)
        
        print()
        print("Union of these two sets")
        union2Set(array1: Vowels,array2: Consonants,width: 8)
        
        print()
        print("Intersection of these two sets")
        interSection2Set(array1: Vowels,array2: Consonants,width: 8)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark: - Union2Set Function
    func union2Set(array1: Array<Any>, array2: Array<Any>, width: Int) {
        var listUnion = Array<Any>(repeating: 0, count: 26)
        for i in 0..<26 {
            listUnion[i] = array1[i] as! Bool || array2[i] as! Bool ? true : false
            //print((array1[i] as! Bool || array2[i] as! Bool ? true : false), terminator: " ");
        }
        printSetList(printList: listUnion, width: 8)
    }
    
    // Mark: - InterSection2Set Function
    func interSection2Set(array1: Array<Any>, array2: Array<Any>, width: Int) {
        var listInterSection = Array<Any>(repeating: 0, count: 26)
        for i in 0..<26 {
            listInterSection[i] = (array1[i] as! Bool && array2[i] as! Bool) ? true : false
            //print(array1[i] as! Bool && array2[i] as! Bool ? true : false, terminator: " ");
        }
        printSetList(printList: listInterSection, width: 8)
    }
    
    // Mark: - printSetList Function
    func printSetList(printList: Array<Any>, width: Int)
    {
        var j = 0;
        for h in 0..<26 {
            if (j == width) {
                print()
                j = 0;
            }
            print(printList[h], terminator: " ");
            j+=1
        }
        print()
    }
}
