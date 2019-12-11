//
//  ContentView.swift
//  Urhobo_WordMatch
//
//  Created by Ufuoma Okoro on 11/12/2019.
//  Copyright © 2019 Ufuoma Okoro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var naijaObject = ["books", "dog", "leg","elephant","cat","turtile","hair","snake","monkey","water","star","house","eye","knife","hand","mouth","teeth","fork","spoon","rabbit","sun","shoes"].shuffled()
    
    //Display the
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    
    //Translate Correct answer into Urhobo
    
    var processCorrectAnswer: String {
        
        var translateSselection = ""
        
        switch (naijaObject[correctAnswer]) {
            
        case "turtile":
            translateSselection = "Ogbeni"
            
        case "books":
            translateSselection = "Obe"
            
        case "fork":
            translateSselection = "Kpagheghe"
            
        case "leg":
            translateSselection = "Owo"
            
        case "snake":
            translateSselection = "Odeko"
            
        case "cat":
            translateSselection = "Ologbo"
            
        case "hair":
            translateSselection = "Eto"
            
        case "monkey":
            translateSselection = "Okpe"
            
        case "spoon":
            translateSselection = "Kujere"
            
        case "water":
            translateSselection = "Ame"
            
        case "dog":
            translateSselection = "Eranko"
            
        case "hand":
            translateSselection = "Oboh"
            
        case "mouth":
            translateSselection = "Ugbunu"
            
        case "star":
            translateSselection = "Isio"
            
        case "elephant":
            translateSselection = "Eni"
            
        case "house":
            translateSselection = "Uwenwi"
            
        case "rabbit":
            translateSselection = "Afioto"
            
        case "sun":
            translateSselection = "Oren"
            
        case "eye":
            translateSselection = "Ero"
            
        case "knife":
            translateSselection = "Aphia"
            
        case "shoes":
            translateSselection = "Sabatu"
            
        case "teeth":
            translateSselection = "Aku"
        default:
            translateSselection = "No Title"
        }
        
    
        
        
        return translateSselection
    }
    
    var body: some View {
    
        NavigationView {
            
            VStack {
        
                ForEach((0...2), id: \.self) { number in
                
                    Image(self.naijaObject[number])
                        .resizable()
                        .frame(width: 80, height: 80)
                        .border(Color.black,width: 1)
                    
             

                
                }
           
            .navigationBarTitle(Text(processCorrectAnswer))
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
