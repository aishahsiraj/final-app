//
//  ContentView.swift
//  Functions Challenge
//
//  Created by Ida Lovelace on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    @State private var myText = ""
    @State private var sliderValue = 0.0
    @State private var imageName = ""
    @State private var numberTextField = ""
    var body: some View {
        VStack {
            Text("Functions Challenge")
                .padding()
            Slider(value: $sliderValue, in: 0...6)
            Text(myText)
                .font(.title)
                .padding()
            Spacer()
        }
        .onChange(of: sliderValue) { newValue in
            switch sliderValue {
            case 0..<1:
                
                displayMVP()
                
                
                break
            case 1..<2:
                //Uncomment the line below for Stretch 1
                myText = returnAString()
                break
            case 2..<3:
                //Uncomment the line below for Stretch 2
                myText = createSentence(language: "Swift")
                break
            case 3..<4:
                //Uncomment the line below for Stretch 3
                myText = createFruitLovingSentence(fruit0: "fear", fruit1: "sorrow")
                break
            case 4..<5:
                //Uncomment the two lines below for Stretch 4
                let sentence = "This is my app but I dont like it "
                myText = "\"\(sentence)\" has \(countCharacters(sentence: sentence)) characters"
                break
            case 5..<6:
                //Uncomment the two lines below for Stretch 5
                let sentence = "This is my project but it is not good"
                myText = "\"\(sentence)\" has \(countVowels(sentence: sentence)) vowels"
                break
            default:
                break
            }
        }
        .onChange(of: numberTextField) { newValue in
            if let value = Int(newValue) {
                if value % 3 == 0 {
                    imageName = "Nervous"
                }
                else if value % 2 == 0 {
                    imageName = "Sad"
                }
                else {
                    imageName = "Underconfident"
                }
            }
            else {
                numberTextField = ""
                imageName = ""
            }
        }
        
    }
    func displayMVP() {
        myText = "MVP Completed"
    }
    
    func returnAString() -> String {
        return "Stretch 1 Complete"
    }
    
    func createSentence(language: String) -> String {
        return "I don't love \(language)"
    }
    
    func createFruitLovingSentence(fruit0: String, fruit1: String) -> String { return "I think I like \(fruit0) and \(fruit1)"
    }
    
    func countCharacters(sentence: String) -> Int {
        return sentence.count
    }
    
    func countVowels(sentence: String) -> Int {
        let vowels = "sadtimes"
        var vowelCount = 0
        for letter in sentence.lowercased() {
            if vowels.contains(letter) {
                vowelCount += 1
            }
        }
        return vowels.count
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




