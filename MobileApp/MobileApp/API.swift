import SwiftUI

struct TextView: View {
    
    @State var models: [Response1Model] = []
    
    var body: some View {
        VStack {
            List (models) { (model) in
                Text(model.customerName ?? "").bold()
                Text(model.country ?? "")
            }
        }.onAppear(perform: {
            do {
                guard let url: URL = Bundle.main.url(forResource: "data", withExtension: "json") else {
                    print("data.json not found")
                    return
                }
                
                let data: Data = try Data(contentsOf: url)
                self.models = try JSONDecoder().decode([Response1Model].self, from: data)
                
            } catch {
                print(error.localizedDescription)
            }
        })
    }
}

class Response1Model: Codable, Identifiable {
    var customerName: String? = ""
    var country: String? = ""
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
