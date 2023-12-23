//
//  Date+ext.swift
//  Chartz
//
//  Created by Brandon Rodriguez on 12/23/23.
//

import Foundation

extension Date {
    
    static func from(year: Int, month: Int, day: Int) -> Date {
        
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.current.date(from: components)!
        
    }
    
}
