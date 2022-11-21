//
//  ViewController.swift
//  ScrollViewSample
//
//  Created by Supapon Pucknavin on 21/11/2565 BE.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    let myScrollView: UIScrollView = UIScrollView()
    let myContentView: UIView = UIView()
    let vStact: UIStackView = UIStackView()
    let textLabel: UILabel = UILabel()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension ViewController {
    func style() {
        myScrollView.translatesAutoresizingMaskIntoConstraints = false
        myScrollView.alwaysBounceVertical = true
        myScrollView.showsVerticalScrollIndicator = true
 
        
        myContentView.translatesAutoresizingMaskIntoConstraints = false
        myContentView.backgroundColor = .orange
        
        vStact.distribution = .fillProportionally
        vStact.alignment = .fill
        vStact.axis = .vertical
        vStact.spacing = 8
        vStact.translatesAutoresizingMaskIntoConstraints = false
        
        
        textLabel.numberOfLines = 0
        textLabel.textColor = .black
        textLabel.text = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Id venenatis a condimentum vitae sapien pellentesque. Maecenas volutpat blandit aliquam etiam erat velit scelerisque in dictum. Lectus sit amet est placerat in egestas erat imperdiet sed. Tincidunt nunc pulvinar sapien et ligula. A diam maecenas sed enim ut sem viverra aliquet eget. Adipiscing diam donec adipiscing tristique risus nec. Et netus et malesuada fames ac turpis egestas sed tempus. In mollis nunc sed id semper. Convallis posuere morbi leo urna molestie at elementum. Lacinia quis vel eros donec ac odio tempor. Odio euismod lacinia at quis risus sed. Elit at imperdiet dui accumsan sit amet nulla facilisi morbi. Amet aliquam id diam maecenas ultricies mi eget. Elit pellentesque habitant morbi tristique senectus. Tortor at auctor urna nunc id. Duis convallis convallis tellus id interdum velit laoreet id donec. Potenti nullam ac tortor vitae purus. Leo a diam sollicitudin tempor id eu. Facilisi cras fermentum odio eu feugiat pretium nibh ipsum consequat.

Sagittis id consectetur purus ut faucibus. Vulputate enim nulla aliquet porttitor lacus luctus accumsan. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Aenean sed adipiscing diam donec adipiscing tristique risus nec feugiat. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Egestas congue quisque egestas diam in arcu. Convallis posuere morbi leo urna molestie. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit aliquam. Erat imperdiet sed euismod nisi porta lorem mollis. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Gravida neque convallis a cras. Donec ultrices tincidunt arcu non sodales neque sodales ut etiam. A diam sollicitudin tempor id eu nisl nunc. Placerat duis ultricies lacus sed turpis tincidunt id aliquet risus. Pellentesque sit amet porttitor eget dolor morbi. Aenean et tortor at risus viverra. Eget magna fermentum iaculis eu non diam phasellus vestibulum lorem.

Parturient montes nascetur ridiculus mus. Vulputate eu scelerisque felis imperdiet proin. Velit ut tortor pretium viverra suspendisse potenti nullam ac tortor. Diam vel quam elementum pulvinar etiam. Tristique nulla aliquet enim tortor at auctor. Magnis dis parturient montes nascetur ridiculus mus mauris. Libero justo laoreet sit amet cursus sit amet dictum. Aliquet bibendum enim facilisis gravida neque. Integer feugiat scelerisque varius morbi enim nunc faucibus. Ut morbi tincidunt augue interdum. Ipsum dolor sit amet consectetur adipiscing elit. Dignissim diam quis enim lobortis scelerisque. Mi tempus imperdiet nulla malesuada pellentesque elit eget. Pharetra sit amet aliquam id diam maecenas ultricies. Eget mi proin sed libero enim sed faucibus turpis. Nulla facilisi cras fermentum odio. Quam id leo in vitae turpis massa.

Ut faucibus pulvinar elementum integer enim neque. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Aliquam vestibulum morbi blandit cursus risus at ultrices. Faucibus nisl tincidunt eget nullam non nisi est. Vitae semper quis lectus nulla at volutpat diam. Eu nisl nunc mi ipsum faucibus. Fames ac turpis egestas maecenas pharetra. Consectetur purus ut faucibus pulvinar elementum integer enim neque. Mi sit amet mauris commodo quis imperdiet massa tincidunt. Laoreet non curabitur gravida arcu ac. Dictum fusce ut placerat orci.

Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Orci nulla pellentesque dignissim enim sit amet venenatis urna cursus. Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Elit duis tristique sollicitudin nibh sit. In nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque. Enim eu turpis egestas pretium. Lacus viverra vitae congue eu consequat ac felis. Dui faucibus in ornare quam. Sit amet consectetur adipiscing elit. Quam id leo in vitae turpis massa sed elementum tempus. Tristique senectus et netus et malesuada fames ac turpis.

"""

    }
    
    func layout() {
    
        vStact.addArrangedSubview(textLabel)
        myContentView.addSubview(vStact)
        myScrollView.addSubview(myContentView)
        view.addSubview(myScrollView)
        
        
        
        //myScrollView
        NSLayoutConstraint.activate([
            myScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            myScrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            myScrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            myScrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
        
        
        //myContentView
        NSLayoutConstraint.activate([
            myContentView.topAnchor.constraint(equalTo: myScrollView.contentLayoutGuide.topAnchor),
            myContentView.leadingAnchor.constraint(equalTo: myScrollView.contentLayoutGuide.leadingAnchor),
            myContentView.trailingAnchor.constraint(equalTo: myScrollView.contentLayoutGuide.trailingAnchor),
            myContentView.bottomAnchor.constraint(equalTo: myScrollView.contentLayoutGuide.bottomAnchor),
        ])

        let contentViewCenterY = myContentView.centerYAnchor.constraint(equalTo: myScrollView.centerYAnchor)
        contentViewCenterY.priority = .defaultLow

        let contentViewHeight = myContentView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor)
        contentViewHeight.priority = .defaultLow
        
        NSLayoutConstraint.activate([
            myContentView.centerXAnchor.constraint(equalTo: myScrollView.centerXAnchor),
            contentViewCenterY,
            contentViewHeight
        ])

        
        //vStact
        let fieldStackHeight = vStact.heightAnchor.constraint(equalToConstant: 0)
        fieldStackHeight.priority = .defaultLow
        
        let fieldStackBottom = vStact.bottomAnchor.constraint(equalTo: myContentView.bottomAnchor)
        fieldStackBottom.priority = .defaultLow
        
        NSLayoutConstraint.activate([
            vStact.topAnchor.constraint(equalTo: myContentView.topAnchor),
            vStact.leadingAnchor.constraint(equalTo: myContentView.leadingAnchor),
            vStact.trailingAnchor.constraint(equalTo: myContentView.trailingAnchor),
            fieldStackHeight,
            fieldStackBottom
        ])
        
    }
    
}
