//
//  PageModel.swift
//  Fetch Data
//
//  Created by Irish on 2/20/21.
//

import Foundation

protocol PageModelDelegate {
    func fetchPage(page: Page)
}
class PageModel {
    
    var delegate: PageModelDelegate?
    
    func fetchAboutPage() {
        
        let url = URL(string: "https://mm.qa/demosite/wp-json/wp/v2/pages/2")
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { (data, response, error) in
            
            if error == nil && data != nil {
                
                do {
                    let decoder = JSONDecoder()
                    let page = try decoder.decode(Page.self, from: data!)
                    
                    DispatchQueue.main.async {
                        self.delegate?.fetchPage(page: page)
                    }
                } catch {
                    print("can't parse ")
                }
                
            }
        }
        
        task.resume()
        
    }
    
}
