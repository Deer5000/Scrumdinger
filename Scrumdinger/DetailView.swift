//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Khidr Brinkley on 8/3/21.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                Label("Start Meeting", systemImage: "timer")
                    .accessibilityLabel(Text("Start Meeting"))
                    .foregroundColor(.accentColor)
                    .font(.headline)
                HStack {
                    Label("Length", systemImage: "clock")
                        .accessibilityLabel(Text("Meeting Length"))
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                HStack {
                    Label("Color", systemImage: "paintpalette")
                    Spacer()
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(scrum.color)
                    }
                .accessibilityElement(children: .ignore)
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        DetailView(scrum: DailyScrum.data[0])
        }
    }
}
