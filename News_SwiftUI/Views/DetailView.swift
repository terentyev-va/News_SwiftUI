//
//  DetailView.swift
//  News_SwiftUI
//
//  Created by Вячеслав Терентьев on 09.08.2022.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlsString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


