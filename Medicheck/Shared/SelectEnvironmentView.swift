import SwiftUI

struct SelectEnvironmentView: View {
    @State private var url: URL?
    @State private var customURLString = "https://app-develop.medicheck.se/"
    private let developmentURL = URL(string: "https://app-develop.medicheck.se/")!

    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    WebViewWrapper(url: URL(string: "https://app-release.medicheck.se/")!)
                } label: {
                    Text("Produktion")
                        .buttonStyle(PlainButtonStyle())
                }
                NavigationLink {
                    WebViewWrapper(url: developmentURL)
                } label: {
                    Text("Development")
                        .buttonStyle(PlainButtonStyle())
                }
                NavigationLink {
                    WebViewWrapper(url: URL(string: customURLString) ?? developmentURL)
                } label: {
                    VStack(alignment: .leading) {
                        Text("Custom URL")
                        HStack {
                            TextField("", text: $customURLString, prompt: nil)
                                .textFieldStyle(.roundedBorder)
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
//                                .foregroundColor(.gray)
                            Text("Go")
                                .foregroundColor(.blue)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .navigationTitle("Select environment")
        }
//        .navigationBarHidden(true)
    }
}

struct SelectEnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        SelectEnvironmentView()
    }
}
