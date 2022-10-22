
import UIKit
import AVKit
class ViewControllerImage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func returnButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    @IBAction func showVideoButton(_ sender: UIButton) {
        if let ruta = Bundle.main.path(forResource: "Lemons", ofType: "mp4"){
            let player = AVPlayerViewController()
            let video = AVPlayer(url: URL(filePath:ruta))
            player.player = video
            present(player, animated: true, completion:{
                video.play()
            })
        }
        else{
            let alerta = UIAlertController(title: "Error", message: "No se encontró el video", preferredStyle: UIAlertController.Style.alert)
            alerta.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
            self.present(alerta, animated: true, completion: nil)
        }
    }
}
