//
//  ViewController.swift
//  ZST
//
//  Created by Сева on 15.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var input_name: UITextField!
    @IBOutlet weak var Login_succseed_btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self,selector: #selector(keyboardWasShow(_:)),
                                               name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasHide(_:)),
                                               name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }


    @objc func keyboardWasShow(_ notification: Notification){
        let info = notification.userInfo! as NSDictionary
        let keyboardSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as? NSValue)?.cgRectValue
        let keyboardInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize?.height ?? 0, right: 0)
        
        scrollView.contentInset = keyboardInset
        scrollView.scrollIndicatorInsets = keyboardInset
        scrollView.scrollRectToVisible(Login_succseed_btn.frame, animated: true)
    }
    func checkAyth() -> Bool{
        return !(input_name.text ?? "").isEmpty
    }
    
    func showAuthErr(){
        let alertVC = UIAlertController(title: "Error", message: "You'r not prepared", preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "ok", style: .cancel, handler: nil)
        alertVC.addAction(okAlert)
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @objc func keyboardWasHide(_ notification: Notification){
        scrollView.contentInset = .zero
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "tabBarVC" && checkAyth() {
            return true
        } else {
            showAuthErr()
            return false
        }
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "tabBarVC"{
//            if let destinationVC = segue.destination as TabBarViewController{
//
//            }
//        }
//    }
}

