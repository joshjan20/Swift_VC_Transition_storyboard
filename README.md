To create a simple Swift application with two view controllers where the first view controller pushes the second view controller, you can follow these steps in Xcode:

### Steps to Create the Application

1. **Create a New Xcode Project**:
   - Open Xcode and choose **Create a new Xcode project**.
   - Select **App** under the iOS section and click **Next**.
   - Enter your project name (e.g., `TwoViewControllersApp`), select **Storyboard** for the Interface, and choose **Swift** as the language. Click **Next**.
   - Choose a location to save your project and click **Create**.

2. **Set Up the Main Interface**:
   - Open `Main.storyboard`. You will see a default view controller.

3. **Add a Second View Controller**:
   - In the Object Library (right pane), search for **View Controller**.
   - Drag a new **View Controller** onto the storyboard.

4. **Create a Segue Between the View Controllers**:
   - Control-drag from the **First View Controller** (the initial one) to the **Second View Controller**.
   - Select **Show** from the context menu that appears. This creates a segue between the two view controllers.

5. **Set Up the First View Controller**:
   - Select the **First View Controller**, and in the Attributes Inspector, set its **Storyboard ID** to `FirstViewController` (you can set this in the Identity Inspector).
   - Add a button to the first view controller. This button will trigger the transition to the second view controller.
   - Create an `IBAction` for the button in the `FirstViewController.swift`.

6. **Create Swift Files for the View Controllers**:
   - Right-click on the project folder in the Project Navigator and select **New File** -> **Swift File**. Name it `FirstViewController.swift`.
   - Repeat the process and create `SecondViewController.swift`.

### Example Code for the View Controllers

Here’s how you can set up your view controllers:

**FirstViewController.swift**:
```swift
import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Create and configure a button
        let button = UIButton(type: .system)
        button.setTitle("Go to Second View Controller", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        
        // Set button constraints
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func buttonTapped() {
        // Perform the segue to the second view controller
        performSegue(withIdentifier: "showSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondVC" {
            // You can pass data to the second view controller if needed
        }
    }
}
```

**SecondViewController.swift**:
```swift
import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        // Add a label to the second view
        let label = UILabel()
        label.text = "This is the Second View Controller"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        // Set label constraints
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
```

### 7. Set the Segue Identifier

1. **Select the Segue**:
   - Click on the segue line between the two view controllers in the storyboard.

2. **Set the Identifier**:
   - In the **Attributes Inspector**, set the **Identifier** to `showSecondVC`.

### 8. Run Your Application

- Select a simulator or a physical device.
- Click the **Run** button (▶️) in Xcode to build and run your app.

### Complete Project Structure

Your project should now look like this:

```
TwoViewControllersApp
├── TwoViewControllersApp.xcodeproj
├── AppDelegate.swift
├── SceneDelegate.swift
├── FirstViewController.swift
├── SecondViewController.swift
└── Main.storyboard
```

### Conclusion

You have now created a simple Swift application with two view controllers where tapping a button on the first view controller pushes the second view controller. You can further customize the views, add more functionality, or modify the UI as needed.

If you have any questions or need further assistance, feel free to ask! 😊  

