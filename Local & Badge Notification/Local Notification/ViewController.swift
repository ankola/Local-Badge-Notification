
import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, Error in})
    }
    
    @IBAction func clickBtn(sender : UIButton){
        let content = UNMutableNotificationContent()
        content.title = "The 5 Second Are Up"
        content.subtitle = "the 5 second are up"
        content.body = "body are here"
        content.badge = 25
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "Timer Done", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }

}

