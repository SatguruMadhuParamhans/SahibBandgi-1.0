

import SwiftUI

@available(iOS 14.0, *)
let myColor = Color(#colorLiteral(red: 0.002305596368, green: 0.006928794086, blue: 0.1814588904, alpha: 1))
let lightPink = Color(#colorLiteral(red: 0.9952186942, green: 0.9027745128, blue: 0.8957005143, alpha: 1))
let lightGrey = Color(#colorLiteral(red: 0.9019607902, green: 0.9019607902, blue: 0.9019607902, alpha: 1))
let lightOrange = Color(#colorLiteral(red: 0.9831841588, green: 0.8905407786, blue: 0.7703413367, alpha: 1))



struct HomeView: View {
    @State private var showingMenu = false
    
    private var noOfImages = 5
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    
    var body: some View {
        

        ZStack {
            
            List {
                
                //                Text ("")
                //                    .padding(0)
                //                    .scaledToFit()
                //                    .background(Color.white)
                
                //                myColor.edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Button(action: {self.showingMenu.toggle()}) {
                            Image(systemName: "line.horizontal.3")
                                .foregroundColor(myColor)
                                .padding(.top)
                                .listRowSeparator(.hidden)
                                .listRowBackground(Color.blue)
                            //                        .lineSpacing(-40)
                            //                        .edgesIgnoringSafeArea(.all)
                        }
                        
                        Image("app_logo")
                            .frame(width: 330)
                            .scaledToFit()
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color.blue)
                            .padding(.top)
                            .scaledToFit()
                        //                            .lineSpacing(-30)
                        //                    .edgesIgnoringSafeArea(.all)
                        
                        //                .frame(width: 50.0, height: 50.0)
                        //                ScrollView{
                        
                        //                        .padding(.bottom)
                        
                        //                    Image("mobile_banner_1")
                        //                        .scaledToFit()
                        
                    }

                    
                    //                    Slideshow
//                    GeometryReader { proxy in
                        TabView(selection: $currentIndex) {
                            ForEach(2..<noOfImages) { num in
                                Image("mobile_banner_"+"\(num)")
                                    .resizable()
//                                    .scaledToFill()
                                //                                    .padding(.top)
                                    .tag(num)
                                    .listRowBackground(myColor)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle())
                        //                            .clipShape(Rectangle)
                        .padding(.top)
                        .frame(width: 350, height: 450)
//                        .frame(width: proxy.size.width, height: 475)
//                        .scaledToFit()
                        .onReceive(timer, perform: { _ in
                            currentIndex = currentIndex < noOfImages ? currentIndex + 1 : 0
                        })
//                    }
                    
                    Text("Welcome! You are about to discover about the only sect in the world, which guarantees you TOTAL INNER PEACE and PERMANENT SALVATION. In today's world everyone is so focused on their body\'s needs, that they have forgotten the real reason for their birth as human beings, i.e. to attain salvation. This has lead to a life full of STRESS, PRESSURES, TENSIONS, DECEIT, ANGER, ANXIETY, LUST etc.\n\nSant Satguru Madhu Paramhans Sahib endearingly called as 'Sahib Ji' guides soul of an individual to follow the path of Satya Bhakti by blessing one's soul with the holy alive 'Naam' using His ULTIMATE SPIRITUAL POWERS. Then they attain complete INNER PEACE and PERMANENT SALVATION.\n\nEstablished in 1992, Sahib Bandgi Spiritual Organisation is purely a non-profit organisation with no affiliation whatsoever to any commercial or political organisation, around the world. Come and explore 'PURE SPIRITUALITY' and get rid of all your vices.")
                    //                        .foregroundColor(.pink)
                        .font(.system(size: 20))
                        .padding(15)
                        .background(lightPink)
                        .minimumScaleFactor(0.05)
                    
                        Text("Satguru Madhu Paramhans")
                            .fontWeight(.heavy)
                            .font(.system(size: 20))
                            .padding(15)
                        
                        VideoView(videoID: "AoA5bOnNsSQ")
                            .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.5)
                            .cornerRadius(12)
                        
                        Text("His holiness Sadguru Madhu Paramhansji has served in the Indian army for 24 years. In 1967 at the age of 17, He joined Indian Army in Mahar Regiment and served the nation for 24 years till 1991. He retired as J.C.O (Junior Commissioned Officer) taking voluntary retirement from Indian Army. In 1970, at the age of 20, He started his journey towards awakening the souls with true knowledge of creation of the universe, purpose of its creation, how life was formed (jeevas), how different species were created, how they were bound by Kal Nirajan so that no jeeva can escape this creation and how humans can escape from this worldly ocean once they are blessed with 'Alive Holy Naam' (Saar Naam / Sajeevan Naam) through his spiritual discourses (Satsang). He started blessing the devotees with the real 'Saar Naam'. The only objective of Satguru is to liberate the souls of the Supreme Lord from the trap of the formless Mind (Nirakaar mann) and body (Maya) by making individual soul realise about the real motive and importance of human life. That's why He says: 'The thing that I possess, cannot be found anywhere in this Universe'.")
                            .font(.system(size: 20))
                            .padding(15)
                            .background(lightGrey)
                            .minimumScaleFactor(0.05)
                        
                        
                        Text("Our Social Endavours")
                            .fontWeight(.heavy)
                            .font(.system(size: 20))
                            .padding(15)
                        VideoView(videoID: "6kK6p8GLllU")
                        .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                            .cornerRadius(12)
                        
                        //Slideshow
                        TabView(selection: $currentIndex) {
                            ForEach(1..<noOfImages) { num in
                                Image("social_endeavors_app"+"\(num)")
                                    .resizable()
                                //                                    .scaledToFit()
                                    .tag(num)
                                    .listRowBackground(myColor)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle())
                        //                            .clipShape(Rectangle)
                        //                            .padding()
                        //                        .frame(minWidth: 0, maxWidth: UIScreen.main.bounds.height)
                        .frame(width: 300, height: 300)
                        //                    .padding()
                        //                            .frame(width: proxy.size.width)
                        .onReceive(timer, perform: { _ in
                            currentIndex = currentIndex < noOfImages ? currentIndex + 1 : 0
                        })
                        
                }
                
                VStack {
                    Text("----------Reach Us at----------")
                        .font(.system(size: 18))
                        .bold()
                        .padding()
                    
                    HStack {
                        Text("")
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://www.youtube.com/user/SahibBandgi") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image("social_youtube")
                        }.padding()
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://www.instagram.com/sahib_bandgi_official/") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image("social_instagram")
                        }.padding()
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://www.facebook.com/sahibbandgi.jammu/") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image("social_facebook")
                        }.padding()
                        
                        Button(action: {
                            
                            if let yourURL = URL(string: "https://t.me/s/SahibBandgiofficial") {
                                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                            }
                            
                        }) {
                            Image("social_telegram")
                        }.padding()
                        
                    }
                    
                }
                
                

                    

                //Floating Action Buttons
                //
                //                VStack {
                //                    Spacer()
                //
                //                    HStack {
                //                        //Spacer()
                //
                //                        Button(action: {if let url = URL(string: "https://sahibbandgi.org/sahibBandgi-videoSatsang.htm") {
                //                            openURL(url)
                //                        }
                //                        }
                //                            , label: {
                //                            Image(systemName: "person.fill")
                //                                .font(.system(.largeTitle))
                //                                .frame(width: 65, height: 50)
                //                                .foregroundColor(Color.white)
                //                                .padding(.bottom, 7)
                //                        })
                //                    .background(Color.blue)
                //                    .cornerRadius(0)
                //.padding()
                //.shadow(color: Color.black.opacity(0.3),
                //                            radius: 3,
                //                            x: 3,
                //                            y: 3)
                //
                //                        //2nd button
                //                        Button(action: {if let url = URL(string: "https://sahibbandgi.org/sahibBandgi-bhajans.htm") {
                //                            openURL(url)
                //                        }
                //                        }, label: {
                //                            Image(systemName: "person.fill")
                //                                .font(.system(.largeTitle))
                //                                .frame(width: 65, height: 50)
                //                                .foregroundColor(Color.white)
                //                                .padding(.bottom, 7)
                //                        })
                //                        //                    .background(Color.blue)
                //                        //                    .cornerRadius(0)
                //                        //.padding()
                //                        //.shadow(color: Color.black.opacity(0.3),
                //                        //                            radius: 3,
                //                        //                            x: 3,
                //                        //                            y: 3)
                //
                //                        //3rd button
                //                        Button(action: {if let url = URL(string: "https://sahibbandgi.org/sahibBandgi-eBooks.htm") {
                //                            openURL(url)
                //                        }
                //                        }, label: {
                //                            Image(systemName: "person.fill")
                //                                .font(.system(.largeTitle))
                //                                .frame(width: 65, height: 50)
                //                                .foregroundColor(Color.white)
                //                                .padding(.bottom, 7)
                //                        })
                //                        //                    .background(Color.blue)
                //                        //                    .cornerRadius(0)
                //                        //.padding()
                //                        //.shadow(color: Color.black.opacity(0.3),
                //                        //                            radius: 3,
                //                        //                            x: 3,
                //                        //                            y: 3)
                //
                //                        //4th button
                //                        Button(action: {if let url = URL(string: "https://sahibbandgi.org/sahibBandgi-pictures.htm") {
                //                            openURL(url)
                //                        }
                //                        }, label: {
                //                            Image(systemName: "person.fill")
                //                                .font(.system(.largeTitle))
                //                                .frame(width: 65, height: 50)
                //                                .foregroundColor(Color.white)
                //                                .padding(.bottom, 7)
                //                        })
                //                        //                    .background(Color.blue)
                //                        //                    .cornerRadius(0)
                //                        //.padding()
                //                        //.shadow(color: Color.black.opacity(0.3),
                //                        //                            radius: 3,
                //                        //                            x: 3,
                //                        //                            y: 3)
                //
                //                        //5th button
                //
                //                        Button(action: {if let url = URL(string: "https://sahibbandgi.org/sahibBandgi-calendar.htm") {
                //                            openURL(url)
                //                        }
                //                        }, label: {
                //                            Image(systemName: "person.fill")
                //                                .font(.system(.largeTitle))
                //                                .frame(width: 65, height: 50)
                //                                .foregroundColor(Color.white)
                //                                .padding(.bottom, 7)
                //                        })
                //                        //                    .background(Color.blue)
                //                        //                    .cornerRadius(0)
                //                        //.padding()
                //                        //.shadow(color: Color.black.opacity(0.3),
                //                        //                            radius: 3,
                //                        //                            x: 3,
                //                        //                            y: 3)
                //                    }
                ////
                //                }
            }
            .offset(x: showingMenu ? 200.0 : 0.0, y: 0)
            .animation(.easeOut)
            
        
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
