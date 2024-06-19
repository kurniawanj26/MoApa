//
//  MoApaApp.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import SwiftUI

/*
 MVVM Architecture
 
 M = data point
 V = UI
 VM = Observable object or class that manages the Models for the Views
 
 
 
 */

@main
struct MoApaApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
