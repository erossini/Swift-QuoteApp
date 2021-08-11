//
//  QuoteDetailViewController.swift
//  QuoteApp
//
//  Created by Enrico Rossini on 11/08/2021.
//

import UIKit

class QuoteDetailViewController: UIViewController {

    var quote = ""
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        quoteLabel.text = quote
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let quoteViewController = segue.destination as? QuoteDetailViewController {
            if let selectedQuote = sender as? String {
                quoteViewController.quote = selectedQuote
            }
        }
    }
}
