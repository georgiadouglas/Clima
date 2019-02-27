

import UIKit

protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
    func userWantsWind(windOn: Bool)
}

class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    //IB Outlet to texted field
    @IBOutlet weak var changeCityTextField: UITextField!
    
    //when user clicks on "get weather"
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
        delegate?.userWantsWind(windOn: sender.isOn)
    }
    
    @IBOutlet weak var faren: UISwitch!
    
    
    //taps back button, dismisses ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
}
}
