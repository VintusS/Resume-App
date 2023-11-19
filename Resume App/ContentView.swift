//
//  ContentView.swift
//  Resume App
//
//  Created by Mindrescu Dragomir on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            HStack() {
                VStack(alignment: .leading, spacing: 10) {
                    ZStack {
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundStyle(.blue)
                        Image("pfp")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .cornerRadius(90)
                    }
                    
                    HStack {
                        paragraphSymbol()
                        paragraphTitle(Title: "SKILLS")
                    }
                    skills(Skill: "Swift")
                    skills(Skill: "C++")
                    skills(Skill: "Python")
                    skills(Skill: "JavaScript")
                    skills(Skill: "JSX")
                    skills(Skill: "React")
                    Text("")
                    HStack {
                        paragraphSymbol()
                        paragraphTitle(Title: "LANGUAGES")
                    }
                    languages(Language: "English", Level: "Advanced \nproficiency")
                    languages(Language: "Russian", Level: "Proficient")
                    languages(Language: "Romanian", Level: "Native \nproficiency")
                    Text(" ")
                    HStack {
                        paragraphSymbol()
                        paragraphTitle(Title: "INTERESTS")
                    }
                    interests(Interest: "🎮 Gaming")
                    interests(Interest: "🧑‍💻 Computer \nScience")
                    interests(Interest: "🎧 Music")
                    
                }
                Divider()
                    .frame(width: 2)
                    .background(Color.gray)
                
                VStack {
                    Text("lashdfjkalsdkjfaldsjkfaddaaas")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

func paragraphSymbol() -> some View {
    ZStack {
        Rectangle()
            .frame(width: 25, height: 25)
            .cornerRadius(3)
            .border(.blue, width: 2)
            .cornerRadius(3)
            .rotationEffect(.degrees(45))
            .foregroundStyle(.white)
        Rectangle()
            .frame(width: 15, height: 15)
            .cornerRadius(3)
            .rotationEffect(.degrees(45))
            .foregroundStyle(.blue)
    }
}

func paragraphTitle(Title: String) -> some View {
    Text(Title)
        .foregroundStyle(.blue)
        .bold()
}

func skills(Skill: String) -> some View {
    Text(Skill)
        .foregroundStyle(.white)
        .padding(3)
        .background(.blue)
        .cornerRadius(5)
}

func languages(Language: String, Level: String) -> some View{
    VStack(alignment: .leading) {
        Text(Language)
        Text(Level)
            .foregroundStyle(.red)
            .italic()
    }
}

func interests(Interest: String) -> some View {
    VStack(alignment: .leading) {
        Text(Interest)
    }
}
