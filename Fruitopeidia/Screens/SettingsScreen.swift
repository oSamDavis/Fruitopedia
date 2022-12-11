//
//  SettingsScreen.swift
//  Fruitopeidia
//
//  Created by Sam Davis Omekara  on 11/27/22.
//

import SwiftUI

struct SettingsScreen: View {
    // MARK: PPTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    
                    // MARK: SECTION 1
                    GroupBox(
                        label:
                           SettingsLabel(labelText: "Fructopedia", labelImage: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more ")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: SECTION 2
                    GroupBox(label:
                        SettingsLabel(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                        Text("If you wish, you can restart the aplication by toggling the switch in this box. This way, you will start the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("RESTARTED")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("RESTART")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: SECTION 3
                    GroupBox(label:
                                SettingsLabel(labelText: "Application", labelImage: "apps.iphone")){
                        
                        SettingsRow(name: "Developer", content: "Sam Davis Omekara Jr.")
                        SettingsRow(name: "Compatibility", content: "iOS14+")
                        SettingsRow(name: "Website", linkLabel: "Github", linkDestination: "github.com/oSamDavis")
                        SettingsRow(name: "Social", linkLabel: "LinkedIn", linkDestination: "www.linkedin.com/in/samdavisomekara/")
                        SettingsRow(name: "Version", content: "1.1.0")
                    }
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                }
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}


// MARK: PREVIEW
struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
            .preferredColorScheme(.dark)
    }
}
