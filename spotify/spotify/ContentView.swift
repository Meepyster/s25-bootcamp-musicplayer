//
//  ContentView.swift
//  spotify
//
//  Created by Ian Forlemu on 2/9/25.
//

import SwiftUI
import UIKit


struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.80, green: 0.1, blue: 0.3),  // Vibrant Red
                    Color(red: 0.30, green: 0.05, blue: 0.14) // Soft Pink
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack{
                Spacer()
                    .frame(height:120)
                HStack{
                    Image(systemName: "chevron.down")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 22, height:13)
                    Text("Specter")
                        .foregroundStyle(.white)
                        .frame(width:290)
                        .bold()
                    Image(systemName: "ellipsis")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 18, height:4)
                }
                Spacer()
                    .frame(height: 50)
                Image("kometto")
                    .resizable()
                    .frame(width: 350,height: 350)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .circular))
                Spacer()
                    .frame(height:430)
                
            }
            HStack{
                VStack{
                    Spacer()
                        .frame(height: 250)
                    HStack{
                        Text("Damn Good Day")
                            .bold()
                            .font(.system(size: 27))
                            .foregroundStyle(.white)
                        Spacer()
                            .frame(width: 80)
                    }
                    Spacer()
                        .frame(height:4)
                    HStack{
                        Text("Hoshimachi Suisei")
                            .foregroundStyle(.white)
                            .opacity(0.7)
                            .font(.system(size: 18))
                        Spacer()
                            .frame(width: 130)
                        
                    }
                }
                VStack{
                    Spacer()
                        .frame(height:260)
                    HStack{
                        Image(systemName:"minus.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 17)
                        Image(systemName:"plus.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width:2)
                    }
                }
            }
            VStack{
                Spacer()
                    .frame(height: 680)
                @State var speed = 20.0
                @State var isEditing = true
                Slider(
                    value: $speed,
                    in: 0...100,
                    onEditingChanged: { editing in
                        isEditing = editing
                    }
                )
                .controlSize(.mini)
                .frame(width:350)
                .accentColor(.white)
                Spacer()
                    .frame(height:-10)
                HStack(alignment: .center){
                    Text("0:50")
                        .foregroundStyle(.white)
                        .opacity(0.7)
                        .font(.system(size: 14))
                    Spacer()
                        .frame(width:285)
                    Text("-2:12")
                        .foregroundStyle(.white)
                        .opacity(0.7)
                        .font(.system(size: 14))
                }
                    
                HStack(alignment:.center){
                    Image(systemName:"shuffle")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(width:45)
                    Image(systemName:"backward.end.fill")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(width:39)
                    Image(systemName:"play.circle.fill")
                        .resizable()
                        .frame(width: 65, height: 65)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(width:45)
                    Image(systemName:"forward.end.fill")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(width:45)
                    Image(systemName:"repeat")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.white)
                    
                }
                Spacer()
                    .frame(height:20)
                HStack(alignment: .center) {
                    Image(systemName:"hifispeaker.2")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(width:260)
                    Image(systemName:"square.and.arrow.up")
                        .resizable()
                        .frame(width: 16, height: 22)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(width:30)
                    Image(systemName:"square.stack.3d.up")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.white)
                }
                Spacer()
                    .frame(height:30)
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(red: 0.9, green: 0.1, blue: 0.3))
                        .frame(width:350)
                    VStack{
                        Spacer();                        HStack{
                            Text("Lyrics preview")
                                .bold()
                                .font(.system(size: 17))
                                .foregroundStyle(.white)
                            Spacer()
                                .frame(width:210)
                        }
                        Spacer()
                            .frame(height:110)
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
