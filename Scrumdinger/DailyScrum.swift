//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Khidr Brinkley on 7/29/21.
//
import SwiftUI


struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    
}

extension DailyScrum {
    static var data: [DailyScrum] {
        DailyScrum(title: "Design", attendees: ["", "", "", ""], lengthInMinutes: 10, color: Color("Design"))
    }
    
}
