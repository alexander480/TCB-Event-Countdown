//
//  Extensions.swift
//  Event Countdown
//
//  Created by Delta Vel on 3/28/19.
//  Copyright © 2019 Delta Vel. All rights reserved.
//

import Foundation

extension Date {
    func currentWeekday() -> Int? {
        return Calendar.current.dateComponents([.weekday], from: self).weekday
    }
    func currentMonth() -> Int? {
        return Calendar.current.dateComponents([.month], from: self).month
    }
    func currentDay() -> Int? {
        return Calendar.current.dateComponents([.day], from: self).day
    }
}
