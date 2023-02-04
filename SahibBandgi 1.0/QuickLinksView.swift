//
//  AboutView.swift
//  SahibBandgi 1.0
//
//  Created by Sahibji on 17/01/23.
//

import SwiftUI

struct QuickLinksView: View {
    @State private var showingMenu = false
    var body: some View {
        ZStack {
            
            Color.white.edgesIgnoringSafeArea(
                .all)
            VStack(alignment: .leading) {
                Button(action: {self.showingMenu.toggle()}) {
                    Image(systemName: "line.horizontal.3")
                        .foregroundColor(myColor)
                }
                .frame(width: 50.0, height: 50.0)
                Spacer()
                
                
                Text("Quick Links to Website")
                    .font(
                        .system(size: 30))
                    .bold()
                    .foregroundColor(
                        Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(myColor)
                
                ScrollView{
                    HStack{
                        
                    //                Button 1
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-videoSatsang.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image(systemName: "video.bubble.left")
                        }.font(.system(size: 40))
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(myColor)
                                )
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-videoSatsang.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Text("Satsang Videos")
                        }.font(.system(size: 25)).foregroundColor(myColor)
                        
                        Spacer()
                        
                    }.padding()
                    
                    //                Button 2
                    
                    HStack{
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.com/sahibBandgi-audioSatsang.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image(systemName: "waveform.circle.fill")
                        }.font(.system(size: 40))
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(myColor)
                                )
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.com/sahibBandgi-audioSatsang.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Text("Satsang Audios")
                        }.font(.system(size: 25)).foregroundColor(myColor)
                        
                        Spacer()
                        
                    }.padding()
                    
                    //                Button 3
                    
                    HStack{
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image(systemName: "music.note")
                        }.font(.system(size: 40))
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(myColor)
                            )
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Text("Bhajans")
                        }.font(.system(size: 25)).foregroundColor(myColor)
                        
                        Spacer()
                        
                    }.padding()
                    
                    
                    //                Button 4
                    
                    HStack{
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image(systemName: "music.note")
                        }.font(.system(size: 40))
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(myColor)
                            )
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Text("Bhajan Playlist")
                        }.font(.system(size: 25)).foregroundColor(myColor)
                        
                        Spacer()
                        
                    }.padding()
                    
                    
                    //                Button 5
                    
                    HStack{
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image(systemName: "music.note")
                        }.font(.system(size: 40))
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(myColor)
                            )
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Text("Ebooks")
                        }.font(.system(size: 25)).foregroundColor(myColor)
                        
                        Spacer()
                        
                    }.padding()
                    
                    
                    //                Button 6
                    
                    HStack{
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image(systemName: "music.note")
                        }.font(.system(size: 40))
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(myColor)
                            )
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Text("Pics & Wallpaper")
                        }.font(.system(size: 25)).foregroundColor(myColor)
                        
                        Spacer()
                        
                    }.padding()
                    
                    
                    //                Button 7
                    
                    HStack{
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image(systemName: "music.note")
                        }.font(.system(size: 40))
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(myColor)
                            )
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Text("Calendar")
                        }.font(.system(size: 25)).foregroundColor(myColor)
                        
                        Spacer()
                        
                    }.padding()
                    
                }
                
            }.padding(.horizontal) .frame(maxWidth: .infinity)
        }
        .offset(x: showingMenu ? 200.0 : 0.0, y: 0)
        .animation(.easeOut)
    }
}

struct QuickLinksView_Previews: PreviewProvider {
    static var previews: some View {
        QuickLinksView()
    }
}
