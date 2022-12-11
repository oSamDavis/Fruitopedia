//
//  SettingsLabel.swift
//  Fruitopeidia
//
//  Created by Sam Davis Omekara  on 11/27/22.
//

import SwiftUI

struct SettingsLabel: View {
    // MARK: PPTIES
    var labelText: String
    var labelImage: String
    
    
    // MARK: BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        } //: HSTACK

    }
}



// MARK: PREVIEW
struct SettingsLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabel(labelText: "Fructopeida", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
