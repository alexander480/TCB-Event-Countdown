//
//  EventHelper.swift
//  Event Countdown
//
//  Created by Delta Vel on 3/28/19.
//  Copyright © 2019 Delta Vel. All rights reserved.
//

import Foundation
import UIKit

import UserNotifications

var events = [Event]()

enum frequency { case daily, weekly, monthly, yearly }

struct Event {
    var title: String
    var subtitle: String?
    var date: Date
    var notes: String?
    var doesNotify: Bool
    var doesRepeat: Bool
    var repeatFrequency: frequency?
    var color: UIColor
    var icon: UIImage?
    
    init(title: String, date: Date, doesNotify: Bool, doesRepeat: Bool, repeatFrequency: frequency?, color: UIColor) {
        self.title = title
        self.date = date
        self.doesNotify = doesNotify
        self.doesRepeat = doesRepeat
        self.repeatFrequency = repeatFrequency
        self.color = color
        
        if self.doesNotify { self.registerNotification() }
        if self.doesRepeat {
            if let freq = self.repeatFrequency {
                switch freq {
                case .daily:
                    var repeatDaily = DateComponents()
                        repeatDaily.hour = 10
                        repeatDaily.minute = 30
                    self.registerRepeat(Frequency: repeatDaily)
                case .weekly:
                    if let weekday = Date().currentWeekday() {
                        var dateComponents = DateComponents()
                            dateComponents.weekday = weekday
                            dateComponents.hour = 10
                            dateComponents.minute = 30
                        self.registerRepeat(Frequency: dateComponents)
                    }
                case .monthly:
                    if let day = Date().currentDay() {
                        var dateComponents = DateComponents()
                            dateComponents.day = day
                            dateComponents.hour = 10
                            dateComponents.minute = 30
                        self.registerRepeat(Frequency: dateComponents)
                    }
                case .yearly:
                    if let month = Date().currentMonth(), let day = Date().currentDay() {
                        var dateComponents = DateComponents()
                            dateComponents.month = month
                            dateComponents.day = day
                            dateComponents.hour = 10
                            dateComponents.minute = 30
                        self.registerRepeat(Frequency: dateComponents)
                    }
                @unknown default:
                    return
                }
            }
        }
    }
    
    func registerNotification() {
        
    }
    
    func registerRepeat(Frequency: DateComponents) {
        
        let content = UNMutableNotificationContent()
        content.title = "Notification Title"
        content.subtitle = "Notification Subtitle"
        content.body = "Notification Body"
        
        // now, you should declare the UNCalendarNotificationTrigger instance,
        // but before that, you'd need to describe what's the date matching for firing it:
        
        // for instance, this means it should get fired every Monday, at 10:30:
        var date = DateComponents()
        date.weekday = 2
        date.hour = 10
        date.minute = 30
        
        // declaring the trigger
        let calendarTrigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
        
        // creating a request and add it to the notification center
        let request = UNNotificationRequest(identifier: "notification-identifier", content: content, trigger: calendarTrigger)
        UNUserNotificationCenter.current().add(request)
        
    }
}
