//
//  ContentView.swift
//  Soccer
//
//  Created by ramy on 2022-01-05.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var teamName = ""
    @State var games = [match]()

    var body: some View {
        ZStack{
            VStack{
                Text("Welcome").padding()
                Spacer(minLength: 50)
                TextField("Enter the Team", text: $teamName).padding()
                List{
                    ForEach(games) {game in
                        ItemRowView(team: game)
                        }
                    }
                }
            }.onAppear {
                ApiServiceController.shared.getAllLeagues { resultFromApi in
                    self.games = resultFromApi
                }
            }
        }
    }



private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
