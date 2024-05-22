//
//  ContentView.swift
//  LimonIOS
//
//  Created by Marcos on 8/5/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var tokenManager: TokenManager

    var body: some View{
        VStack{
            if(!tokenManager.token.isEmpty || tokenManager.token != ""){
                HomeView()
            }else{
                LoginView(tokenManager: tokenManager)
            }
        }
    }
}


#Preview {
    ContentView()
}
