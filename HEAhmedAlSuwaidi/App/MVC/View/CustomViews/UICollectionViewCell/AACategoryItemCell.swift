

import UIKit

class AACategoryItemCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func populateData(_ article: AACategoryArticleModel?) {
        if article != nil {
            imageView.contentMode = .scaleToFill
            let imageurl = imageUrl + (article?.articleId)! + ".jpg";
            imageView.sd_setImage(with: URL(string: imageurl), placeholderImage: UIImage(named: "placeholder_img"))
        }
    }
}
