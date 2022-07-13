//
//  DatosView.swift
//  Target
//
//  Created by Iván González on 15/2/22.
//

import SwiftUI

struct DatosView: View {
    @State var rotate = false
    @State var text = false
    @State var backgroundColor: Color = .white
    @State var backBoton:Color = .white
    @EnvironmentObject var userInfo : UserInfo
    var body: some View {
        ZStack {
            Color(red: 227 / 255, green: 228 / 255, blue: 255 / 255)
            VStack (alignment:.center){
                Text("Tu Tarjeta")
                    .font(.largeTitle)
                    .padding(.horizontal, 30)
                    .foregroundColor(.black)
                HStack{
                    Text("Tarjeta")
                        .foregroundColor(.black)
                    Circle()
                        .frame(width: 50, height: 50)
                        .shadow(color: .black, radius: 2)
                        .foregroundColor(Color(red: 78 / 255, green: 243 / 255, blue: 245 / 255))
                        .onTapGesture{
                            withAnimation {
                                self.backgroundColor = Color(red: 78 / 255, green: 243 / 255, blue: 245 / 255)
                            }
                        }
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(red: 245 / 255, green: 155 / 255, blue: 149 / 255))
                        .shadow(color: .black, radius: 2)
                        .onTapGesture {
                            withAnimation {
                                self.backgroundColor = Color(red: 245 / 255, green: 155 / 255, blue: 149 / 255)
                            }
                        }
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(red: 255 / 255, green: 230 / 255, blue: 135 / 255))
                        .shadow(color: .black, radius: 2)
                        .onTapGesture {
                            withAnimation {
                                self.backgroundColor = Color(red: 255 / 255, green: 230 / 255, blue: 135 / 255)
                            }
                        }
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(red: 172 / 255, green: 160 / 255, blue: 233 / 255))
                        .shadow(color: .black, radius: 2)
                        .onTapGesture {
                            withAnimation {
                                self.backgroundColor = Color(red: 172 / 255, green: 160 / 255, blue: 233 / 255)
                            }
                        }
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(red: 102 / 255, green: 255 / 255, blue: 172 / 255))
                        .shadow(color: .black, radius: 2)
                        .onTapGesture {
                            withAnimation {
                                self.backgroundColor = Color(red: 102 / 255, green: 255 / 255, blue: 172 / 255)
                         
                            }
                        }
                }.padding(15)
              
               
                HStack{
                    Text("Círculo")
                        .foregroundColor(.black)
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(red: 78 / 255, green: 243 / 255, blue: 245 / 255))
                        .shadow(color: .black, radius: 2)
                        .onTapGesture {
                            withAnimation {
                                self.backBoton = Color(red: 78 / 255, green: 243 / 255, blue: 245 / 255)
                            }
                        }
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(red: 245 / 255, green: 155 / 255, blue: 149 / 255))
                        .shadow(color: .black, radius: 2)
                        .onTapGesture {
                            withAnimation {
                                self.backBoton = Color(red: 245 / 255, green: 155 / 255, blue: 149 / 255)
                            }
                        }
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(red: 255 / 255, green: 230 / 255, blue: 135 / 255))
                        .shadow(color: .black, radius: 2)
                        .onTapGesture {
                            withAnimation {
                                self.backBoton = Color(red: 255 / 255, green: 230 / 255, blue: 135 / 255)
                            }
                        }
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(red: 172 / 255, green: 160 / 255, blue: 233 / 255))
                        .shadow(color: .black, radius: 2)
                        .onTapGesture {
                            withAnimation {
                                self.backBoton = Color(red: 172 / 255, green: 160 / 255, blue: 233 / 255)
                            }
                        }
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(red: 102 / 255, green: 255 / 255, blue: 172 / 255))
                        .shadow(color: .black, radius: 2)
                        .onTapGesture {
                            withAnimation {
                                self.backBoton = Color(red: 102 / 255, green: 255 / 255, blue: 172 / 255)
                            }
                        }
                     
                }
                ZStack{
                    VStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 60)
                            .shadow(color: .black, radius: 2)
                            .foregroundColor(backgroundColor)
                            .frame(width: 340, height: 200, alignment: .center)
                            .onTapGesture {
                                withAnimation {
                                    self.rotate.toggle()
                                }
                            }
                    }.padding(22.0)
                    HStack(alignment: .center){
                       
                        VStack{
                            Text(rotate ? "\(userInfo.phone)" : "\(userInfo.name) \(userInfo.surname)")
                                .rotation3DEffect(.degrees(rotate ? 0 : 180), axis: (x:0, y: 1, z: 0))
                                .foregroundColor(.black)
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, rotate ? 0.0 : 10.0)
                            Text(rotate ? "\(userInfo.mail)" : "\(userInfo.work)")
                                .rotation3DEffect(.degrees(rotate ? 0: 180), axis: (x:0, y: 1, z: 0))
                                .foregroundColor(.black)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding(.leading, rotate ? 0.0 : 10.0)
                            Text(rotate ? "\(userInfo.direction)" : "")
                                .rotation3DEffect(.degrees(rotate ? 0: 180), axis: (x:0, y: 1, z: 0))
                                .foregroundColor(.black)
                                .font(.body )
                                .padding(.leading, rotate ? 0.0 : 50.0)
                        }
                        ZStack{
                                Circle()
                                    .frame(width: rotate ? 0 : 80, height: 80)
                                    .foregroundColor(backBoton)
                            Text(rotate ? "" : (userInfo.name.prefix(1)))
                                .rotation3DEffect(.degrees(rotate ? 0 : 180), axis: (x:0, y: 1, z: 0))
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            
                        }
                    }
                }
                .rotation3DEffect(.degrees(rotate ? 0 : 180), axis: (x:0, y: 1, z: 0))
            }
        }
    }
}




