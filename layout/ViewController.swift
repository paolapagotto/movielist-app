//
//  ViewController.swift
//  layout
//
//  Created by Paola Pagotto on 23/10/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}



class ViewController: UIViewController {

    @IBOutlet weak var tableViewMovieList: UITableView!
    
    @IBOutlet weak var buttonConfirmar: UIButton!
    
    @IBOutlet weak var buttonExcluir: UIButton!
    
    
    
   
    
    var arrayMovies = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableViewMovieList.delegate = self
        tableViewMovieList.dataSource = self
        
        

        
        arrayMovies.append(Movies(image: "movie.png", title: "Home Alone 1", reviewsNumber: "1.224.321 avaliações", reviewsStars: "⭐️⭐️⭐️", plot:"Home Alone is a 1990 American comedy film written and produced by John Hughes and directed by Chris Columbus. It stars Macaulay Culkin, Joe Pesci, Daniel Stern, John Heard, and Catherine O'Hara. The film follows Kevin (Culkin), an eight-year-old boy, who must defend his home from two burglars, Harry and Marv (Pesci and Stern), after his family accidentally leaves him behind on their Christmas vacation. It was filmed between February and May 1990 in a variety of locations throughout Illinois. The film was originally meant to be distributed by Warner Bros., but was transferred to 20th Century Fox when Hughes exceeded the $10 million limit that had been imposed on the film's budget by Warner." ))
        
        arrayMovies.append(Movies(image: "movie.png", title: "Home Alone 2", reviewsNumber: "1.224.321 avaliações", reviewsStars: "⭐️", plot:"Home Alone is a 1990 American comedy film written and produced by John Hughes and directed by Chris Columbus. It stars Macaulay Culkin, Joe Pesci, Daniel Stern, John Heard, and Catherine O'Hara. The film follows Kevin (Culkin)." ))
        
        arrayMovies.append(Movies(image: "movie.png", title: "Home Alone 3", reviewsNumber: "1.224.321 avaliações", reviewsStars: "⭐️⭐️⭐️⭐️", plot:"Home Alone is a 1990 American comedy film written and produced by John Hughes and directed by Chris Columbus. It stars Macaulay Culkin, Joe Pesci, Daniel Stern, John Heard, and Catherine O'Hara. The film follows Kevin (Culkin), an eight-year-old boy, who must defend his home from two burglars, Harry and Marv (Pesci and Stern), after his family accidentally leaves him behind on their Christmas vacation. It was filmed between February and May 1990 in a variety of locations throughout Illinois. The film was originally meant to be distributed by Warner Bros., but was transferred to 20th Century Fox when Hughes exceeded the $10 million limit that had been imposed on the film's budget by Warner." ))
        
        
        arrayMovies.append(Movies(image: "movie.png", title: "Home Alone Especial de Natal do ano de 1997", reviewsNumber: "1.224.321 avaliações", reviewsStars: "⭐️⭐️⭐️⭐️", plot:"Home Alone is a 1990 American comedy film written and produced by John Hughes and directed by Chris Columbus. It stars Macaulay Culkin, Joe Pesci, Daniel Stern, John Heard, and Catherine O'Hara. The film follows Kevin (Culkin), an eight-year-old boy, who must defend his home from two burglars, Harry and Marv (Pesci and Stern), after his family accidentally leaves him behind on their Christmas vacation. It was filmed between February and May 1990 in a variety of locations throughout Illinois. The film was originally meant to be distributed by Warner Bros., but was transferred to 20th Century Fox when Hughes exceeded the $10 million limit that had been imposed on the film's budget by Warner." ))
        
        arrayMovies.append(Movies(image: "movie.png", title: "Home Alone", reviewsNumber: "1.224.321 avaliações", reviewsStars: "⭐️⭐️⭐️⭐️", plot:"Home Alone is a 1990 American comedy film written and produced by John Hughes and directed by Chris Columbus." ))
        
        
    }
    
    
}


extension ViewController: UITableViewDelegate {
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        cell.setup(movie: arrayMovies[indexPath.row])
        return cell
    }
    
}

