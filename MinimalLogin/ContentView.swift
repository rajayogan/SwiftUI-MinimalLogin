//
//  ContentView.swift
//  MinimalLogin
//
//  Created by Raja Yogan on 15/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: -25.0) {
                Text("Hello")
                    .font(.custom("MontserratRoman-ExtraBold", size: 80.0))
                HStack(spacing: -2.0) {
                    Text("There")
                        .font(.custom("MontserratRoman-ExtraBold", size: 80.0))
                    Text(".")
                        .font(.custom("MontserratRoman-ExtraBold", size: 80.0))
                        .foregroundColor(.green)
                }
            }.frame(height: 300)
            
            Floatingtext(emailId: "", floatingLabel: "EMAIL")
            Floatingtext(emailId: "", floatingLabel: "PASSWORD", isPassword: true)
            
            HStack {
                Spacer()
                Text("Forgot Password")
                    .foregroundColor(.green)
                    .font(.custom("MontserratRoman-SemiBold", size: 17.0))
                    .underline()
                    .onTapGesture {
                        print("Send password reset")
                    }
            }.padding(.top, 5)
                .padding(.bottom, 25)
            
            Button(action: {
                
            }) {
                Text("LOGIN")
                    .frame(maxWidth: .infinity, maxHeight: 60.0, alignment: .center)
                    .foregroundColor(.white)
                    .font(.custom("MontserratRoman-SemiBold", size: 18.0))
            }
            .background(.green)
            .foregroundColor(.white)
            .cornerRadius(35)
            .padding(.bottom, 10)
            
            Button(action: {
                
            }) {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.black)
                Text("Login with facebook")
                    
                    .foregroundColor(.black)
                    .font(.custom("MontserratRoman-SemiBold", size: 18.0))
            }
            .frame(maxWidth: .infinity, maxHeight: 60.0, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 35)
                    .stroke(.black, lineWidth: 2)
            )
            
            HStack {
                Spacer()
                    Text("New to Spotify?")
                    .foregroundColor(.black)
                    .font(.custom("MontserratRoman-Regular", size: 17.0))
                Text("Register")
                .foregroundColor(.green)
                .font(.custom("MontserratRoman-Regular", size: 17.0))
                .underline()
                .onTapGesture {
                    print("Take to signup page")
                }
                Spacer()
            }.padding(.top, 25.0)
            
            Spacer()
        }
        .padding(25.0)
    }
    
//    init() {
//        for family in UIFont.familyNames {
//            print("family: ", family)
//            for font in UIFont.fontNames(forFamilyName: family) {
//                print("font: ", font)
//            }
//        }
//    }
}

#Preview {
    ContentView()
}
