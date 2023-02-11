import SwiftUI
import Combine
import Firebase
import FirebaseAuth

class UserSettings: ObservableObject {
    @Published var loggedIn : Bool = false
    @Published var navigateNowToLogIn: Bool = false
    @Published var navigateNowToSignup: Bool = false
}

struct StartView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        if settings.loggedIn {
            return AnyView(TabbarView())
        }else {
            return AnyView(ContentView())
        }
    }
}

struct OnboardingModel {
    var id: Int
    var image: String
    var titleText: String
    var descriptionText: String
    var showButton: Bool?
}
//struct ContentView: View {
//
//    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
//
//    var body: some View {
//
//        VStack{
//
//            if status{
//
//                Home()
//            }
//            else{
//
//                SignIn()
//            }
//
//        }.animation(.spring())
//            .onAppear {
//
//                NotificationCenter.default.addObserver(forName: NSNotification.Name("statusChange"), object: nil, queue: .main) { (_) in
//
//                    let status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
//                    self.status = status
//                }
//        }
//
//    }
//}
struct ContentView: View {
    
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        
        VStack{
            
            if status{
                
                TabbarView()
            }
            else{
                
                SignIn()
            }
            
        }.animation(.spring())
            .onAppear {
                
                NotificationCenter.default.addObserver(forName: NSNotification.Name("statusChange"), object: nil, queue: .main) { (_) in
                    
                    let status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
                    self.status = status
                }
        }
        
    }
}
struct Home : View {
    
    var body : some View{
        
        VStack{
            
            Text("Home")
            Button(action: {
                UserDefaults.standard.set(false, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                
            }) {
                
                Text("Logout")
            }
        }
    }
}
struct OnboardingView: View {
    var onboardingData: OnboardingModel
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 10) {
                Spacer()
                Image("\(self.onboardingData.image)")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: ContentMode.fill)
                    .clipShape(Circle())
                    .padding(20)
                
                Text("\(self.onboardingData.titleText)")
                    .frame(width: geometry.size.width, height: 20, alignment: .center)
                    .font(.title)
                
                Text("\(self.onboardingData.descriptionText)")
                    .lineLimit(nil)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .font(.system(size: 16))
                    .frame(width: geometry.size.width, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                
//                Spacer(minLength: 20)
    
                
                Spacer()
            }
        }
    }
}

struct SignIn : View {
    
    @State var user = ""
    @State var pass = ""
    @State var message = ""
    @State var alert = false
    @State var show = false
    
    var body : some View{
        VStack {
            VStack{
                Text("Sign In").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20)
                
                VStack(alignment: .leading){
                    
                    VStack(alignment: .leading){
                        
                        Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                        
                        HStack{
                            
                            TextField("Enter Your Username", text: $user)
                            
                            if user != ""{
                                
                                Image("check").foregroundColor(Color.init(.label))
                            }
                            
                        }
                        
                        Divider()
                        
                    }.padding(.bottom, 15)
                    
                    VStack(alignment: .leading){
                        
                        Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                        
                        SecureField("Enter Your Password", text: $pass)
                        
                        Divider()
                    }
                    
                }.padding(.horizontal, 6)
                
                Button(action: {
                    
                    signInWithEmail(email: self.user, password: self.pass) { (verified, status) in
                        
                        if !verified {
                            
                            self.message = status
                            self.alert.toggle()
                        }
                        else{
                            
                            UserDefaults.standard.set(true, forKey: "status")
                            NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                        }
                    }
                    
                }) {
                    
                    Text("Sign In").foregroundColor(.green).frame(width: UIScreen.main.bounds.width - 120).padding()
                    
                    
                }.background(Color("color"))
                    .clipShape(Capsule())
                    .padding(.top, 45)
                
            }.padding()
                .alert(isPresented: $alert) {
                    
                    Alert(title: Text("Error"), message: Text(self.message), dismissButton: .default(Text("Ok")))
            }
            VStack{
                
                Text("(or)").foregroundColor(Color.gray.opacity(0.5)).padding(.top,30)
                
                
                HStack(spacing: 8){
                    
                    Text("Don't Have An Account ?").foregroundColor(Color.gray.opacity(0.5))
                    
                    Button(action: {
                        
                        self.show.toggle()
                        
                    }) {
                        
                        Text("Sign Up")
                        
                    }.foregroundColor(.blue)
                    
                }.padding(.top, 25)
                
            }.sheet(isPresented: $show) {
                
                SignUp(show: self.$show)
            }
        }
    }
}

struct SignUp : View {
    
    @State var user = ""
    @State var pass = ""
    @State var message = ""
    @State var alert = false
    @Binding var show : Bool
    
    var body : some View{
        
        VStack{
            Text("Sign Up").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20)
            
            VStack(alignment: .leading){
                
                VStack(alignment: .leading){
                    
                    Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                    
                    HStack{
                        
                        TextField("Enter Your Username", text: $user)
                        
                        if user != ""{
                            
                            Image("check").foregroundColor(Color.init(.label))
                        }
                        
                    }
                    
                    Divider()
                    
                }.padding(.bottom, 15)
                
                VStack(alignment: .leading){
                    
                    Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                    
                    SecureField("Enter Your Password", text: $pass)
                    
                    Divider()
                }
                
            }.padding(.horizontal, 6)
            
            Button(action: {
                
                signUpWithEmail(email: self.user, password: self.pass) { (verified, status) in
                    
                    if !verified{
                        
                        self.message = status
                        self.alert.toggle()
                        
                    }
                    else{
                        
                        UserDefaults.standard.set(true, forKey: "status")
                        
                        self.show.toggle()
                        
                        NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                    }
                }
                
            }) {
                
                Text("Sign Up").foregroundColor(.green).frame(width: UIScreen.main.bounds.width - 120).padding()
                
                
            }.background(Color("color"))
                .clipShape(Capsule())
                .padding(.top, 45)
            
        }.padding()
            .alert(isPresented: $alert) {
                
                Alert(title: Text("Error"), message: Text(self.message), dismissButton: .default(Text("Ok")))
        }
    }
}
func signInWithEmail(email: String,password : String,completion: @escaping (Bool,String)->Void){
    
    Auth.auth().signIn(withEmail: email, password: password) { (res, err) in
        
        if err != nil{
            
            completion(false,(err?.localizedDescription)!)
            return
        }
        
        completion(true,(res?.user.email)!)
    }
}
func signUpWithEmail(email: String,password : String,completion: @escaping (Bool,String)->Void){
    
    Auth.auth().createUser(withEmail: email, password: password) { (res, err) in
        
        if err != nil{
            
            completion(false,(err?.localizedDescription)!)
            return
        }
        
        completion(true,(res?.user.email)!)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
