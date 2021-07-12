//верстка ячейки таблицы
import UIKit


class PostTableViewCell: UITableViewCell {
    
    
    var post: ProfilePost? {
        didSet {
            postImage.image = post?.image
            postAuthor.text = post?.author
            postDescription.text = post?.description
            postLikesCounter.text = String(post?.likes ?? 0)
        }
    }
    
    
    let postAuthor: UILabel = {
        let author = UILabel()
        author.font = .boldSystemFont(ofSize: 20)
        author.textColor = .black
        author.numberOfLines = 2
        author.translatesAutoresizingMaskIntoConstraints = false
        return author
    }()
    
    let postImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .black
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let postDescription: UITextView = {
        let description = UITextView()
        description.font = .systemFont(ofSize: 14)
        description.textColor = .systemGray
        description.translatesAutoresizingMaskIntoConstraints = false
        return description
    }()
    
    let postLikesCounter: UILabel = {
        let likes = UILabel()
        likes.font = .systemFont(ofSize: 16)
        likes.textColor = .black
        likes.numberOfLines = 1
        likes.translatesAutoresizingMaskIntoConstraints = false
        return likes
    }()
    
    let postViewsCounter: UILabel = {
        let views = UILabel()
        views.font = .systemFont(ofSize: 16)
        views.textColor = .black
        views.translatesAutoresizingMaskIntoConstraints = false
        return views
    }()
    
    
    
    
    
    private func setupSubviews() {
        contentView.addSubviews(postAuthor, postImage, postDescription, postLikesCounter, postViewsCounter)
        
        let constraints = [
            
            postAuthor.topAnchor.constraint(equalTo: contentView.topAnchor),
            postAuthor.heightAnchor.constraint(equalToConstant: 28),
            postAuthor.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            postAuthor.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            
            postImage.heightAnchor.constraint(equalTo: contentView.widthAnchor),
            postImage.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            postImage.topAnchor.constraint(equalTo: postAuthor.bottomAnchor),
            postImage.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            
            postDescription.topAnchor.constraint(equalTo: postImage.bottomAnchor),
            postDescription.heightAnchor.constraint(equalToConstant: 50),
            postDescription.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            postDescription.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            
            postLikesCounter.topAnchor.constraint(equalTo: postDescription.bottomAnchor, constant: 16),
            postLikesCounter.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            postLikesCounter.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            
            postViewsCounter.topAnchor.constraint(equalTo: postDescription.bottomAnchor, constant: 16),
            postViewsCounter.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            postViewsCounter.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
}


extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach{addSubview($0)}
    }
}






