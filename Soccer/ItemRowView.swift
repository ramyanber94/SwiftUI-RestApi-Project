//
//  ItemRowView.swift
//  Soccer
//
//  Created by ramy on 2022-01-05.
//

import SwiftUI

struct ItemRowView: View {
    let team : match
    var body: some View {
        HStack {
            let ImageHome = URL(string: "https://footystats.org/img/\(team.home_image)")
            let ImageAway = URL(string: "https://footystats.org/img/\(team.away_image)")
            
            VStack {
                AsyncImage(url: ImageHome)
                Text(team.home_name).padding(3)
                Spacer()
                Text("\(team.homeGoalCount)").padding()
            }
            VStack{
                AsyncImage(url: ImageAway)
                Text(team.away_name).padding(3)
                Spacer()
                Text("\(team.awayGoalCount)").padding()
            }
        }
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(team: match.example)
    }
}
