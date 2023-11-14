//
//  WebViewController.swift
//  Vitor_RM84808
//
//  Created by Usuário Convidado on 07/11/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var meuWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

       meuWebView.navigationDelegate = self
    

        let url = URL(string: "https://www.vive.com/us")
        let request = URLRequest(url: url!)
        meuWebView.load(request)
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print("Errooooooooooooooo de \(error.localizedDescription)")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
