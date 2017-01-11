//
//  ViewController.swift
//  2 Tabletki
//
//  Created by Linux on 06.01.2017.
//  Copyright © 2017 pl.mateuszblaszczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateBtn: UIButton!
    @IBOutlet weak var guzikKup: UIButton!
    
    @IBOutlet weak var pigulka: UIImageView!
    @IBOutlet weak var cudownaPigulka: UILabel!
    @IBOutlet weak var kasa: UILabel!
    @IBOutlet weak var kreska: UIView!
    @IBOutlet weak var imieNazwisko: UILabel!
    @IBOutlet weak var poleJeden: UITextField!
    @IBOutlet weak var ulica: UILabel!
    @IBOutlet weak var poleUlica: UITextField!
    @IBOutlet weak var miasto: UILabel!
    @IBOutlet weak var poleMiasto: UITextField!
    @IBOutlet weak var kraj: UILabel!
    @IBOutlet weak var wprowadzKraj: UITextField!
    @IBOutlet weak var kodPocztowy: UILabel!
    @IBOutlet weak var wprowadzMiasto: UITextField!
    @IBOutlet weak var wojewodztwo: UILabel!
    @IBOutlet weak var success: UIImageView!
    
    
    let wojewodztwa = ["dolonośląskie", "kujawsko-pomorskie", "lubelskie", "lubuskie", "łódzkie", "małopolskie", "mazowieckie", "opolskie", "podkarpackie", "podlaskie", "pomorskie", "śląskie", "świtokrzyskie", "warmińsko-mazurskie", "wielkopolskie", "zachodniopomorskie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buyBtnClick(_ sender: Any) {
        // ukryc wszystko na tym i tyle
        pigulka.isHidden = true
        cudownaPigulka.isHidden = true
        kasa.isHidden = true
        kreska.isHidden = true
        imieNazwisko.isHidden = true
        poleJeden.isHidden = true
        ulica.isHidden = true
        poleUlica.isHidden = true
        miasto.isHidden = true
        poleMiasto.isHidden = true
        kraj.isHidden = true
        wprowadzKraj.isHidden = true
        kodPocztowy.isHidden = true
        wprowadzMiasto.isHidden = true
        wojewodztwo.isHidden = true
        stateBtn.isHidden = true
        statePicker.isHidden = true
        guzikKup.isHidden = true
        success.isHidden = false
        
        
        
    }
    @IBAction func stateBtnPressed(_ sender: Any) {
        // akcja dla nacisniecia guzika
        statePicker.isHidden = false
        kraj.isHidden = true
        wprowadzKraj.isHidden = true
        kodPocztowy.isHidden = true
        wprowadzMiasto.isHidden = true
    }
    
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }

        func pickerView(_ picerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return wojewodztwa.count
        }
        
    @objc(pickerView:titleForRow:forComponent:) func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return wojewodztwa[row]
    
    }
    @objc(pickerView:didSelectRow:inComponent:) func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateBtn.setTitle(wojewodztwa[row], for: UIControlState.normal)
        statePicker.isHidden = true
        kraj.isHidden = false
        wprowadzKraj.isHidden = false
        kodPocztowy.isHidden = false
        wprowadzMiasto.isHidden = false
    }
    
    
    }

