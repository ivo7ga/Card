//
//  ContentView.swift
//  Target
//
//  Created by Iván González on 14/2/22.
//

import SwiftUI

class UserInfo : ObservableObject{
    
    @Published var name : String = ""
    @Published var surname : String = ""
    @Published var work : String = ""
    @Published var phone: String = ""
    @Published var mail: String = ""
    @Published var direction: String = ""
}

struct ContentView: View {
    @EnvironmentObject var userInfo: UserInfo
    var body: some View {
        Form{
            TextField("Nombre", text: $userInfo.name)
            TextField("Apellidos", text: $userInfo.surname)
            TextField("Puesto de trabajo", text: $userInfo.work)
            Section{
                TextField("Número de teléfono", text: $userInfo.phone)
                    .textContentType(.telephoneNumber)
                TextField("Correo electrónico", text: $userInfo.mail)
                    .textContentType(.emailAddress)
                TextField("Dirección", text: $userInfo.direction)
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
