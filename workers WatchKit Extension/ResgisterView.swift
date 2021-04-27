import SwiftUI

struct RegisterView: View {
    var body: some View {
        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Choose worker id")) {
            Text("Worker 1").tag(1)
            Text("Worker 2").tag(2)
            Text("Worker 3").tag(3)
            Text("Worker 4").tag(4)
        }
        HKUnit
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
