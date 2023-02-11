import SwiftUI



struct AccountView: View {
    @State var notificationToggle: Bool = false
    @State var locationUsage: Bool = false
    @State var username: String = "Dias"

    
    var body: some View {
        GeometryReader { g in
            VStack {
                Image("spiderman")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding(.bottom, 10)
                Text("Dias Ibragim")
                    .font(.system(size: 20))
                    
                Form {
                    
                   
                    Section(header: Text("Personal Information")) {
                        
                        GeometryReader { g in
                            ZStack {
                                VStack (alignment: .leading){
                                    Text("Name: Dias")
                                        .padding(.top, 5)
                                        .padding(.leading, 18)
                                        .font(.system(size: 20, weight: .bold, design: Font.Design.default))
                                        .foregroundColor(Color.black)
                                    
                                    
                                        
                                    ScrollView (.horizontal, showsIndicators: false) {
                                        HStack (spacing: 10) {
                                            
                                           
                                            
                                        }.padding(.leading, 18)
                                        .padding(.trailing, 18)
                                            .padding(.top, 25)
                                    }
                                    
                                     Spacer()
                                }
                                }
                                
                            }
                        GeometryReader { g in
                            ZStack {
                                VStack (alignment: .leading){
                                    Text("Surname: Ibragim")
                                        .padding(.top, 5)
                                        .padding(.leading, 18)
                                        .font(.system(size: 20, weight: .bold, design: Font.Design.default))
                                        .foregroundColor(Color.black)
                               
                                    ScrollView (.horizontal, showsIndicators: false) {
                                        HStack (spacing: 10) {
                                        
                                        }.padding(.leading, 18)
                                        .padding(.trailing, 18)
                                            .padding(.top, 25)
                                    }
                                    
                                     Spacer()
                                }
                                }
                                
                            }
                        GeometryReader { g in
                            ZStack {
                                VStack (alignment: .leading){
                                    Text("Age: 18")
                                        .padding(.top, 5)
                                        .padding(.leading, 18)
                                        .font(.system(size: 20, weight: .bold, design: Font.Design.default))
                                        .foregroundColor(Color.black)
                               
                                    ScrollView (.horizontal, showsIndicators: false) {
                                        HStack (spacing: 10) {
                                        
                                        }.padding(.leading, 18)
                                        .padding(.trailing, 18)
                                            .padding(.top, 25)
                                    }
                                    
                                     Spacer()
                                }
                                }
                                
                            }
                        GeometryReader { g in
                            ZStack {
                                VStack (alignment: .leading){
                                    Text("Group: SE-2116")
                                        .padding(.top, 5)
                                        .padding(.leading, 18)
                                        .font(.system(size: 20, weight: .bold, design: Font.Design.default))
                                        .foregroundColor(Color.black)
                               
                                    ScrollView (.horizontal, showsIndicators: false) {
                                        HStack (spacing: 10) {
                                        
                                        }.padding(.leading, 18)
                                        .padding(.trailing, 18)
                                            .padding(.top, 25)
                                    }
                                    
                                     Spacer()
                                }
                                }
                                
                            }
                        GeometryReader { g in
                            ZStack {
                                VStack (alignment: .leading){
                                    Text("Hero: Spider-Man")
                                        .padding(.top, 5)
                                        .padding(.leading, 18)
                                        .font(.system(size: 20, weight: .bold, design: Font.Design.default))
                                        .foregroundColor(Color.black)
                               
                                    ScrollView (.horizontal, showsIndicators: false) {
                                        HStack (spacing: 10) {
                                        
                                        }.padding(.leading, 18)
                                        .padding(.trailing, 18)
                                            .padding(.top, 25)
                                    }
                                    
                                     Spacer()
                                }
                                }
                                
                            }
                                                
                        
                        
                    }
                    NavigationLink(destination: TextView()) {
                                     Text("API JSON")
                    
                                }.padding(.top, 5)
                        .padding(.leading, 18)
                        .font(.system(size: 20, weight: .bold, design: Font.Design.default))
                        .foregroundColor(Color.black)
                    
                    
                   
                    
                
                        
            }.background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
            .navigationBarTitle("Account")
         }
        }
    }
 }

