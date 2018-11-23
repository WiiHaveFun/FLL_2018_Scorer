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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 768, height: 2000)
        // Do any additional setup after loading the view, typically from a nib.
        initM01()
        initM02()
        initM03()
        initM04()
    }
    
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
        mi01Score.font = mi01Score.font.withSize(CGFloat(labelFontSize))
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
            
            mi01Score.text = "Score: \(round.M01_01Score + round.M01_02Score + round.M01_03Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
    
    //M02 Space Travel
    var mi02Title: UILabel!
    var mi02_01Text: UITextView!
    var mi02_01Seg: UISegmentedControl!
    var mi02_02Text: UITextView!
    var mi02_02Seg: UISegmentedControl!
    var mi02Score: UILabel!
    
    /**
     Initializes the second mission's UI
     Each "paragraph is for an individual UI.
     UI declared above
     */
    func initM02() {
        //Inits Label UI
        mi02Title = UILabel(frame: CGRect(x: labelX, y: 470.0, width: labelWidth, height: labelHeight))
        mi02Title.text = "M02 - Solar Panel Array"
        mi02Title.font = mi02Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi02Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi02Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi02Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi02Title, attribute: .top, relatedBy: .equal, toItem: mi01Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi02_01Text = UITextView(frame: CGRect(x: labelX, y: 520.0, width: labelWidth, height: textHeight))
        mi02_01Text.text = "Both Solar Panels are angled toward the same Field"
        mi02_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi02_01Text.isScrollEnabled = false
        mi02_01Text.isEditable = false
        mi02_01Text.isSelectable = false
        scrollView.addSubview(mi02_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi02_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi02_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi02_01Text, attribute: .top, relatedBy: .equal, toItem: mi02Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi02_01Seg = UISegmentedControl(items: ["No", "Yes"])
        mi02_01Seg.frame = CGRect(x: segX, y: 600.0, width: segWidth, height: segHeight)
        mi02_01Seg.selectedSegmentIndex = 0
        mi02_01Seg.addTarget(self, action: #selector(mi02SegAction), for: .valueChanged)
        scrollView.addSubview(mi02_01Seg)
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi02_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi02_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi02_01Seg, attribute: .top, relatedBy: .equal, toItem: mi02_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi02SegControls.append(mi02_01Seg)
        
        mi02_02Text = UITextView(frame: CGRect(x: labelX, y: 640.0, width: labelWidth, height: textHeight))
        mi02_02Text.text = "Your Solar Panel is angled toward the other team’s Field"
        mi02_02Text.font = UIFont.systemFont(ofSize: 20.0)
        mi02_02Text.isScrollEnabled = false
        mi02_02Text.isEditable = false
        mi02_02Text.isSelectable = false
        scrollView.addSubview(mi02_02Text)
        let leadingTextConstraint02 = NSLayoutConstraint(item: mi02_02Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint02 = NSLayoutConstraint(item: mi02_02Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint02 = NSLayoutConstraint(item: mi02_02Text, attribute: .top, relatedBy: .equal, toItem: mi02_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint02, trailingTextConstraint02, topTextConstraint02])
        
        mi02_02Seg = UISegmentedControl(items: ["No", "Yes"])
        mi02_02Seg.frame = CGRect(x: segX, y: 720.0, width: segWidth, height: segHeight)
        mi02_02Seg.selectedSegmentIndex = 0
        mi02_02Seg.addTarget(self, action: #selector(mi02SegAction), for: .valueChanged)
        scrollView.addSubview(mi02_02Seg)
        let leadingSegConstraint02 = NSLayoutConstraint(item: mi02_02Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint02 = NSLayoutConstraint(item: mi02_02Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint02 = NSLayoutConstraint(item: mi02_02Seg, attribute: .top, relatedBy: .equal, toItem: mi02_02Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint02, trailingSegConstraint02, topSegConstraint02])
        //Adds seg control to outlet
        mi02SegControls.append(mi02_02Seg)
        
        //Inits Label UI for score
        mi02Score = UILabel(frame: CGRect(x: labelX, y: 760.0, width: labelWidth, height: labelHeight))
        mi02Score.text = "Score: 0"
        mi02Score.font = mi02Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi02Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi02Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi02Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi02Score, attribute: .top, relatedBy: .equal, toItem: mi02_02Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 02 Outlet
    var mi02SegControls: [UISegmentedControl] = []
    
    //Mission 02 Action
    @objc func mi02SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi02SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM02_01Done = true
                } else {
                    round.isM02_01Done = false
                }
            } else if (indexOfControl == 1) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM02_02Done = true
                } else {
                    round.isM02_02Done = false
                }
            }
            
            mi02Score.text = "Score: \(round.M02_01Score + round.M02_02Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
    
    //M03 Space Travel
    var mi03Title: UILabel!
    var mi03_01Text: UITextView!
    var mi03_01Seg: UISegmentedControl!
    var mi03_02Text: UITextView!
    var mi03_02Seg: UISegmentedControl!
    var mi03Score: UILabel!
    
    /**
     Initializes the second mission's UI
     Each "paragraph is for an individual UI.
     UI declared above
     */
    func initM03() {
        //Inits Label UI
        mi03Title = UILabel(frame: CGRect(x: labelX, y: 820.0, width: labelWidth, height: labelHeight))
        mi03Title.text = "M03 - 3D Printing"
        mi03Title.font = mi03Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi03Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi03Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi03Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi03Title, attribute: .top, relatedBy: .equal, toItem: mi02Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi03_01Text = UITextView(frame: CGRect(x: labelX, y: 870.0, width: labelWidth, height: textHeight))
        mi03_01Text.text = "2x4 Brick is ejected (due only to a Regolith Core Sample in the 3D Printer)"
        mi03_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi03_01Text.isScrollEnabled = false
        mi03_01Text.isEditable = false
        mi03_01Text.isSelectable = false
        scrollView.addSubview(mi03_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi03_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi03_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi03_01Text, attribute: .top, relatedBy: .equal, toItem: mi03Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi03_01Seg = UISegmentedControl(items: ["No", "Yes"])
        mi03_01Seg.frame = CGRect(x: segX, y: 950.0, width: segWidth, height: segHeight)
        mi03_01Seg.selectedSegmentIndex = 0
        mi03_01Seg.addTarget(self, action: #selector(mi03SegAction), for: .valueChanged)
        scrollView.addSubview(mi03_01Seg)
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi03_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi03_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi03_01Seg, attribute: .top, relatedBy: .equal, toItem: mi03_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi03SegControls.append(mi03_01Seg)
        
        mi03_02Text = UITextView(frame: CGRect(x: labelX, y: 990.0, width: labelWidth, height: textHeight))
        mi03_02Text.text = "2x4 Brick is completely in Northeast Planet Area"
        mi03_02Text.font = UIFont.systemFont(ofSize: 20.0)
        mi03_02Text.isScrollEnabled = false
        mi03_02Text.isEditable = false
        mi03_02Text.isSelectable = false
        scrollView.addSubview(mi03_02Text)
        let leadingTextConstraint02 = NSLayoutConstraint(item: mi03_02Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint02 = NSLayoutConstraint(item: mi03_02Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint02 = NSLayoutConstraint(item: mi03_02Text, attribute: .top, relatedBy: .equal, toItem: mi03_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint02, trailingTextConstraint02, topTextConstraint02])
        
        mi03_02Seg = UISegmentedControl(items: ["No", "Yes"])
        mi03_02Seg.frame = CGRect(x: segX, y: 1070.0, width: segWidth, height: segHeight)
        mi03_02Seg.selectedSegmentIndex = 0
        mi03_02Seg.addTarget(self, action: #selector(mi03SegAction), for: .valueChanged)
        scrollView.addSubview(mi03_02Seg)
        let leadingSegConstraint02 = NSLayoutConstraint(item: mi03_02Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint02 = NSLayoutConstraint(item: mi03_02Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint02 = NSLayoutConstraint(item: mi03_02Seg, attribute: .top, relatedBy: .equal, toItem: mi03_02Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint02, trailingSegConstraint02, topSegConstraint02])
        //Adds seg control to outlet
        mi03SegControls.append(mi03_02Seg)
        
        //Inits Label UI for score
        mi03Score = UILabel(frame: CGRect(x: labelX, y: 1110.0, width: labelWidth, height: labelHeight))
        mi03Score.text = "Score: 0"
        mi03Score.font = mi03Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi03Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi03Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi03Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi03Score, attribute: .top, relatedBy: .equal, toItem: mi03_02Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 03 Outlet
    var mi03SegControls: [UISegmentedControl] = []
    
    //Mission 03 Action
    @objc func mi03SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi03SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM03_01Done = true
                } else {
                    round.isM03_01Done = false
                    round.isM03_02Done = false
                    mi03_02Seg.selectedSegmentIndex = 0
                }
            } else if (indexOfControl == 1) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM03_02Done = true
                } else {
                    round.isM03_02Done = false
                }
            }
            
            mi03Score.text = "Score: \(round.M03_01Score + round.M03_02Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }

    //M04 Crater Crossing
    var mi04Title: UILabel!
    var mi04_01Text: UITextView!
    var mi04_01Seg: UISegmentedControl!
    var mi04_02Text: UITextView!
    var mi04_02Seg: UISegmentedControl!
    var mi04Score: UILabel!
    
    /**
     Initializes the second mission's UI
     Each "paragraph is for an individual UI.
     UI declared above
     */
    func initM04() {
        //Inits Label UI
        mi04Title = UILabel(frame: CGRect(x: labelX, y: 1170.0, width: labelWidth, height: labelHeight))
        mi04Title.text = "M04 - Crater Crossing"
        mi04Title.font = mi04Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi04Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi04Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi04Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi04Title, attribute: .top, relatedBy: .equal, toItem: mi03Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi04_01Text = UITextView(frame: CGRect(x: labelX, y: 1220.0, width: labelWidth, height: textHeight))
        mi04_01Text.text = "All weight-bearing features of crossing equipment crossed completely between towers"
        mi04_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi04_01Text.isScrollEnabled = false
        mi04_01Text.isEditable = false
        mi04_01Text.isSelectable = false
        scrollView.addSubview(mi04_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi04_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi04_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi04_01Text, attribute: .top, relatedBy: .equal, toItem: mi04Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi04_01Seg = UISegmentedControl(items: ["No", "Yes"])
        mi04_01Seg.frame = CGRect(x: segX, y: 1300.0, width: segWidth, height: segHeight)
        mi04_01Seg.selectedSegmentIndex = 0
        mi04_01Seg.addTarget(self, action: #selector(mi04SegAction), for: .valueChanged)
        scrollView.addSubview(mi04_01Seg)
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi04_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi04_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi04_01Seg, attribute: .top, relatedBy: .equal, toItem: mi04_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi04SegControls.append(mi04_01Seg)
        
        mi04_02Text = UITextView(frame: CGRect(x: labelX, y: 1340.0, width: labelWidth, height: textHeight))
        mi04_02Text.text = "All crossing equipment crossed from east to west, completely past the flattened Gate"
        mi04_02Text.font = UIFont.systemFont(ofSize: 20.0)
        mi04_02Text.isScrollEnabled = false
        mi04_02Text.isEditable = false
        mi04_02Text.isSelectable = false
        scrollView.addSubview(mi04_02Text)
        let leadingTextConstraint02 = NSLayoutConstraint(item: mi04_02Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint02 = NSLayoutConstraint(item: mi04_02Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint02 = NSLayoutConstraint(item: mi04_02Text, attribute: .top, relatedBy: .equal, toItem: mi04_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint02, trailingTextConstraint02, topTextConstraint02])
        
        mi04_02Seg = UISegmentedControl(items: ["No", "Yes"])
        mi04_02Seg.frame = CGRect(x: segX, y: 1420.0, width: segWidth, height: segHeight)
        mi04_02Seg.selectedSegmentIndex = 0
        mi04_02Seg.addTarget(self, action: #selector(mi04SegAction), for: .valueChanged)
        scrollView.addSubview(mi04_02Seg)
        let leadingSegConstraint02 = NSLayoutConstraint(item: mi04_02Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint02 = NSLayoutConstraint(item: mi04_02Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint02 = NSLayoutConstraint(item: mi04_02Seg, attribute: .top, relatedBy: .equal, toItem: mi04_02Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint02, trailingSegConstraint02, topSegConstraint02])
        //Adds seg control to outlet
        mi04SegControls.append(mi04_02Seg)
        
        //Inits Label UI for score
        mi04Score = UILabel(frame: CGRect(x: labelX, y: 1460.0, width: labelWidth, height: labelHeight))
        mi04Score.text = "Score: 0"
        mi04Score.font = mi04Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi04Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi04Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi04Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi04Score, attribute: .top, relatedBy: .equal, toItem: mi04_02Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 04 Outlet
    var mi04SegControls: [UISegmentedControl] = []
    
    //Mission 04 Action
    @objc func mi04SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi04SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM04_01Done = true
                } else {
                    round.isM04_01Done = false
                }
            } else if (indexOfControl == 1) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM04_02Done = true
                } else {
                    round.isM04_02Done = false
                }
            }
            
            mi04Score.text = "Score: \(round.M04_01Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
}

