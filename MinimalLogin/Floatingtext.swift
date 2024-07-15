//
//  Floatingtext.swift
//  MinimalLogin
//
//  Created by Raja Yogan on 15/07/24.
//

import SwiftUI

struct Floatingtext: View {
    @State var emailId: String
    @State var floatingLabel: String
    
    @State var isPassword: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text(self.floatingLabel)
                .foregroundColor(.gray.opacity(0.5))
                .offset(y: self.emailId.isEmpty ? 0 : -25)
                .scaleEffect(self.emailId.isEmpty ? 1 : 0.8, anchor: .leading)
                .font(.custom("MontserratRoman-Medium", size: 16.0))
            if(isPassword) {
                SecureField("", text: self.$emailId)
                    .padding(.bottom, 15)
                    .padding(.top, 15)
                    .font(.custom("MontserratRoman-Bold", size: 12.0))
            } else {
                TextField("", text: self.$emailId)
                    .padding(.bottom, 15)
                    .padding(.top, 15)
                    .font(.custom("MontserratRoman-Bold", size: 12.0))
            }
            Divider()
                .frame(height: 1)
                .padding(.horizontal, 30)
                .background(Color.gray.opacity(0.5))
                .offset(y:20.0)
            
        }
        .padding(.top, self.emailId.isEmpty ? 0 : 18)
        .animation(.spring(response: 0.4, dampingFraction: 0.3), value: self.emailId.isEmpty)
    }
}

//#Preview {
//    Floatingtext()
//}
