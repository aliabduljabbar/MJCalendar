//
//  MJConfiguration.swift
//  Pods
//
//  Created by Michał Jackowski on 18.09.2015.
//
//

import Foundation

@objc public class MJConfiguration : NSObject {
    @objc public enum PeriodType :Int {
        case oneWeek, twoWeeks, threeWeeks, month
        func weeksCount() -> Int {
            switch self {
                case .month: return 6
                case .threeWeeks: return 3
                case .twoWeeks: return 2
                case .oneWeek: return 1
            }
        }
    }
    
    @objc public enum DayViewType: Int {
        case square, circle
    }
    
    @objc public enum StartDayType: Int {
        case monday, sunday
    }

    @objc public enum LettersInWeekDay: Int {
        case one = 1
        case two
        case three
    }

    @objc public enum SelectedDayType: Int {
        case filled, border
    }

    @objc public var lettersInWeekDayLabel:LettersInWeekDay = .three

    @objc public var periodType: PeriodType = .month
    @objc public var dayViewType: DayViewType = .circle
    @objc public var startDayType: StartDayType = .monday
    @objc public var selectedDayType: SelectedDayType = .border
    
    @objc public var rowHeight: CGFloat = 30
    @objc public var dayViewSize: CGSize = CGSize(width: 24, height: 24)
    @objc public var dayTextFont = UIFont.systemFont(ofSize: 12)
    
    @objc public var otherMonthBackgroundColor = UIColor.clear
    @objc public var otherMonthDayViewBackgroundColor = UIColor.clear
    @objc public var otherMonthTextColor = UIColor.clear
    
    @objc public var dayBackgroundColor = UIColor.clear
    @objc public var dayDayViewBackgroundColor = UIColor.clear
    @objc public var dayTextColor = UIColor.clear
    
    @objc public var selectedDayBackgroundColor = UIColor.clear
    @objc public var selectedDayTextColor = UIColor.clear
    @objc public var selectedBorderWidth: CGFloat = 1
    
    @objc public var weekLabelFont = UIFont.systemFont(ofSize: 12)
    @objc public var weekLabelTextColor = UIColor.clear
    @objc public var weekLabelHeight: CGFloat = 25
    
    @objc public var minDate: Date?
    @objc public var maxDate: Date?
    
    @objc public var outOfRangeDayBackgroundColor = UIColor.clear
    @objc public var outOfRangeDayTextColor = UIColor.clear
    
    @objc public var selectDayOnPeriodChange: Bool = true
    
    static func getDefault() -> MJConfiguration {
        let configuration = MJConfiguration()
        return configuration
    }
}
