//
//  UserExtractTableViewCell.swift
//  BankOfEveris
//
//  Created by Leandro Roberto Medeiros on 16/04/19.
//  Copyright © 2019 Leandro Roberto Medeiros. All rights reserved.
//

import UIKit

class UserExtractTableViewCell: UITableViewCell {

    @IBOutlet weak var viewExtract: UIView!
    @IBOutlet weak var labelExtractTitle: UILabel!
    @IBOutlet weak var labelExtractDate: UILabel!
    @IBOutlet weak var labelExtractDescription: UILabel!
    @IBOutlet weak var labelExtractValue: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    private func setupLayout(){
//        self.viewExtract.layer.borderWidth = 1
//        self.viewExtract.layer.cornerRadius = 6
//       // self.viewExtract.layer.shadowOpacity = 1
        //self.viewExtract.layer.borderWidth = 1
        //self.viewExtract.layer.borderColor = #colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.8901960784, alpha: 0.3)
       // self.viewExtract.layer.shadowColor = #colorLiteral(red: 0.8509803922, green: 0.8862745098, blue: 0.9137254902, alpha: 1)
       // self.viewExtract.layer.shadowOpacity = 1
        self.viewExtract.layer.cornerRadius = 6
        //self.viewExtract.layer.shadowOffset = CGSize(width: 0, height: 5)
        //self.viewExtract.layer.shadowRadius = 10
    }
    
    func renderUserExtractData(extract: ExtractResponse.ExtractData){
        self.labelExtractTitle.text = extract.title
        self.labelExtractDate.text = extract.date
        self.labelExtractDescription.text = extract.description
        self.labelExtractValue.text = extract.value?.transformToCurrency
    }
}
