//
//  SettingsRow.swift
//  Fruitopeidia
//
//  Created by Sam Davis Omekara  on 12/5/22.
//

import SwiftUI

struct SettingsRow: View {
    // MARK: PPTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    // MARK: BODY
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                }
                else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
                
            }
        }//: HSTACK
    }
}


// MARK: PREVIEW
struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRow(name: "Developer", content: "Sam Davis Omekara Jr.")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            
            SettingsRow(name: "Website", linkLabel: "Github", linkDestination: "https://github.com/oSamDavis")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        }
    }
}
