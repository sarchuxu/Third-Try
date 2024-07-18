//
//  Cookie Ingredients.swift
//  Group 3 Final Project
//
//  Created by Sarah Xu on 7/16/24.
//

import SwiftUI

struct Cookie_Ingredients: View {
        @State private var grams = ""
        @State private var cups = 0
        @State private var res = ""
    let lightPink = Color(UIColor(red: 255/255, green: 208/255, blue: 208/255, alpha: 1.0))
    var body: some View {
        ZStack {
            Color(lightPink).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView {
                VStack(alignment: .leading){
                    Text("Cookie Ingredients")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Text("2 ¼ cups all-purpose flour (270g)")
                    VStack {
                        TextField("input grams", text: $grams)
                           .multilineTextAlignment(.center)
                           .font(.title)
                           .border(Color.gray, width: 1)

                        Button(action: {
                            if let gramsInt = Int(grams) {
                                cups = gramsInt * 5
                                res = "\(grams) grams = \(cups) cups"
                            } else {
                                res = "Invalid input"
                            }
                        }) {
                            Text("Convert")
                        }

                        Text(res)
                    }
                }
                    Text("¾ teaspoon baking soda")
                    Text("¾ teaspoon salt")
                    Text("1 cup unsalted butter softened (227g)")
                    Text("¾ cup light brown sugar (165g)")
                    Text("¾ cup granulated sugar (150g)")
                    Text("1 large egg")
                    Text("1 tablespoon vanilla extract")
                    Text("1½ cups chocolate chips or chunks or chopped bars (270g)")
                    Text("Flaked salt optional")
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 20.0)
                NavigationLink(destination: Cookie_Recipe()) {
                    Text("Go to the recipe!")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 180.0, height: 30.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }


#Preview {
    Cookie_Ingredients()
}
