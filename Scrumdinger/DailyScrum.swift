//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Khidr Brinkley on 7/29/21.
//
import SwiftUI


struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color

init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color) {
    self.id = id
    self.title = title
    self.attendees = attendees
    self.lengthInMinutes = lengthInMinutes
    self.color = color
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, color: Color("Design")),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Luis", "Darla"], lengthInMinutes: 5, color: Color("App Dev")),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christian", "Eden", "Karla","Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 1, color: Color("Web Dev"))
        ]
    }
    
}
