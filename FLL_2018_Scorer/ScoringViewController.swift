//
//  FirstViewController.swift
//  FLL_2018_Scorer
//
//  Created by Michael Chen on 11/20/18.
//  Copyright © 2018 Michael Chen. All rights reserved.
//

import UIKit

class ScoringViewController: UIViewController {
    
    var round = Round()
    
    //Constants for UILabels
    let labelFontSize = 30.0
    let labelX = 10.0
    let labelWidth = 748.0
    let labelHeight = 40.0
    let textHeight = 70.0
    let segX = 244.0
    let segWidth = 280.0
    //Needs to be 31 to satisfy 10 pt spacing constraint
    let segHeight = 31.0
    
    //Outlet to scroll view
    @IBOutlet weak var scrollView: UIScrollView!
    
    //Outlet to total score label
    @IBOutlet weak var totalScore: UILabel!
    
    /*Initializing Mission UI*/
    
    //M01 Space Travel
    var mi01Title: UILabel!
    var mi01_01Text: UITextView!
    var mi01_01Seg: UISegmentedControl!
    var mi01_02Text: UITextView!
    var mi01_02Seg: UISegmentedControl!
    var mi01_03Text: UITextView!
    var mi01_03Seg: UISegmentedControl!
    var mi01Score: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = view.frame.size
        // Do any additional setup after loading the view, typically from a nib.
        initM01()
    }
    
    /**
        Initializes the first mission's UI
        Each "paragraph is for an individual UI.
        UI declared above
    */
    func initM01() {
        //Inits Label UI
        mi01Title = UILabel(frame: CGRect(x: labelX, y: 0.0, width: labelWidth, height: labelHeight))
        mi01Title.text = "M01 - Space Travel"
        mi01Title.font = mi01Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi01Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi01Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi01Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi01Title, attribute: .top, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .top, multiplier: 1.0, constant: 0.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi01_01Text = UITextView(frame: CGRect(x: labelX, y: 50.0, width: labelWidth, height: textHeight))
        mi01_01Text.text = "Vehicle Payload rolled past first track connection"
        mi01_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi01_01Text.isScrollEnabled = false
        mi01_01Text.isEditable = false
        mi01_01Text.isSelectable = false
        scrollView.addSubview(mi01_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi01_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi01_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi01_01Text, attribute: .top, relatedBy: .equal, toItem: mi01Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi01_01Seg = UISegmentedControl(items: ["No", "Yes"])
        mi01_01Seg.frame = CGRect(x: segX, y: 130.0, width: segWidth, height: segHeight)
        mi01_01Seg.selectedSegmentIndex = 0
        mi01_01Seg.addTarget(self, action: #selector(mi01SegAction), for: .valueChanged)
        scrollView.addSubview(mi01_01Seg)
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi01_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi01_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi01_01Seg, attribute: .top, relatedBy: .equal, toItem: mi01_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi01SegControls.append(mi01_01Seg)
        
        mi01_02Text = UITextView(frame: CGRect(x: labelX, y: 170.0, width: labelWidth, height: textHeight))
        mi01_02Text.text = "Supply Payload rolled past first track connection"
        mi01_02Text.font = UIFont.systemFont(ofSize: 20.0)
        mi01_02Text.isScrollEnabled = false
        mi01_02Text.isEditable = false
        mi01_02Text.isSelectable = false
        scrollView.addSubview(mi01_02Text)
        let leadingTextConstraint02 = NSLayoutConstraint(item: mi01_02Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint02 = NSLayoutConstraint(item: mi01_02Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint02 = NSLayoutConstraint(item: mi01_02Text, attribute: .top, relatedBy: .equal, toItem: mi01_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint02, trailingTextConstraint02, topTextConstraint02])
        
        mi01_02Seg = UISegmentedControl(items: ["No", "Yes"])
        mi01_02Seg.frame = CGRect(x: segX, y: 250.0, width: segWidth, height: segHeight)
        mi01_02Seg.selectedSegmentIndex = 0
        mi01_02Seg.addTarget(self, action: #selector(mi01SegAction), for: .valueChanged)
        scrollView.addSubview(mi01_02Seg)
        let leadingSegConstraint02 = NSLayoutConstraint(item: mi01_02Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint02 = NSLayoutConstraint(item: mi01_02Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint02 = NSLayoutConstraint(item: mi01_02Seg, attribute: .top, relatedBy: .equal, toItem: mi01_02Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint02, trailingSegConstraint02, topSegConstraint02])
        //Adds seg control to outlet
        mi01SegControls.append(mi01_02Seg)
        
        mi01_03Text = UITextView(frame: CGRect(x: labelX, y: 290.0, width: labelWidth, height: textHeight))
        mi01_03Text.text = "Crew Payload rolled past first track connection"
        mi01_03Text.font = UIFont.systemFont(ofSize: 20.0)
        mi01_03Text.isScrollEnabled = false
        mi01_03Text.isEditable = false
        mi01_03Text.isSelectable = false
        scrollView.addSubview(mi01_03Text)
        let leadingTextConstraint03 = NSLayoutConstraint(item: mi01_03Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint03 = NSLayoutConstraint(item: mi01_03Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint03 = NSLayoutConstraint(item: mi01_03Text, attribute: .top, relatedBy: .equal, toItem: mi01_02Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint03, trailingTextConstraint03, topTextConstraint03])
        
        mi01_03Seg = UISegmentedControl(items: ["No", "Yes"])
        mi01_03Seg.frame = CGRect(x: segX, y: 370.0, width: segWidth, height: segHeight)
        mi01_03Seg.selectedSegmentIndex = 0
        mi01_03Seg.addTarget(self, action: #selector(mi01SegAction), for: .valueChanged)
        scrollView.addSubview(mi01_03Seg)
        let leadingSegConstraint03 = NSLayoutConstraint(item: mi01_03Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint03 = NSLayoutConstraint(item: mi01_03Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint03 = NSLayoutConstraint(item: mi01_03Seg, attribute: .top, relatedBy: .equal, toItem: mi01_03Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint03, trailingSegConstraint03, topSegConstraint03])
        //Adds seg control to outlet
        mi01SegControls.append(mi01_03Seg)
        
        //Inits Label UI for score
        mi01Score = UILabel(frame: CGRect(x: labelX, y: 410.0, width: labelWidth, height: labelHeight))
        mi01Score.text = "Score: 0"
        mi01Score.font = mi01Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi01Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi01Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi01Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi01Score, attribute: .top, relatedBy: .equal, toItem: mi01_03Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 01 Outlet
    var mi01SegControls: [UISegmentedControl] = []
    
    //Mission 01 Action
    @objc func mi01SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi01SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM01_01Done = true
                } else {
                    round.isM01_01Done = false
                }
            } else if (indexOfControl == 1) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM01_02Done = true
                } else {
                    round.isM01_02Done = false
                }
            } else if (indexOfControl == 2) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM01_03Done = true
                } else {
                    round.isM01_03Done = false
                }
            }
            
            // TODO: Get the local mission scorer finished
            mi01Score.text = "Score: \(round.M01_01Score + round.M01_02Score + round.M01_03Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }


}

