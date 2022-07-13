//
//  NavigatorView.swift
//  Target
//
//  Created by Iván González on 15/2/22.
//

import SwiftUI

struct NavigatorView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "book.circle.fill")
                    Text("Formulario")
                }
            DatosView()
                .tabItem {
                    Image(systemName: "text.bubble")
                    Text("Tarjeta")
                }
            
        }
        
    }
}




