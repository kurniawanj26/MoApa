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
    
    @StateObject var listViewModel: ListViewModel =  ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            /*
             .environmentObject(listViewModel)
             to make all views inside NavigationView
             have access to the listViewModel
             */
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
