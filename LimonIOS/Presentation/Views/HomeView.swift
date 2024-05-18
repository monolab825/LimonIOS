//
//  LoginView.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import SwiftUI

struct HomeView: View {
    
    var logged: Bool = true
    
    var body: some View{
        VStack{
            if(logged){
                
            }else{
                LoginView()
            }
        }

    }
    
}

#Preview {
    LoginView()
}
