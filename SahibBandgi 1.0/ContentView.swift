

    import SwiftUI


    class MenuContent: Identifiable, ObservableObject {
        var id = UUID()
        var name: String = ""
        var image: String = ""
        
        init(name: String, image: String) {
            self.name = name
            self.image = image
        }
    }

struct ContentView: View {
    var menu: [MenuContent] = menuContents
    @State var menuItemSelected: MenuContent = menuContents[0]
    
    @Environment(\.openURL) private var openURL
    
    var body: some View {
            ZStack {
                List(menu) { menuItem in
                    MenuCell(menuItem: menuItem).onTapGesture {
                        self.menuItemSelected = menuItem
                    }
                }
                self.selected(Menu: menuItemSelected)
            }
            
        }
        
        
        func selected(Menu: MenuContent) -> some View {
            switch Menu.name {
            case "Home":
                return AnyView(HomeView())
             
            case "Quick Links":
                return AnyView(QuickLinksView())
                
            case "About":
                return AnyView(AboutView())
                
            case "Ideology":
                return AnyView(IdeologyView())
                
            case "Mission":
                return AnyView(MissionView())
                
            case "Trust":
                return AnyView(TrustView())
                
            case "Satguru":
                return AnyView(SatguruView())
                
            case "Kabir Sahib":
                return AnyView(KabirSahibView())
                
            case "FAQs":
                return AnyView(FAQsView())
                
            case "Guru vs Satguru":
                return AnyView(GuruVsSatguruView())
                
            case "Parampurush vs Niranjan":
                return AnyView(ParampurushVsNiranjanView())
                
            case "TV Channels":
                return AnyView(TVChannelsView())
                
            case "Ashram Contacts":
                return AnyView(AshramContactsView())
                
            case "Privacy Policy":
                return AnyView(PrivacyView())
            default:
                return AnyView(HomeView())
            }
        }
//    }
}


    #if DEBUG
    let menuHome = MenuContent(name: "Home", image: "house.fill")
    let menuQuickLinks = MenuContent(name: "Quick Links", image: "house.fill")
    let menuAbout = MenuContent(name: "About", image: "person.fill")
    let menuIdeology = MenuContent(name: "Ideology", image: "person.fill")
    let menuMission = MenuContent(name: "Mission", image: "message.fill")
    let menuTrust = MenuContent(name: "Trust", image: "power")
    let menuSatguru = MenuContent(name: "Satguru", image: "power")
    let menuKabirSahib = MenuContent(name: "Kabir Sahib", image: "power")
    let menuFAQs = MenuContent(name: "FAQs", image: "power")
    let menuGuruVsSatguru = MenuContent(name: "Guru vs Satguru", image: "power")
    let menuParampurushVsNiranjan = MenuContent(name: "Parampurush vs Niranjan", image: "power")
    let menuTVChannels = MenuContent(name: "TV Channels", image: "power")
    let menuAshramContacts = MenuContent(name: "Ashram Contacts", image: "power")
    let menuPrivacy = MenuContent(name: "Privacy Policy", image: "power")
    let menuContents = [menuHome, menuQuickLinks,menuAbout, menuIdeology, menuMission, menuTrust, menuSatguru, menuKabirSahib, menuFAQs, menuGuruVsSatguru, menuParampurushVsNiranjan, menuTVChannels, menuAshramContacts, menuPrivacy]

    struct ContentView_Previews: PreviewProvider {
        
        static var previews: some View {
            ContentView(menu: menuContents)
        }
    }
    #endif

    struct MenuCell: View {
        var menuItem: MenuContent = menuContents[0]
        var body: some View {
            HStack {
                Image(systemName: menuItem.image)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                Text(menuItem.name).foregroundColor(.orange)
            }
        }
    }


