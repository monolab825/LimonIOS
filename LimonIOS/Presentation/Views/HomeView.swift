//
//  LoginView.swift
//  LimonIOS
//
//  Created by Marcos on 14/5/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var tokenManager: TokenManager

    
    // @ObservedObject var homeViewModel = HomeViewModel(useCase: UseCaseHome())
    
    var body: some View{
        NavigationStack{
            
        }
        Text("Todo")
        Button("Borrar token"){
            tokenManager.deleteToken()
        }
    }
    
}
    



