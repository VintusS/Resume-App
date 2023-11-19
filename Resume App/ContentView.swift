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
                Text("")
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
                        paragraphTitle(Title: "Skills")
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
                        paragraphTitle(Title: "Languages")
                    }
                    languages(Language: "English", Level: "Advanced \nproficiency")
                    languages(Language: "Russian", Level: "Proficient")
                    languages(Language: "Romanian", Level: "Native \nproficiency")
                    Text(" ")
                    HStack {
                        paragraphSymbol()
                        paragraphTitle(Title: "Interests")
                    }
                    interests(Interest: "🎮 Gaming")
                    interests(Interest: "🧑‍💻 Computer \nScience")
                    interests(Interest: "🎧 Music")
                    
                }
                Divider()
                    .frame(width: 2)
                    .background(Color.gray)
                
                VStack(alignment: .leading) {
                    Text("Mindrescu Dragomir")
                        .font(.headline)
                        .foregroundStyle(.blue)
                    Text("Software Engineering Student")
                        .font(.subheadline)
                        .foregroundStyle(.red)
                        .italic()
                    Text("")
                    Text("  I'm a second-year software engineering student with a focus on iOS and front-end development. I started with iOS, making simple apps like a clicker game. Then, during my front-end internship, I learned HTML, CSS, JavaScript, and React. \n  I worked on a dashboard project where I was in charge of the front-end. This project involved making diagrams from data. My main challenge was choosing the right tools for the job, which I learned from. \n   My goal is to be a full-stack iOS app developer. I'm currently learning a lot about front-end development to reach this goal.\n")
                        .font(.custom("Description", fixedSize: 12))
                    contacts()
                    Text("")
                    VStack(alignment: .leading) {
                        HStack {
                            paragraphSymbol()
                            paragraphTitle(Title: "Work Experience")
                        }
                        workExperience()
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            paragraphSymbol()
                            paragraphTitle(Title: "Education")
                        }
                        education()
                    }
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
            .frame(width: 15, height: 15)
            .cornerRadius(3)
            .border(.blue, width: 2)
            .cornerRadius(3)
            .rotationEffect(.degrees(45))
            .foregroundStyle(.white)
        Rectangle()
            .frame(width: 8, height: 8)
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

func contacts() -> some View{
    VStack {
        HStack(spacing: 10) {
            Text("📧 dragomir.mindrescu@isa.utm.md")
                .font(.custom("Location", size: 9))
            Text("📍 Chisinau, Moldova")
                .font(.custom("Location", size: 9))
        }
        HStack(spacing: 10) {
            Text("👨🏻‍💻 https://github.com/VintusS             ")
                .font(.custom("Location", size: 9))
            Text("📞 +373 (78) 335074")
                .font(.custom("Location", size: 9))
        }
    }
}

func workExperience() -> some View{
    VStack(alignment: .leading) {
        Text("Front-end Developer")
            .font(.subheadline)
            .fontWeight(.medium)
        Text("Extole SRL.")
            .font(.custom("Company name", size: 14))
            .fontWeight(.light)
        Text("09/2023-11/2023")
            .font(.custom("Duration", size: 12))
            .foregroundStyle(.red)
            .italic()
        Text("Achievements/Tasks")
            .font(.custom("Duration", size: 12))
            .foregroundStyle(.red)
            .italic()
        Text("  Dashboard Development: Led the design and implementation of a fully functional front-end dashboard, enhancing data accessibility and user interaction. \n   API Integration: Successfully integrated the dashboard with an API developed by the database engineering team, ensuring efficient data retrieval and management. \n User Experience Improvement: Designed a responsive and intuitive user interface, significantly improving user engagement and ease of navigation. \n Performance Optimization: Conducted thorough testing and debugging, optimizing the dashboard’s performance for a seamless user experience.")
            .font(.custom("Tasks", size: 12))
    }
}

func education() -> some View{
    VStack (alignment: .leading){
        Text("Baccalaureate")
            .font(.subheadline)
            .fontWeight(.medium)
        Text("Theoretical Lyceum \"Alecu Russo\"")
            .font(.subheadline)
        Text("2010-2022")
            .font(.custom("Duration", size: 12))
            .italic()
            .foregroundStyle(.red)
        Text("Software Engineer Bachelor Degree")
            .font(.subheadline)
            .fontWeight(.medium)
        Text("Technical University of Moldova")
            .font(.subheadline)
        Text("2022-2026")
            .font(.custom("Duration", size: 12))
            .italic()
            .foregroundStyle(.red)
    }
}
