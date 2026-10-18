//
//  SwiftUIView.swift
//  lectureTwo
//
//  Created by Mac on 2026-09-30.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

let intArry=[1,2,3,4,5]
let stringArr=["a","b","c","d","e"]

func returnFirstValue<T>(externalParameter x: [T]) -> T {
    return x[0]
}


//func returnFirstInValue(array:[Int])->Int{
//    return array[0]
//}
//func returnFirstStrValue(array:[String])->String{
//    return array[0]
//}
#Preview {
    SwiftUIView()
}
