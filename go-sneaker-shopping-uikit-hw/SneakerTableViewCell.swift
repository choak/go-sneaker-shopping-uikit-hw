//
//  SneakerTableViewCell.swift
//  go-sneaker-shopping-uikit-hw
//
//  Created by Andrew Cho on 9/11/22.
//

import UIKit

class SneakerTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SneakerTableViewCell") as! SneakerTableViewCell
            


            return cell
        }
    }

}
