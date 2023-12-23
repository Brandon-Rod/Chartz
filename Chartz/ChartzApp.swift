//
//  ChartzApp.swift
//  Chartz
//
//  Created by Brandon Rodriguez on 12/19/23.
//

import SwiftUI

@main
struct ChartzApp: App {
    
    init() {
        
        UISegmentedControl.appearance().selectedSegmentTintColor = .systemPink
        
    }
    
    var body: some Scene {
        
        WindowGroup {
            
            HomeView()
                        
        }
        
    }
    
}
