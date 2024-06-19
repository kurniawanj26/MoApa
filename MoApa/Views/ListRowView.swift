//
//  ListRowView.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import SwiftUI

struct ListRowView: View {
    
    // Variables
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text("Jogging!")
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "Jogging")
    }
}
