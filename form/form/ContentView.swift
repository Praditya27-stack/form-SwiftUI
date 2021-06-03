import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section() {
                    NavigationLink(destination: About()){
                        HStack {
                            Image("foto")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                
                            VStack(alignment: .leading) {
                                Text("Muhammad Praditya Abyan").font(.headline)
                                Text("IOS Developer").font(.caption)
                            }
                        }
                    }
                    
                    .padding(.top,10)
                    .padding(.bottom,10)
                }
                
                Section(header : Text("General Arrangement")){
                    NavigationLink(destination: About()){
                        HStack(spacing: 20) {
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Starred Messages")
                            
                        }
                    }
                    
                    NavigationLink(destination: About()){
                        HStack(spacing: 20) {
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Whatsapp Web")
                        }
                    }
                    
                }
                
                Section(header : Text("Account Settings")){
                    NavigationLink(destination: About()){
                        HStack(spacing: 20) {
                            Image(systemName: "person")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Account")
                            
                        }
                        
                    }
                    NavigationLink(destination: About()){
                        HStack(spacing: 20) {
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Chat")
                        }
                    }
                    
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About: View {
    var body: some View {
        Text("Ini Adalah Halaman About")
    }
}
