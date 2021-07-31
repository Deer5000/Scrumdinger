//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Khidr Brinkley on 7/31/21.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List{
            ForEach(scrums, id: \.title) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.color)
                
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.data)
    }
}