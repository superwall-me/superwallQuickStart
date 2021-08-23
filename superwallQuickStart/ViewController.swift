//
//  ViewController.swift
//  superwallQuickStart
//
//  Created by Justin Hilliard on 8/22/21.
//

import UIKit
import Paywall
import StoreKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        
        Paywall.delegate = self
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        Paywall.identify(userId: "xyz")
        Paywall.track(.userAttributes(standard: [.email: "hello"], custom: [:]))
        Paywall.present(on: self, cached: false, presentationCompletion: nil, fallback: nil)
    }
    
    private func setUI(){
        view.backgroundColor = .cyan
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 350, height: 400))
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        label.center = CGPoint(x: (screenWidth / 2) , y: (screenHeight / 2) - 100)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "1. Add an API Key in the app delegate \n 2. Create a Paywall in the UI.  For the quick start, you can use the URL (https://www.nest22.com/templateb/untitled) \n 3. Tap the screen to present a paywall"
        self.view.addSubview(label)
    }

}


extension ViewController: PaywallDelegate {
    func userDidInitiateCheckout(for product: SKProduct) {
        
    }
    
    func shouldTryToRestore() {
        
    }
    
    func userDidInitiateCheckout(for product: SKProduct, purchaseCompleted: @escaping () -> (), checkoutAbandoned: @escaping () -> (), errorOccurred: @escaping (NSError) -> ()) {
        
    }
    

    func userDidInitiateCheckout(forProductWithId id: String,
                                 purchaseCompleted: () -> (),
                                 checkoutAbandoned: () -> (),
                                 errorOccurred: (NSError) -> ()) {

    }

    func userDidInitiateRestore(restoreSucceeded: (Bool) -> ()) {

    }
}
