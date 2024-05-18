//
//  ContentView.swift
//  LimonIOS
//
//  Created by Marcos on 8/5/24.
//

import SwiftUI

struct ContentView: View {
    var logged: Bool = true
    
    var body: some View{
        VStack{
            if(logged){
                HomeView()
            }else{
                LoginView()
            }
        }

    }

    
    }


#Preview {
    ContentView()
}
