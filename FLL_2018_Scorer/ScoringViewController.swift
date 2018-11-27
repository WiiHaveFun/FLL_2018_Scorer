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
        scrollView.contentSize = CGSize(width: 768, height: 4000)
        // Do any additional setup after loading the view, typically from a nib.
        initM01()
        initM02()
        initM03()
        initM04()
        initM05()
        initM06()
        initM07()
        initM08()
        initM09()
        initM10()
        initM11()
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
    
    //M05 Extraction
    var mi05Title: UILabel!
    var mi05_01Text: UITextView!
    var mi05_01Seg: UISegmentedControl!
    var mi05_02Text: UITextView!
    var mi05_02Seg: UISegmentedControl!
    var mi05_03Text: UITextView!
    var mi05_03Seg: UISegmentedControl!
    var mi05_04Text: UITextView!
    var mi05_04Seg: UISegmentedControl!
    var mi05Score: UILabel!
    
    func initM05() {
        //Inits Label UI
        mi05Title = UILabel(frame: CGRect(x: labelX, y: 1520.0, width: labelWidth, height: labelHeight))
        mi05Title.text = "M05 - Extraction"
        mi05Title.font = mi05Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi05Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi05Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi05Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi05Title, attribute: .top, relatedBy: .equal, toItem: mi04Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi05_01Text = UITextView(frame: CGRect(x: labelX, y: 1570.0, width: labelWidth, height: textHeight))
        mi05_01Text.text = "All four Core Samples are no longer touching axle of Core Site Model"
        mi05_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi05_01Text.isScrollEnabled = false
        mi05_01Text.isEditable = false
        mi05_01Text.isSelectable = false
        scrollView.addSubview(mi05_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi05_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi05_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi05_01Text, attribute: .top, relatedBy: .equal, toItem: mi05Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi05_01Seg = UISegmentedControl(items: ["No", "Yes"])
        mi05_01Seg.frame = CGRect(x: segX, y: 1650.0, width: segWidth, height: segHeight)
        mi05_01Seg.selectedSegmentIndex = 0
        mi05_01Seg.addTarget(self, action: #selector(mi05SegAction), for: .valueChanged)
        scrollView.addSubview(mi05_01Seg)
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi05_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi05_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi05_01Seg, attribute: .top, relatedBy: .equal, toItem: mi05_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi05SegControls.append(mi05_01Seg)
        
        mi05_02Text = UITextView(frame: CGRect(x: labelX, y: 1690.0, width: labelWidth, height: textHeight))
        mi05_02Text.text = "Gas Core Sample is touching the Mat and completely in Lander’s Target Circle"
        mi05_02Text.font = UIFont.systemFont(ofSize: 20.0)
        mi05_02Text.isScrollEnabled = false
        mi05_02Text.isEditable = false
        mi05_02Text.isSelectable = false
        scrollView.addSubview(mi05_02Text)
        let leadingTextConstraint02 = NSLayoutConstraint(item: mi05_02Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint02 = NSLayoutConstraint(item: mi05_02Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint02 = NSLayoutConstraint(item: mi05_02Text, attribute: .top, relatedBy: .equal, toItem: mi05_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint02, trailingTextConstraint02, topTextConstraint02])
        
        mi05_02Seg = UISegmentedControl(items: ["No", "Yes"])
        mi05_02Seg.frame = CGRect(x: segX, y: 1770.0, width: segWidth, height: segHeight)
        mi05_02Seg.selectedSegmentIndex = 0
        mi05_02Seg.addTarget(self, action: #selector(mi05SegAction), for: .valueChanged)
        scrollView.addSubview(mi05_02Seg)
        let leadingSegConstraint02 = NSLayoutConstraint(item: mi05_02Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint02 = NSLayoutConstraint(item: mi05_02Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint02 = NSLayoutConstraint(item: mi05_02Seg, attribute: .top, relatedBy: .equal, toItem: mi05_02Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint02, trailingSegConstraint02, topSegConstraint02])
        //Adds seg control to outlet
        mi05SegControls.append(mi05_02Seg)
        
        mi05_03Text = UITextView(frame: CGRect(x: labelX, y: 1810.0, width: labelWidth, height: textHeight))
        mi05_03Text.text = "-OR- Gas Core Sample is completely in Base"
        mi05_03Text.font = UIFont.systemFont(ofSize: 20.0)
        mi05_03Text.isScrollEnabled = false
        mi05_03Text.isEditable = false
        mi05_03Text.isSelectable = false
        scrollView.addSubview(mi05_03Text)
        let leadingTextConstraint03 = NSLayoutConstraint(item: mi05_03Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint03 = NSLayoutConstraint(item: mi05_03Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint03 = NSLayoutConstraint(item: mi05_03Text, attribute: .top, relatedBy: .equal, toItem: mi05_02Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint03, trailingTextConstraint03, topTextConstraint03])
        
        mi05_03Seg = UISegmentedControl(items: ["No", "Yes"])
        mi05_03Seg.frame = CGRect(x: segX, y: 1890.0, width: segWidth, height: segHeight)
        mi05_03Seg.selectedSegmentIndex = 0
        mi05_03Seg.addTarget(self, action: #selector(mi05SegAction), for: .valueChanged)
        scrollView.addSubview(mi05_03Seg)
        let leadingSegConstraint03 = NSLayoutConstraint(item: mi05_03Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint03 = NSLayoutConstraint(item: mi05_03Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint03 = NSLayoutConstraint(item: mi05_03Seg, attribute: .top, relatedBy: .equal, toItem: mi05_03Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint03, trailingSegConstraint03, topSegConstraint03])
        //Adds seg control to outlet
        mi05SegControls.append(mi05_03Seg)
        
        mi05_04Text = UITextView(frame: CGRect(x: labelX, y: 1930.0, width: labelWidth, height: textHeight))
        mi05_04Text.text = "Water Core Sample is supported only by the Food Growth Chamber"
        mi05_04Text.font = UIFont.systemFont(ofSize: 20.0)
        mi05_04Text.isScrollEnabled = false
        mi05_04Text.isEditable = false
        mi05_04Text.isSelectable = false
        scrollView.addSubview(mi05_04Text)
        let leadingTextConstraint04 = NSLayoutConstraint(item: mi05_04Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint04 = NSLayoutConstraint(item: mi05_04Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint04 = NSLayoutConstraint(item: mi05_04Text, attribute: .top, relatedBy: .equal, toItem: mi05_03Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint04, trailingTextConstraint04, topTextConstraint04])
        
        mi05_04Seg = UISegmentedControl(items: ["No", "Yes"])
        mi05_04Seg.frame = CGRect(x: segX, y: 2010.0, width: segWidth, height: segHeight)
        mi05_04Seg.selectedSegmentIndex = 0
        mi05_04Seg.addTarget(self, action: #selector(mi05SegAction), for: .valueChanged)
        scrollView.addSubview(mi05_04Seg)
        let leadingSegConstraint04 = NSLayoutConstraint(item: mi05_04Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint04 = NSLayoutConstraint(item: mi05_04Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint04 = NSLayoutConstraint(item: mi05_04Seg, attribute: .top, relatedBy: .equal, toItem: mi05_04Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint04, trailingSegConstraint04, topSegConstraint04])
        //Adds seg control to outlet
        mi05SegControls.append(mi05_04Seg)
        
        //Inits Label UI for score
        mi05Score = UILabel(frame: CGRect(x: labelX, y: 2050.0, width: labelWidth, height: labelHeight))
        mi05Score.text = "Score: 0"
        mi05Score.font = mi05Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi05Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi05Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi05Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi05Score, attribute: .top, relatedBy: .equal, toItem: mi05_04Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 05 Outlet
    var mi05SegControls: [UISegmentedControl] = []
    
    //Mission 05 Action
    @objc func mi05SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi05SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM05_01Done = true
                } else {
                    round.isM05_01Done = false
                }
            } else if (indexOfControl == 1) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM05_02Done = true
                    mi05SegControls[2].selectedSegmentIndex = 0
                } else {
                    round.isM05_02Done = false
                }
            } else if (indexOfControl == 2) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM05_03Done = true
                    mi05SegControls[1].selectedSegmentIndex = 0
                } else {
                    round.isM05_03Done = false
                }
            } else if (indexOfControl == 3) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM05_04Done = true
                } else {
                    round.isM05_04Done = false
                }
            }
            
            mi05Score.text = "Score: \(round.M05_01Score + round.M05_02Score + round.M05_03Score + round.M05_04Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
    
    //M06 Space Station Modules
    var mi06Title: UILabel!
    var mi06_01Text: UITextView!
    var mi06_01Seg: UISegmentedControl!
    var mi06_02Text: UITextView!
    var mi06_02Seg: UISegmentedControl!
    var mi06_03Text: UITextView!
    var mi06_03Seg: UISegmentedControl!
    var mi06Score: UILabel!
    
    func initM06() {
        //Inits Label UI
        mi06Title = UILabel(frame: CGRect(x: labelX, y: 2110.0, width: labelWidth, height: labelHeight))
        mi06Title.text = "M06 - Space Station Modules"
        mi06Title.font = mi06Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi06Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi06Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi06Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi06Title, attribute: .top, relatedBy: .equal, toItem: mi05Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi06_01Text = UITextView(frame: CGRect(x: labelX, y: 2160.0, width: labelWidth, height: textHeight))
        mi06_01Text.text = "Cone Module is completely in Base"
        mi06_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi06_01Text.isScrollEnabled = false
        mi06_01Text.isEditable = false
        mi06_01Text.isSelectable = false
        scrollView.addSubview(mi06_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi06_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi06_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi06_01Text, attribute: .top, relatedBy: .equal, toItem: mi06Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi06_01Seg = UISegmentedControl(items: ["No", "Yes"])
        mi06_01Seg.frame = CGRect(x: segX, y: 2240.0, width: segWidth, height: segHeight)
        mi06_01Seg.selectedSegmentIndex = 0
        mi06_01Seg.addTarget(self, action: #selector(mi06SegAction), for: .valueChanged)
        scrollView.addSubview(mi06_01Seg)
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi06_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi06_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi06_01Seg, attribute: .top, relatedBy: .equal, toItem: mi06_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi06SegControls.append(mi06_01Seg)
        
        mi06_02Text = UITextView(frame: CGRect(x: labelX, y: 2280.0, width: labelWidth, height: textHeight))
        mi06_02Text.text = "Tube Module is in west port of the Habitation Hub"
        mi06_02Text.font = UIFont.systemFont(ofSize: 20.0)
        mi06_02Text.isScrollEnabled = false
        mi06_02Text.isEditable = false
        mi06_02Text.isSelectable = false
        scrollView.addSubview(mi06_02Text)
        let leadingTextConstraint02 = NSLayoutConstraint(item: mi06_02Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint02 = NSLayoutConstraint(item: mi06_02Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint02 = NSLayoutConstraint(item: mi06_02Text, attribute: .top, relatedBy: .equal, toItem: mi06_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint02, trailingTextConstraint02, topTextConstraint02])
        
        mi06_02Seg = UISegmentedControl(items: ["No", "Yes"])
        mi06_02Seg.frame = CGRect(x: segX, y: 2360.0, width: segWidth, height: segHeight)
        mi06_02Seg.selectedSegmentIndex = 0
        mi06_02Seg.addTarget(self, action: #selector(mi06SegAction), for: .valueChanged)
        scrollView.addSubview(mi06_02Seg)
        let leadingSegConstraint02 = NSLayoutConstraint(item: mi06_02Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint02 = NSLayoutConstraint(item: mi06_02Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint02 = NSLayoutConstraint(item: mi06_02Seg, attribute: .top, relatedBy: .equal, toItem: mi06_02Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint02, trailingSegConstraint02, topSegConstraint02])
        //Adds seg control to outlet
        mi06SegControls.append(mi06_02Seg)

        mi06_03Text = UITextView(frame: CGRect(x: labelX, y: 2400.0, width: labelWidth, height: textHeight))
        mi06_03Text.text = "Dock Module is in east port of the Habitation Hub"
        mi06_03Text.font = UIFont.systemFont(ofSize: 20.0)
        mi06_03Text.isScrollEnabled = false
        mi06_03Text.isEditable = false
        mi06_03Text.isSelectable = false
        scrollView.addSubview(mi06_03Text)
        let leadingTextConstraint03 = NSLayoutConstraint(item: mi06_03Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint03 = NSLayoutConstraint(item: mi06_03Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint03 = NSLayoutConstraint(item: mi06_03Text, attribute: .top, relatedBy: .equal, toItem: mi06_02Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint03, trailingTextConstraint03, topTextConstraint03])
        
        mi06_03Seg = UISegmentedControl(items: ["No", "Yes"])
        mi06_03Seg.frame = CGRect(x: segX, y: 2480.0, width: segWidth, height: segHeight)
        mi06_03Seg.selectedSegmentIndex = 0
        mi06_03Seg.addTarget(self, action: #selector(mi06SegAction), for: .valueChanged)
        scrollView.addSubview(mi06_03Seg)
        let leadingSegConstraint03 = NSLayoutConstraint(item: mi06_03Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint03 = NSLayoutConstraint(item: mi06_03Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint03 = NSLayoutConstraint(item: mi06_03Seg, attribute: .top, relatedBy: .equal, toItem: mi06_03Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint03, trailingSegConstraint03, topSegConstraint03])
        //Adds seg control to outlet
        mi06SegControls.append(mi06_03Seg)
        
        //Inits Label UI for score
        mi06Score = UILabel(frame: CGRect(x: labelX, y: 2520.0, width: labelWidth, height: labelHeight))
        mi06Score.text = "Score: 0"
        mi06Score.font = mi06Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi06Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi06Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi06Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi06Score, attribute: .top, relatedBy: .equal, toItem: mi06_03Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 06 Outlet
    var mi06SegControls: [UISegmentedControl] = []
    
    //Mission 06 Action
    @objc func mi06SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi06SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM06_01Done = true
                } else {
                    round.isM06_01Done = false
                }
            } else if (indexOfControl == 1) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM06_02Done = true
                } else {
                    round.isM06_02Done = false
                }
            } else if (indexOfControl == 2) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM06_03Done = true
                } else {
                    round.isM06_03Done = false
                }
            }
            mi06Score.text = "Score: \(round.M06_01Score + round.M06_02Score + round.M06_03Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
    
    //M07 Space Walk Emergency
    var mi07Title: UILabel!
    var mi07_01Text: UITextView!
    var mi07_01Seg: UISegmentedControl!
    var mi07Score: UILabel!
    
    func initM07() {
        //Inits Label UI
        mi07Title = UILabel(frame: CGRect(x: labelX, y: 2580.0, width: labelWidth, height: labelHeight))
        mi07Title.text = "M07 - Space Walk Emergency"
        mi07Title.font = mi07Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi07Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi07Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi07Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi07Title, attribute: .top, relatedBy: .equal, toItem: mi06Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi07_01Text = UITextView(frame: CGRect(x: labelX, y: 2630.0, width: labelWidth, height: textHeight))
        mi07_01Text.text = "Astronaut “Gerhard” is in the Habitation Hub’s Airlock Chamber:"
        mi07_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi07_01Text.isScrollEnabled = false
        mi07_01Text.isEditable = false
        mi07_01Text.isSelectable = false
        scrollView.addSubview(mi07_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi07_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi07_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi07_01Text, attribute: .top, relatedBy: .equal, toItem: mi07Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi07_01Seg = UISegmentedControl(items: ["No", "Partly", "Completely"])
        //Special frame for triple segmented control
        mi07_01Seg.frame = CGRect(x: segX - segWidth / 4, y: 2710.0, width: segWidth * 1.5, height: segHeight)
        mi07_01Seg.selectedSegmentIndex = 0
        mi07_01Seg.addTarget(self, action: #selector(mi07SegAction), for: .valueChanged)
        scrollView.addSubview(mi07_01Seg)
        //constant is changed for triple segmented control
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi07_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 174.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi07_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 174.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi07_01Seg, attribute: .top, relatedBy: .equal, toItem: mi07_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi07SegControls.append(mi07_01Seg)
        
        //Inits Label UI for score
        mi07Score = UILabel(frame: CGRect(x: labelX, y: 2750.0, width: labelWidth, height: labelHeight))
        mi07Score.text = "Score: 0"
        mi07Score.font = mi07Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi07Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi07Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi07Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi07Score, attribute: .top, relatedBy: .equal, toItem: mi07_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 07 Outlet
    var mi07SegControls: [UISegmentedControl] = []
    
    //Mission 07 Action
    @objc func mi07SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi07SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.M07_01Status = .partially
                } else if (sender.selectedSegmentIndex == 2) {
                    round.M07_01Status = .completely
                } else {
                    round.M07_01Status = .no
                }
            }
            mi07Score.text = "Score: \(round.M07_01Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
    
    //M08 Aerobic Exersise
    var mi08Title: UILabel!
    var mi08_01Text: UITextView!
    var mi08_01Seg: UISegmentedControl!
    var mi08Score: UILabel!
    
    func initM08() {
        //Inits Label UI
        mi08Title = UILabel(frame: CGRect(x: labelX, y: 2810.0, width: labelWidth, height: labelHeight))
        mi08Title.text = "M08 - Aerobic Exercise"
        mi08Title.font = mi08Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi08Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi08Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi08Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi08Title, attribute: .top, relatedBy: .equal, toItem: mi07Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi08_01Text = UITextView(frame: CGRect(x: labelX, y: 2860.0, width: labelWidth, height: textHeight))
        mi08_01Text.text = "Exercise pointer tip is in (due only to moving one or both Handle Assemblies):"
        mi08_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi08_01Text.isScrollEnabled = false
        mi08_01Text.isEditable = false
        mi08_01Text.isSelectable = false
        scrollView.addSubview(mi08_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi08_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi08_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi08_01Text, attribute: .top, relatedBy: .equal, toItem: mi08Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi08_01Seg = UISegmentedControl(items: ["None", "Gray", "White", "Orange"])
        //Special frame for quadruple segmented control
        mi08_01Seg.frame = CGRect(x: segX - segWidth / 2, y: 2940.0, width: segWidth * 2, height: segHeight)
        mi08_01Seg.selectedSegmentIndex = 0
        mi08_01Seg.addTarget(self, action: #selector(mi08SegAction), for: .valueChanged)
        scrollView.addSubview(mi08_01Seg)
        //constant is changed for triple segmented control
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi08_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 104.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi08_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 104.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi08_01Seg, attribute: .top, relatedBy: .equal, toItem: mi08_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi08SegControls.append(mi08_01Seg)
        
        //Inits Label UI for score
        mi08Score = UILabel(frame: CGRect(x: labelX, y: 2980.0, width: labelWidth, height: labelHeight))
        mi08Score.text = "Score: 0"
        mi08Score.font = mi08Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi08Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi08Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi08Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi08Score, attribute: .top, relatedBy: .equal, toItem: mi08_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 08 Outlet
    var mi08SegControls: [UISegmentedControl] = []
    
    //Mission 08 Action
    @objc func mi08SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi08SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.M08_01Status = .gray
                } else if (sender.selectedSegmentIndex == 2) {
                    round.M08_01Status = .white
                } else if (sender.selectedSegmentIndex == 3) {
                    round.M08_01Status = .orange
                } else {
                    round.M08_01Status = .none
                }
            }
            mi08Score.text = "Score: \(round.M08_01Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
    
    //M09 Strength Exercise
    var mi09Title: UILabel!
    var mi09_01Text: UITextView!
    var mi09_01Seg: UISegmentedControl!
    var mi09Score: UILabel!
    
    func initM09() {
        //Inits Label UI
        mi09Title = UILabel(frame: CGRect(x: labelX, y: 3040.0, width: labelWidth, height: labelHeight))
        mi09Title.text = "M09 - Strength Exercise"
        mi09Title.font = mi09Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi09Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi09Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi09Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi09Title, attribute: .top, relatedBy: .equal, toItem: mi08Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi09_01Text = UITextView(frame: CGRect(x: labelX, y: 3090.0, width: labelWidth, height: textHeight))
        mi09_01Text.text = "Strength Bar is lifted so that the tooth-strip's 4th hole is at least partly in view."
        mi09_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi09_01Text.isScrollEnabled = false
        mi09_01Text.isEditable = false
        mi09_01Text.isSelectable = false
        scrollView.addSubview(mi09_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi09_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi09_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi09_01Text, attribute: .top, relatedBy: .equal, toItem: mi09Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi09_01Seg = UISegmentedControl(items: ["No", "Yes"])
        mi09_01Seg.frame = CGRect(x: segX, y: 3170.0, width: segWidth, height: segHeight)
        mi09_01Seg.selectedSegmentIndex = 0
        mi09_01Seg.addTarget(self, action: #selector(mi09SegAction), for: .valueChanged)
        scrollView.addSubview(mi09_01Seg)
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi09_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi09_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi09_01Seg, attribute: .top, relatedBy: .equal, toItem: mi09_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi09SegControls.append(mi09_01Seg)
        
        //Inits Label UI for score
        mi09Score = UILabel(frame: CGRect(x: labelX, y: 3210.0, width: labelWidth, height: labelHeight))
        mi09Score.text = "Score: 0"
        mi09Score.font = mi09Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi09Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi09Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi09Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi09Score, attribute: .top, relatedBy: .equal, toItem: mi09_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 09 Outlet
    var mi09SegControls: [UISegmentedControl] = []
    
    //Mission 09 Action
    @objc func mi09SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi09SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM09_01Done = true
                } else {
                    round.isM09_01Done = false
                }
            }
            mi09Score.text = "Score: \(round.M09_01Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
    
    //M10 Food Production
    var mi10Title: UILabel!
    var mi10_01Text: UITextView!
    var mi10_01Seg: UISegmentedControl!
    var mi10Score: UILabel!
    
    func initM10() {
        //Inits Label UI
        mi10Title = UILabel(frame: CGRect(x: labelX, y: 3270.0, width: labelWidth, height: labelHeight))
        mi10Title.text = "M10 - Food Production"
        mi10Title.font = mi10Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi10Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi10Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi10Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi10Title, attribute: .top, relatedBy: .equal, toItem: mi09Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi10_01Text = UITextView(frame: CGRect(x: labelX, y: 3320.0, width: labelWidth, height: textHeight))
        mi10_01Text.text = "Gray weight is dropped after green, but before tan (due only to moving the Push Bar.)"
        mi10_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi10_01Text.isScrollEnabled = false
        mi10_01Text.isEditable = false
        mi10_01Text.isSelectable = false
        scrollView.addSubview(mi10_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi10_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi10_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi10_01Text, attribute: .top, relatedBy: .equal, toItem: mi10Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi10_01Seg = UISegmentedControl(items: ["No", "Yes"])
        mi10_01Seg.frame = CGRect(x: segX, y: 3400.0, width: segWidth, height: segHeight)
        mi10_01Seg.selectedSegmentIndex = 0
        mi10_01Seg.addTarget(self, action: #selector(mi10SegAction), for: .valueChanged)
        scrollView.addSubview(mi10_01Seg)
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi10_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi10_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi10_01Seg, attribute: .top, relatedBy: .equal, toItem: mi10_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi10SegControls.append(mi10_01Seg)
        
        //Inits Label UI for score
        mi10Score = UILabel(frame: CGRect(x: labelX, y: 3440.0, width: labelWidth, height: labelHeight))
        mi10Score.text = "Score: 0"
        mi10Score.font = mi10Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi10Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi10Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi10Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi10Score, attribute: .top, relatedBy: .equal, toItem: mi10_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 10 Outlet
    var mi10SegControls: [UISegmentedControl] = []
    
    //Mission 10 Action
    @objc func mi10SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi10SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM10_01Done = true
                } else {
                    round.isM10_01Done = false
                }
            }
            mi10Score.text = "Score: \(round.M10_01Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
    
    //M11 Escape Velocity
    var mi11Title: UILabel!
    var mi11_01Text: UITextView!
    var mi11_01Seg: UISegmentedControl!
    var mi11Score: UILabel!
    
    func initM11() {
        //Inits Label UI
        mi11Title = UILabel(frame: CGRect(x: labelX, y: 3500.0, width: labelWidth, height: labelHeight))
        mi11Title.text = "M11 - Escape Velocity"
        mi11Title.font = mi11Title.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi11Title)
        //Constraints
        let leadingTitleConstraint = NSLayoutConstraint(item: mi11Title, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTitleConstraint = NSLayoutConstraint(item: mi11Title, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTitleConstraint = NSLayoutConstraint(item: mi11Title, attribute: .top, relatedBy: .equal, toItem: mi10Score, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        view.addConstraints([leadingTitleConstraint, trailingTitleConstraint, topTitleConstraint])
        
        //Inits Text UI
        mi11_01Text = UITextView(frame: CGRect(x: labelX, y: 3550.0, width: labelWidth, height: textHeight))
        mi11_01Text.text = "Spacecraft stays up (due only to pressing/hitting the Strike Pad)"
        mi11_01Text.font = UIFont.systemFont(ofSize: 20.0)
        mi11_01Text.isScrollEnabled = false
        mi11_01Text.isEditable = false
        mi11_01Text.isSelectable = false
        scrollView.addSubview(mi11_01Text)
        let leadingTextConstraint01 = NSLayoutConstraint(item: mi11_01Text, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingTextConstraint01 = NSLayoutConstraint(item: mi11_01Text, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topTextConstraint01 = NSLayoutConstraint(item: mi11_01Text, attribute: .top, relatedBy: .equal, toItem: mi11Title, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingTextConstraint01, trailingTextConstraint01, topTextConstraint01])
        
        //Inits SegControls UI
        mi11_01Seg = UISegmentedControl(items: ["No", "Yes"])
        mi11_01Seg.frame = CGRect(x: segX, y: 3630.0, width: segWidth, height: segHeight)
        mi11_01Seg.selectedSegmentIndex = 0
        mi11_01Seg.addTarget(self, action: #selector(mi11SegAction), for: .valueChanged)
        scrollView.addSubview(mi11_01Seg)
        let leadingSegConstraint01 = NSLayoutConstraint(item: mi11_01Seg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 244.0)
        let trailingSegConstraint01 = NSLayoutConstraint(item: mi11_01Seg, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 244.0)
        let topSegConstraint01 = NSLayoutConstraint(item: mi11_01Seg, attribute: .top, relatedBy: .equal, toItem: mi11_01Text, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingSegConstraint01, trailingSegConstraint01, topSegConstraint01])
        //Adds seg control to outlet
        mi11SegControls.append(mi11_01Seg)
        
        //Inits Label UI for score
        mi11Score = UILabel(frame: CGRect(x: labelX, y: 3670.0, width: labelWidth, height: labelHeight))
        mi11Score.text = "Score: 0"
        mi11Score.font = mi11Score.font.withSize(CGFloat(labelFontSize))
        scrollView.addSubview(mi11Score)
        //Constraints
        let leadingScoreConstraint = NSLayoutConstraint(item: mi11Score, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10.0)
        let trailingScoreConstraint = NSLayoutConstraint(item: mi11Score, attribute: .trailing, relatedBy: .lessThanOrEqual, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10.0)
        let topScoreConstraint = NSLayoutConstraint(item: mi11Score, attribute: .top, relatedBy: .equal, toItem: mi11_01Seg, attribute: .bottom, multiplier: 1.0, constant: 10.0)
        view.addConstraints([leadingScoreConstraint, trailingScoreConstraint, topScoreConstraint])
    }
    
    //Mission 10 Outlet
    var mi11SegControls: [UISegmentedControl] = []
    
    //Mission 10 Action
    @objc func mi11SegAction(sender: UISegmentedControl) {
        if let indexOfControl = mi11SegControls.index(of: sender) {
            if (indexOfControl == 0) {
                if (sender.selectedSegmentIndex == 1) {
                    round.isM11_01Done = true
                } else {
                    round.isM11_01Done = false
                }
            }
            mi11Score.text = "Score: \(round.M11_01Score)"
            totalScore.text = "Score: \(round.getTotalScore())"
        }
    }
}

