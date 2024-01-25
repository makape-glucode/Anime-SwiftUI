//import Foundation
//import SwiftUI
//
//class ImageManager {
//    static let shared = ImageManager()
//    
//    private init() {}
//    
//    func loadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data, error == nil else {
//                completion(nil)
//                return
//            }
//            let image = UIImage(data: data)
//            completion(image)
//        }.resume()
//    }
//    
//    func saveImage(_ image: UIImage, withName name: String) {
//        if let data = image.pngData(),
//           let imageURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("\(name).png") {
//            do {
//                try data.write(to: imageURL)
//                print("Image saved at: \(imageURL)")
//            } catch {
//                print("Error saving image: \(error)")
//            }
//        }
//    }
//}
