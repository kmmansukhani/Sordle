//
//  ViewController.swift
//  Wordle Solver
//
//  Created by vikingonfire on 2/7/22.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    var info: [Int] = [0,0,0,0,0]
    var all_combs = [[0, 0, 0, 0, 0],
    [0, 0, 0, 0, 1],
    [0, 0, 0, 0, 2],
    [0, 0, 0, 1, 0],
    [0, 0, 0, 1, 1],
    [0, 0, 0, 1, 2],
    [0, 0, 0, 2, 0],
    [0, 0, 0, 2, 1],
    [0, 0, 0, 2, 2],
    [0, 0, 1, 0, 0],
    [0, 0, 1, 0, 1],
    [0, 0, 1, 0, 2],
    [0, 0, 1, 1, 0],
    [0, 0, 1, 1, 1],
    [0, 0, 1, 1, 2],
    [0, 0, 1, 2, 0],
    [0, 0, 1, 2, 1],
    [0, 0, 1, 2, 2],
    [0, 0, 2, 0, 0],
    [0, 0, 2, 0, 1],
    [0, 0, 2, 0, 2],
    [0, 0, 2, 1, 0],
    [0, 0, 2, 1, 1],
    [0, 0, 2, 1, 2],
    [0, 0, 2, 2, 0],
    [0, 0, 2, 2, 1],
    [0, 0, 2, 2, 2],
    [0, 1, 0, 0, 0],
    [0, 1, 0, 0, 1],
    [0, 1, 0, 0, 2],
    [0, 1, 0, 1, 0],
    [0, 1, 0, 1, 1],
    [0, 1, 0, 1, 2],
    [0, 1, 0, 2, 0],
    [0, 1, 0, 2, 1],
    [0, 1, 0, 2, 2],
    [0, 1, 1, 0, 0],
    [0, 1, 1, 0, 1],
    [0, 1, 1, 0, 2],
    [0, 1, 1, 1, 0],
    [0, 1, 1, 1, 1],
    [0, 1, 1, 1, 2],
    [0, 1, 1, 2, 0],
    [0, 1, 1, 2, 1],
    [0, 1, 1, 2, 2],
    [0, 1, 2, 0, 0],
    [0, 1, 2, 0, 1],
    [0, 1, 2, 0, 2],
    [0, 1, 2, 1, 0],
    [0, 1, 2, 1, 1],
    [0, 1, 2, 1, 2],
    [0, 1, 2, 2, 0],
    [0, 1, 2, 2, 1],
    [0, 1, 2, 2, 2],
    [0, 2, 0, 0, 0],
    [0, 2, 0, 0, 1],
    [0, 2, 0, 0, 2],
    [0, 2, 0, 1, 0],
    [0, 2, 0, 1, 1],
    [0, 2, 0, 1, 2],
    [0, 2, 0, 2, 0],
    [0, 2, 0, 2, 1],
    [0, 2, 0, 2, 2],
    [0, 2, 1, 0, 0],
    [0, 2, 1, 0, 1],
    [0, 2, 1, 0, 2],
    [0, 2, 1, 1, 0],
    [0, 2, 1, 1, 1],
    [0, 2, 1, 1, 2],
    [0, 2, 1, 2, 0],
    [0, 2, 1, 2, 1],
    [0, 2, 1, 2, 2],
    [0, 2, 2, 0, 0],
    [0, 2, 2, 0, 1],
    [0, 2, 2, 0, 2],
    [0, 2, 2, 1, 0],
    [0, 2, 2, 1, 1],
    [0, 2, 2, 1, 2],
    [0, 2, 2, 2, 0],
    [0, 2, 2, 2, 1],
    [0, 2, 2, 2, 2],
    [1, 0, 0, 0, 0],
    [1, 0, 0, 0, 1],
    [1, 0, 0, 0, 2],
    [1, 0, 0, 1, 0],
    [1, 0, 0, 1, 1],
    [1, 0, 0, 1, 2],
    [1, 0, 0, 2, 0],
    [1, 0, 0, 2, 1],
    [1, 0, 0, 2, 2],
    [1, 0, 1, 0, 0],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 0, 2],
    [1, 0, 1, 1, 0],
    [1, 0, 1, 1, 1],
    [1, 0, 1, 1, 2],
    [1, 0, 1, 2, 0],
    [1, 0, 1, 2, 1],
    [1, 0, 1, 2, 2],
    [1, 0, 2, 0, 0],
    [1, 0, 2, 0, 1],
    [1, 0, 2, 0, 2],
    [1, 0, 2, 1, 0],
    [1, 0, 2, 1, 1],
    [1, 0, 2, 1, 2],
    [1, 0, 2, 2, 0],
    [1, 0, 2, 2, 1],
    [1, 0, 2, 2, 2],
    [1, 1, 0, 0, 0],
    [1, 1, 0, 0, 1],
    [1, 1, 0, 0, 2],
    [1, 1, 0, 1, 0],
    [1, 1, 0, 1, 1],
    [1, 1, 0, 1, 2],
    [1, 1, 0, 2, 0],
    [1, 1, 0, 2, 1],
    [1, 1, 0, 2, 2],
    [1, 1, 1, 0, 0],
    [1, 1, 1, 0, 1],
    [1, 1, 1, 0, 2],
    [1, 1, 1, 1, 0],
    [1, 1, 1, 1, 1],
    [1, 1, 1, 1, 2],
    [1, 1, 1, 2, 0],
    [1, 1, 1, 2, 1],
    [1, 1, 1, 2, 2],
    [1, 1, 2, 0, 0],
    [1, 1, 2, 0, 1],
    [1, 1, 2, 0, 2],
    [1, 1, 2, 1, 0],
    [1, 1, 2, 1, 1],
    [1, 1, 2, 1, 2],
    [1, 1, 2, 2, 0],
    [1, 1, 2, 2, 1],
    [1, 1, 2, 2, 2],
    [1, 2, 0, 0, 0],
    [1, 2, 0, 0, 1],
    [1, 2, 0, 0, 2],
    [1, 2, 0, 1, 0],
    [1, 2, 0, 1, 1],
    [1, 2, 0, 1, 2],
    [1, 2, 0, 2, 0],
    [1, 2, 0, 2, 1],
    [1, 2, 0, 2, 2],
    [1, 2, 1, 0, 0],
    [1, 2, 1, 0, 1],
    [1, 2, 1, 0, 2],
    [1, 2, 1, 1, 0],
    [1, 2, 1, 1, 1],
    [1, 2, 1, 1, 2],
    [1, 2, 1, 2, 0],
    [1, 2, 1, 2, 1],
    [1, 2, 1, 2, 2],
    [1, 2, 2, 0, 0],
    [1, 2, 2, 0, 1],
    [1, 2, 2, 0, 2],
    [1, 2, 2, 1, 0],
    [1, 2, 2, 1, 1],
    [1, 2, 2, 1, 2],
    [1, 2, 2, 2, 0],
    [1, 2, 2, 2, 1],
    [1, 2, 2, 2, 2],
    [2, 0, 0, 0, 0],
    [2, 0, 0, 0, 1],
    [2, 0, 0, 0, 2],
    [2, 0, 0, 1, 0],
    [2, 0, 0, 1, 1],
    [2, 0, 0, 1, 2],
    [2, 0, 0, 2, 0],
    [2, 0, 0, 2, 1],
    [2, 0, 0, 2, 2],
    [2, 0, 1, 0, 0],
    [2, 0, 1, 0, 1],
    [2, 0, 1, 0, 2],
    [2, 0, 1, 1, 0],
    [2, 0, 1, 1, 1],
    [2, 0, 1, 1, 2],
    [2, 0, 1, 2, 0],
    [2, 0, 1, 2, 1],
    [2, 0, 1, 2, 2],
    [2, 0, 2, 0, 0],
    [2, 0, 2, 0, 1],
    [2, 0, 2, 0, 2],
    [2, 0, 2, 1, 0],
    [2, 0, 2, 1, 1],
    [2, 0, 2, 1, 2],
    [2, 0, 2, 2, 0],
    [2, 0, 2, 2, 1],
    [2, 0, 2, 2, 2],
    [2, 1, 0, 0, 0],
    [2, 1, 0, 0, 1],
    [2, 1, 0, 0, 2],
    [2, 1, 0, 1, 0],
    [2, 1, 0, 1, 1],
    [2, 1, 0, 1, 2],
    [2, 1, 0, 2, 0],
    [2, 1, 0, 2, 1],
    [2, 1, 0, 2, 2],
    [2, 1, 1, 0, 0],
    [2, 1, 1, 0, 1],
    [2, 1, 1, 0, 2],
    [2, 1, 1, 1, 0],
    [2, 1, 1, 1, 1],
    [2, 1, 1, 1, 2],
    [2, 1, 1, 2, 0],
    [2, 1, 1, 2, 1],
    [2, 1, 1, 2, 2],
    [2, 1, 2, 0, 0],
    [2, 1, 2, 0, 1],
    [2, 1, 2, 0, 2],
    [2, 1, 2, 1, 0],
    [2, 1, 2, 1, 1],
    [2, 1, 2, 1, 2],
    [2, 1, 2, 2, 0],
    [2, 1, 2, 2, 1],
    [2, 1, 2, 2, 2],
    [2, 2, 0, 0, 0],
    [2, 2, 0, 0, 1],
    [2, 2, 0, 0, 2],
    [2, 2, 0, 1, 0],
    [2, 2, 0, 1, 1],
    [2, 2, 0, 1, 2],
    [2, 2, 0, 2, 0],
    [2, 2, 0, 2, 1],
    [2, 2, 0, 2, 2],
    [2, 2, 1, 0, 0],
    [2, 2, 1, 0, 1],
    [2, 2, 1, 0, 2],
    [2, 2, 1, 1, 0],
    [2, 2, 1, 1, 1],
    [2, 2, 1, 1, 2],
    [2, 2, 1, 2, 0],
    [2, 2, 1, 2, 1],
    [2, 2, 1, 2, 2],
    [2, 2, 2, 0, 0],
    [2, 2, 2, 0, 1],
    [2, 2, 2, 0, 2],
    [2, 2, 2, 1, 0],
    [2, 2, 2, 1, 1],
    [2, 2, 2, 1, 2],
    [2, 2, 2, 2, 0],
    [2, 2, 2, 2, 1],
    [2, 2, 2, 2, 2]]
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    var words: [String] = []
    var current_answer_space: [String] = []

    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var goBtn: UIButton!
    func resetColors() {
        btn1.backgroundColor = .gray
        btn2.backgroundColor = .gray
        btn3.backgroundColor = .gray

        btn4.backgroundColor  = .gray

        btn5.backgroundColor  = .gray
        info = [0,0,0,0,0]
    }
    
    func whatColor(color: UIColor?, n: Int) -> UIColor{
    
        if info[n-1 ] == 0{
            info[n-1] = 1
            return .systemYellow
        }
        if info[n-1] == 2 {
            info[n-1] = 0
            return .gray
        }
        if info[n-1] == 1{
            info[n-1] = 2
            return .systemGreen
        }
        return .gray
    }
    
    @IBAction func reset(_ sender: Any) {
        resetAll()
    }
    @IBAction func go(_ sender: Any) {
        thinkingLbl.isHidden = false
        goBtn.isEnabled = false
        goBtn.backgroundColor = goBtn.backgroundColor?.withAlphaComponent(0.5)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            self.generateListAndInit()
        }
       
        
        
    }
    @IBAction func btn1Press(_ sender: Any) {
        btn1.backgroundColor = whatColor(color: btn1.backgroundColor , n: 1)
     
    }
    
    @IBAction func btn2Press(_ sender: Any) {
        btn2.backgroundColor = whatColor(color: btn2.backgroundColor , n: 2)
        
    }
    @IBAction func btn3Press(_ sender: Any) {
        btn3.backgroundColor = whatColor(color: btn3.backgroundColor , n: 3)
        
    }		
    @IBAction func btn4Press(_ sender: Any) {
        btn4.backgroundColor = whatColor(color: btn4.backgroundColor , n:4 )

        
    }
    @IBAction func btn5Press(_ sender: Any) {
        btn5.backgroundColor = whatColor(color: btn5.backgroundColor , n:5)
        
    }
    
    @IBOutlet weak var thinkingLbl: UILabel!
    func get_current_word() -> String {
        
        return (btn1.titleLabel!.text! + btn2.titleLabel!.text! + btn3.titleLabel!.text! + btn4.titleLabel!.text! + btn5.titleLabel!.text!).lowercased()
    }
    
    func resetAll() {
        resetColors()
        current_answer_space = words
        setWord(word: "CRATE")
        errorLabel.textColor = .white
    }
    
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    func generateListAndInit(){
      
        
        errorLabel.textColor = .white
        
      
        
        
        if get_current_word() == "crate" {
            if info == [0,0,0,0,0] {
                current_answer_space = cut(info: info, word: get_current_word(), full_list: current_answer_space)
                setWord(word: "solid")
                resetColors()
                thinkingLbl.isHidden = true

                goBtn.isEnabled = true
                goBtn.backgroundColor = goBtn.backgroundColor?.withAlphaComponent(1.0)

                return
        }
            if info == [1,0,0,0,0] {
                current_answer_space = cut(info: info, word: get_current_word(), full_list: current_answer_space)
                setWord(word: "slick")
                resetColors()
                thinkingLbl.isHidden = true

                goBtn.isEnabled = true
                return
            }
            if info == [0,1,0,0,0] {
                current_answer_space = cut(info: info, word: get_current_word(), full_list: current_answer_space)
                setWord(word: "surly")
                resetColors()
                thinkingLbl.isHidden = true

                goBtn.isEnabled = true
                goBtn.backgroundColor = goBtn.backgroundColor?.withAlphaComponent(1.0)

                return
            }
            if info == [0,0,1,0,0] {
                current_answer_space = cut(info: info, word: get_current_word(), full_list: current_answer_space)
                setWord(word: "salon")
                resetColors()
                thinkingLbl.isHidden = true

                goBtn.isEnabled = true
                return
            }
            if info == [0,0,0,1,0] {
                current_answer_space = cut(info: info, word: get_current_word(), full_list: current_answer_space)
                setWord(word: "hoist")
                resetColors()
                thinkingLbl.isHidden = true

                goBtn.isEnabled = true
                goBtn.backgroundColor = goBtn.backgroundColor?.withAlphaComponent(1.0)

                return
            }
            if info == [0,0,0,0,1] {
                current_answer_space = cut(info: info, word: get_current_word(), full_list: current_answer_space)
                setWord(word: "olden")
                resetColors()
                thinkingLbl.isHidden = true

                goBtn.isEnabled = true
                goBtn.backgroundColor = goBtn.backgroundColor?.withAlphaComponent(1.0)

                return
            }
        }
       
            let prev_answer_space = current_answer_space
            current_answer_space = cut(info: info, word: get_current_word(), full_list: current_answer_space)
            if current_answer_space.isEmpty {
                errorLabel.textColor = .red
                errorLabel.text = "Error: no words found"
                current_answer_space = prev_answer_space
                goBtn.isEnabled = true
                goBtn.backgroundColor = goBtn.backgroundColor?.withAlphaComponent(1.0)

                thinkingLbl.isHidden = true

                return
            }
            let nextWord = get_word_with_max_entropy(wordlist: current_answer_space)
            setWord(word: nextWord)
       
            resetColors()
        goBtn.isEnabled = true
        goBtn.backgroundColor = goBtn.backgroundColor?.withAlphaComponent(1.0)

        thinkingLbl.isHidden = true

            
        
    }
    
    
    @IBOutlet weak var changeFirstGuess: UIButton!
    
    @IBOutlet weak var navbar: UINavigationBar!
    
    func shouldGenerateList() -> Bool{
        if btn1.backgroundColor == .blue {
            return false
        }
        if btn2.backgroundColor  == .blue {
            return false
        }
        if btn3.backgroundColor  == .blue {
            return false
        }
        if btn4.backgroundColor  == .blue {
            return false
        }
        if btn5.backgroundColor  == .blue {
            return false
        }
        return true
            
    }
    func setWord(word: String) {
        if word.count != 5 {
            errorLabel.text = "Guess must be five letters. Please try again."
            errorLabel.textColor = .red
            return
        }
        var word_upper = word.uppercased()
        btn1.setTitle(String(word_upper[0]), for: .normal)
        btn2.setTitle(String(word_upper[1]), for: .normal)
        btn3.setTitle(String(word_upper[2]), for: .normal)
        btn4.setTitle(String(word_upper[3]), for: .normal)
        btn5.setTitle(String(word_upper[4]), for: .normal)
        
        
    }
    
    func word_fits_criteria(info: [Int], word: String, word_to_check: String) -> Bool{
        for i in 0..<info.count {
           
            if (info[i] == 0) {
                let indices = word.indicesOf(string: String(word[i])) //gets all occurences of word[i] in word
                for j in indices {
                    if j != i  {
                        if info[j] == 2 { //if other letter is green, check if
                            let ind = word_to_check.indicesOf(string: String(word[i]))
                            for k in ind {
                                if k != j {
                                    return false
                                }
                            }
                         
                        }
                        
                         if info[j] == 1 {
                             if j > i {
                                 return false
                             }
                             if word_to_check[i] == word[i] || word_to_check.indicesOf(string: String(word[i])).count != 1 {
                                    return false
                                }
                        }
                        if info[j] == 0 {
                                if word_to_check.indexInt(of: word[i]) != nil {
                                    return false
                                }
                            }
                            
                        }
                       
                    
                    
                    
                }
                if indices.count == 1 {
                    if word_to_check.indexInt(of: word[i]) != nil {
                        return false
                    }
                }
                
                
            /*    if word.indexInt(of: word[i]) != i && info[word.indexInt(of: word[i])!] != 0 {
                    //if there is a letter in word same as word[i]
                    
                        if word_to_check.indexInt(of: word[i]) == nil {
                            return false
                        }
                        if word_to_check[i] == word[i] {
                            return false
                        }
                    
                }else{
                    if word_to_check.indexInt(of: word[i]) != nil {
                        return false
                    }

                }*/
                
                
               
                
            }
            if (info[i] == 1){
                let indices = word.indicesOf(string: String(word[i])) //gets all occurences of word[i] in word
                for j in indices {
                    if j != i {
                        if info[j] == 1 {
                            if word_to_check.indicesOf(string: String(word[i])).count != indices.count {
                                return false
                            }
                        }
                        if info[j] == 2{
                            if word_to_check[j] != word[i] || word[i] == word_to_check[i] || word_to_check.indexInt(of: word[i]) == nil || word_to_check.indicesOf(string: String(word[i])).count != indices.count {
                               
                                return false
                            }
                        }
                    }
                }
               
                    if word_to_check.indexInt(of: word[i]) == nil {
                      
                        return false
                    }
                    if word_to_check[i] == word[i] {
                        return false
                    }
                
               
                
            }
            if (info[i] == 2) {
                if word_to_check[i] != word[i] {
                    return false
                }
            }
        }
        return true

    }
  
    @IBAction func changeStartingWord(_ sender: Any) {
        errorLabel.textColor = .white
        let alertController = UIAlertController(title: "Starting Word", message: "Enter your starting word", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            // configure the properties of the text field
            textField.placeholder = "Five-letter word"
        }


        // add the buttons/actions to the view controller
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let doneAction = UIAlertAction(title: "Done", style: .default) { _ in

            // this code runs when the user hits the "save" button

            let inputName = alertController.textFields![0].text
            self.setWord(word: inputName!)
            print(inputName)

        }

        alertController.addAction(cancelAction)
        alertController.addAction(doneAction)

        present(alertController, animated: true, completion: nil)
    }
    @IBAction func help(_ sender: Any) {
        performSegue(withIdentifier: "seg", sender: self)
    }
    
    func cut(info: [Int], word: String, full_list: [String]) -> [String] {
        var new_list: [String] = []
            for i in full_list {
                if word_fits_criteria(info: info, word: word, word_to_check: i) {
                    new_list.append(i)
                }
            }
            return new_list
    }
    func get_word_with_max_entropy(wordlist: [String]) -> String {
        var max_entropy: Double = 0.0
        var max_word = ""
        var entropy_dict: [String: Double] = [:]
        for word in wordlist {
            let entropy = get_entropy(word: word, wordlist: wordlist)
            entropy_dict[word] = entropy
            if entropy >= max_entropy {
                max_entropy = entropy
                max_word = word
                
            }
        }
      

       
        return max_word
    }
    
    func get_entropy(word: String, wordlist: [String]) -> Double{
        var sum: Double = 0.0
        for combination in all_combs {
            let list_of_all_possible_words = cut(info: combination, word: word, full_list: wordlist)
            //print(word, combination, list_of_all_possible_words)
            let p: Double = Double(list_of_all_possible_words.count)/Double(wordlist.count)
            if p == 0.0 {
                continue
            }
            sum += p * log2(1/p)
            
        }
        return sum
    }
    func unique(_ string: String) -> Bool {
        for i in 0..<string.count {
            for j in (i+1)..<string.count {
                let firstIndex = string.index(string.startIndex, offsetBy: i)
                let secondIndex = string.index(string.startIndex, offsetBy: j)
                if (string[firstIndex] == string[secondIndex]) {
                    return false
                }
            }
        }
        return true
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        (UIApplication.shared.delegate as! AppDelegate).restrictRotation = .portrait
        print("hello")
        btn1.layer.cornerRadius = 5
        btn2.layer.cornerRadius = 5
        btn3.layer.cornerRadius = 5
        btn4.layer.cornerRadius = 5
        btn5.layer.cornerRadius = 5
        resetColors()
        thinkingLbl.isHidden = true
        

        words = ["aback", "abase", "abate", "abbey", "abbot", "abhor", "abide", "abled", "abode", "abort", "about", "above", "abuse", "abyss", "acorn", "acrid", "actor", "acute", "adage", "adapt", "adept", "admin", "admit", "adobe", "adopt", "adore", "adorn", "adult", "affix", "afire", "afoot", "afoul", "after", "again", "agape", "agate", "agent", "agile", "aging", "aglow", "agony", "agora", "agree", "ahead", "aider", "aisle", "alarm", "album", "alert", "algae", "alibi", "alien", "align", "alike", "alive", "allay", "alley", "allot", "allow", "alloy", "aloft", "alone", "along", "aloof", "aloud", "alpha", "altar", "alter", "amass", "amaze", "amber", "amble", "amend", "amiss", "amity", "among", "ample", "amply", "amuse", "angel", "anger", "angle", "angry", "angst", "anime", "ankle", "annex", "annoy", "annul", "anode", "antic", "anvil", "aorta", "apart", "aphid", "aping", "apnea", "apple", "apply", "apron", "aptly", "arbor", "ardor", "arena", "argue", "arise", "armor", "aroma", "arose", "array", "arrow", "arson", "artsy", "ascot", "ashen", "aside", "askew", "assay", "asset", "atoll", "atone", "attic", "audio", "audit", "augur", "aunty", "avail", "avert", "avian", "avoid", "await", "awake", "award", "aware", "awash", "awful", "awoke", "axial", "axiom", "axion", "azure", "bacon", "badge", "badly", "bagel", "baggy", "baker", "baler", "balmy", "banal", "banjo", "barge", "baron", "basal", "basic", "basil", "basin", "basis", "baste", "batch", "bathe", "baton", "batty", "bawdy", "bayou", "beach", "beady", "beard", "beast", "beech", "beefy", "befit", "began", "begat", "beget", "begin", "begun", "being", "belch", "belie", "belle", "belly", "below", "bench", "beret", "berry", "berth", "beset", "betel", "bevel", "bezel", "bible", "bicep", "biddy", "bigot", "bilge", "billy", "binge", "bingo", "biome", "birch", "birth", "bison", "bitty", "black", "blade", "blame", "bland", "blank", "blare", "blast", "blaze", "bleak", "bleat", "bleed", "bleep", "blend", "bless", "blimp", "blind", "blink", "bliss", "blitz", "bloat", "block", "bloke", "blond", "blood", "bloom", "blown", "bluer", "bluff", "blunt", "blurb", "blurt", "blush", "board", "boast", "bobby", "boney", "bongo", "bonus", "booby", "boost", "booth", "booty", "booze", "boozy", "borax", "borne", "bosom", "bossy", "botch", "bough", "boule", "bound", "bowel", "boxer", "brace", "braid", "brain", "brake", "brand", "brash", "brass", "brave", "bravo", "brawl", "brawn", "bread", "break", "breed", "briar", "bribe", "brick", "bride", "brief", "brine", "bring", "brink", "briny", "brisk", "broad", "broil", "broke", "brood", "brook", "broom", "broth", "brown", "brunt", "brush", "brute", "buddy", "budge", "buggy", "bugle", "build", "built", "bulge", "bulky", "bully", "bunch", "bunny", "burly", "burnt", "burst", "bused", "bushy", "butch", "butte", "buxom", "buyer", "bylaw", "cabal", "cabby", "cabin", "cable", "cacao", "cache", "cacti", "caddy", "cadet", "cagey", "cairn", "camel", "cameo", "canal", "candy", "canny", "canoe", "canon", "caper", "caput", "carat", "cargo", "carol", "carry", "carve", "caste", "catch", "cater", "catty", "caulk", "cause", "cavil", "cease", "cedar", "cello", "chafe", "chaff", "chain", "chair", "chalk", "champ", "chant", "chaos", "chard", "charm", "chart", "chase", "chasm", "cheap", "cheat", "check", "cheek", "cheer", "chess", "chest", "chick", "chide", "chief", "child", "chili", "chill", "chime", "china", "chirp", "chock", "choir", "choke", "chord", "chore", "chose", "chuck", "chump", "chunk", "churn", "chute", "cider", "cigar", "cinch", "circa", "civic", "civil", "clack", "claim", "clamp", "clang", "clank", "clash", "clasp", "class", "clean", "clear", "cleat", "cleft", "clerk", "click", "cliff", "climb", "cling", "clink", "cloak", "clock", "clone", "close", "cloth", "cloud", "clout", "clove", "clown", "cluck", "clued", "clump", "clung", "coach", "coast", "cobra", "cocoa", "colon", "color", "comet", "comfy", "comic", "comma", "conch", "condo", "conic", "copse", "coral", "corer", "corny", "couch", "cough", "could", "count", "coupe", "court", "coven", "cover", "covet", "covey", "cower", "coyly", "crack", "craft", "cramp", "crane", "crank", "crash", "crass", "crate", "crave", "crawl", "craze", "crazy", "creak", "cream", "credo", "creed", "creek", "creep", "creme", "crepe", "crept", "cress", "crest", "crick", "cried", "crier", "crime", "crimp", "crisp", "croak", "crock", "crone", "crony", "crook", "cross", "croup", "crowd", "crown", "crude", "cruel", "crumb", "crump", "crush", "crust", "crypt", "cubic", "cumin", "curio", "curly", "curry", "curse", "curve", "curvy", "cutie", "cyber", "cycle", "cynic", "daddy", "daily", "dairy", "daisy", "dally", "dance", "dandy", "datum", "daunt", "dealt", "death", "debar", "debit", "debug", "debut", "decal", "decay", "decor", "decoy", "decry", "defer", "deign", "deity", "delay", "delta", "delve", "demon", "demur", "denim", "dense", "depot", "depth", "derby", "deter", "detox", "deuce", "devil", "diary", "dicey", "digit", "dilly", "dimly", "diner", "dingo", "dingy", "diode", "dirge", "dirty", "disco", "ditch", "ditto", "ditty", "diver", "dizzy", "dodge", "dodgy", "dogma", "doing", "dolly", "donor", "donut", "dopey", "doubt", "dough", "dowdy", "dowel", "downy", "dowry", "dozen", "draft", "drain", "drake", "drama", "drank", "drape", "drawl", "drawn", "dread", "dream", "dress", "dried", "drier", "drift", "drill", "drink", "drive", "droit", "droll", "drone", "drool", "droop", "dross", "drove", "drown", "druid", "drunk", "dryer", "dryly", "duchy", "dully", "dummy", "dumpy", "dunce", "dusky", "dusty", "dutch", "duvet", "dwarf", "dwell", "dwelt", "dying", "eager", "eagle", "early", "earth", "easel", "eaten", "eater", "ebony", "eclat", "edict", "edify", "eerie", "egret", "eight", "eject", "eking", "elate", "elbow", "elder", "elect", "elegy", "elfin", "elide", "elite", "elope", "elude", "email", "embed", "ember", "emcee", "empty", "enact", "endow", "enema", "enemy", "enjoy", "ennui", "ensue", "enter", "entry", "envoy", "epoch", "epoxy", "equal", "equip", "erase", "erect", "erode", "error", "erupt", "essay", "ester", "ether", "ethic", "ethos", "etude", "evade", "event", "every", "evict", "evoke", "exact", "exalt", "excel", "exert", "exile", "exist", "expel", "extol", "extra", "exult", "eying", "fable", "facet", "faint", "fairy", "faith", "false", "fancy", "fanny", "farce", "fatal", "fatty", "fault", "fauna", "favor", "feast", "fecal", "feign", "fella", "felon", "femme", "femur", "fence", "feral", "ferry", "fetal", "fetch", "fetid", "fetus", "fever", "fewer", "fiber", "fibre", "ficus", "field", "fiend", "fiery", "fifth", "fifty", "fight", "filer", "filet", "filly", "filmy", "filth", "final", "finch", "finer", "first", "fishy", "fixer", "fizzy", "fjord", "flack", "flail", "flair", "flake", "flaky", "flame", "flank", "flare", "flash", "flask", "fleck", "fleet", "flesh", "flick", "flier", "fling", "flint", "flirt", "float", "flock", "flood", "floor", "flora", "floss", "flour", "flout", "flown", "fluff", "fluid", "fluke", "flume", "flung", "flunk", "flush", "flute", "flyer", "foamy", "focal", "focus", "foggy", "foist", "folio", "folly", "foray", "force", "forge", "forgo", "forte", "forth", "forty", "forum", "found", "foyer", "frail", "frame", "frank", "fraud", "freak", "freed", "freer", "fresh", "friar", "fried", "frill", "frisk", "fritz", "frock", "frond", "front", "frost", "froth", "frown", "froze", "fruit", "fudge", "fugue", "fully", "fungi", "funky", "funny", "furor", "furry", "fussy", "fuzzy", "gaffe", "gaily", "gamer", "gamma", "gamut", "gassy", "gaudy", "gauge", "gaunt", "gauze", "gavel", "gawky", "gayer", "gayly", "gazer", "gecko", "geeky", "geese", "genie", "genre", "ghost", "ghoul", "giant", "giddy", "gipsy", "girly", "girth", "given", "giver", "glade", "gland", "glare", "glass", "glaze", "gleam", "glean", "glide", "glint", "gloat", "globe", "gloom", "glory", "gloss", "glove", "glyph", "gnash", "gnome", "godly", "going", "golem", "golly", "gonad", "goner", "goody", "gooey", "goofy", "goose", "gorge", "gouge", "gourd", "grace", "grade", "graft", "grail", "grain", "grand", "grant", "grape", "graph", "grasp", "grass", "grate", "grave", "gravy", "graze", "great", "greed", "green", "greet", "grief", "grill", "grime", "grimy", "grind", "gripe", "groan", "groin", "groom", "grope", "gross", "group", "grout", "grove", "growl", "grown", "gruel", "gruff", "grunt", "guard", "guava", "guess", "guest", "guide", "guild", "guile", "guilt", "guise", "gulch", "gully", "gumbo", "gummy", "guppy", "gusto", "gusty", "gypsy", "habit", "hairy", "halve", "handy", "happy", "hardy", "harem", "harpy", "harry", "harsh", "haste", "hasty", "hatch", "hater", "haunt", "haute", "haven", "havoc", "hazel", "heady", "heard", "heart", "heath", "heave", "heavy", "hedge", "hefty", "heist", "helix", "hello", "hence", "heron", "hilly", "hinge", "hippo", "hippy", "hitch", "hoard", "hobby", "hoist", "holly", "homer", "honey", "honor", "horde", "horny", "horse", "hotel", "hotly", "hound", "house", "hovel", "hover", "howdy", "human", "humid", "humor", "humph", "humus", "hunch", "hunky", "hurry", "husky", "hussy", "hutch", "hydro", "hyena", "hymen", "hyper", "icily", "icing", "ideal", "idiom", "idiot", "idler", "idyll", "igloo", "iliac", "image", "imbue", "impel", "imply", "inane", "inbox", "incur", "index", "inept", "inert", "infer", "ingot", "inlay", "inlet", "inner", "input", "inter", "intro", "ionic", "irate", "irony", "islet", "issue", "itchy", "ivory", "jaunt", "jazzy", "jelly", "jerky", "jetty", "jewel", "jiffy", "joint", "joist", "joker", "jolly", "joust", "judge", "juice", "juicy", "jumbo", "jumpy", "junta", "junto", "juror", "kappa", "karma", "kayak", "kebab", "khaki", "kinky", "kiosk", "kitty", "knack", "knave", "knead", "kneed", "kneel", "knelt", "knife", "knock", "knoll", "known", "koala", "krill", "label", "labor", "laden", "ladle", "lager", "lance", "lanky", "lapel", "lapse", "large", "larva", "lasso", "latch", "later", "lathe", "latte", "laugh", "layer", "leach", "leafy", "leaky", "leant", "leapt", "learn", "lease", "leash", "least", "leave", "ledge", "leech", "leery", "lefty", "legal", "leggy", "lemon", "lemur", "leper", "level", "lever", "libel", "liege", "light", "liken", "lilac", "limbo", "limit", "linen", "liner", "lingo", "lipid", "lithe", "liver", "livid", "llama", "loamy", "loath", "lobby", "local", "locus", "lodge", "lofty", "logic", "login", "loopy", "loose", "lorry", "loser", "louse", "lousy", "lover", "lower", "lowly", "loyal", "lucid", "lucky", "lumen", "lumpy", "lunar", "lunch", "lunge", "lupus", "lurch", "lurid", "lusty", "lying", "lymph", "lynch", "lyric", "macaw", "macho", "macro", "madam", "madly", "mafia", "magic", "magma", "maize", "major", "maker", "mambo", "mamma", "mammy", "manga", "mange", "mango", "mangy", "mania", "manic", "manly", "manor", "maple", "march", "marry", "marsh", "mason", "masse", "match", "matey", "mauve", "maxim", "maybe", "mayor", "mealy", "meant", "meaty", "mecca", "medal", "media", "medic", "melee", "melon", "mercy", "merge", "merit", "merry", "metal", "meter", "metro", "micro", "midge", "midst", "might", "milky", "mimic", "mince", "miner", "minim", "minor", "minty", "minus", "mirth", "miser", "missy", "mocha", "modal", "model", "modem", "mogul", "moist", "molar", "moldy", "money", "month", "moody", "moose", "moral", "moron", "morph", "mossy", "motel", "motif", "motor", "motto", "moult", "mound", "mount", "mourn", "mouse", "mouth", "mover", "movie", "mower", "mucky", "mucus", "muddy", "mulch", "mummy", "munch", "mural", "murky", "mushy", "music", "musky", "musty", "myrrh", "nadir", "naive", "nanny", "nasal", "nasty", "natal", "naval", "navel", "needy", "neigh", "nerdy", "nerve", "never", "newer", "newly", "nicer", "niche", "niece", "night", "ninja", "ninny", "ninth", "noble", "nobly", "noise", "noisy", "nomad", "noose", "north", "nosey", "notch", "novel", "nudge", "nurse", "nutty", "nylon", "nymph", "oaken", "obese", "occur", "ocean", "octal", "octet", "odder", "oddly", "offal", "offer", "often", "olden", "older", "olive", "ombre", "omega", "onion", "onset", "opera", "opine", "opium", "optic", "orbit", "order", "organ", "other", "otter", "ought", "ounce", "outdo", "outer", "outgo", "ovary", "ovate", "overt", "ovine", "ovoid", "owing", "owner", "oxide", "ozone", "paddy", "pagan", "paint", "paler", "palsy", "panel", "panic", "pansy", "papal", "paper", "parer", "parka", "parry", "parse", "party", "pasta", "paste", "pasty", "patch", "patio", "patsy", "patty", "pause", "payee", "payer", "peace", "peach", "pearl", "pecan", "pedal", "penal", "pence", "penne", "penny", "perch", "peril", "perky", "pesky", "pesto", "petal", "petty", "phase", "phone", "phony", "photo", "piano", "picky", "piece", "piety", "piggy", "pilot", "pinch", "piney", "pinky", "pinto", "piper", "pique", "pitch", "pithy", "pivot", "pixel", "pixie", "pizza", "place", "plaid", "plain", "plait", "plane", "plank", "plant", "plate", "plaza", "plead", "pleat", "plied", "plier", "pluck", "plumb", "plume", "plump", "plunk", "plush", "poesy", "point", "poise", "poker", "polar", "polka", "polyp", "pooch", "poppy", "porch", "poser", "posit", "posse", "pouch", "pound", "pouty", "power", "prank", "prawn", "preen", "press", "price", "prick", "pride", "pried", "prime", "primo", "print", "prior", "prism", "privy", "prize", "probe", "prone", "prong", "proof", "prose", "proud", "prove", "prowl", "proxy", "prude", "prune", "psalm", "pubic", "pudgy", "puffy", "pulpy", "pulse", "punch", "pupal", "pupil", "puppy", "puree", "purer", "purge", "purse", "pushy", "putty", "pygmy", "quack", "quail", "quake", "qualm", "quark", "quart", "quash", "quasi", "queen", "queer", "quell", "query", "quest", "queue", "quick", "quiet", "quill", "quilt", "quirk", "quite", "quota", "quote", "quoth", "rabbi", "rabid", "racer", "radar", "radii", "radio", "rainy", "raise", "rajah", "rally", "ralph", "ramen", "ranch", "randy", "range", "rapid", "rarer", "raspy", "ratio", "ratty", "raven", "rayon", "razor", "reach", "react", "ready", "realm", "rearm", "rebar", "rebel", "rebus", "rebut", "recap", "recur", "recut", "reedy", "refer", "refit", "regal", "rehab", "reign", "relax", "relay", "relic", "remit", "renal", "renew", "repay", "repel", "reply", "rerun", "reset", "resin", "retch", "retro", "retry", "reuse", "revel", "revue", "rhino", "rhyme", "rider", "ridge", "rifle", "right", "rigid", "rigor", "rinse", "ripen", "riper", "risen", "riser", "risky", "rival", "river", "rivet", "roach", "roast", "robin", "robot", "rocky", "rodeo", "roger", "rogue", "roomy", "roost", "rotor", "rouge", "rough", "round", "rouse", "route", "rover", "rowdy", "rower", "royal", "ruddy", "ruder", "rugby", "ruler", "rumba", "rumor", "rupee", "rural", "rusty", "sadly", "safer", "saint", "salad", "sally", "salon", "salsa", "salty", "salve", "salvo", "sandy", "saner", "sappy", "sassy", "satin", "satyr", "sauce", "saucy", "sauna", "saute", "savor", "savoy", "savvy", "scald", "scale", "scalp", "scaly", "scamp", "scant", "scare", "scarf", "scary", "scene", "scent", "scion", "scoff", "scold", "scone", "scoop", "scope", "score", "scorn", "scour", "scout", "scowl", "scram", "scrap", "scree", "screw", "scrub", "scrum", "scuba", "sedan", "seedy", "segue", "seize", "semen", "sense", "sepia", "serif", "serum", "serve", "setup", "seven", "sever", "sewer", "shack", "shade", "shady", "shaft", "shake", "shaky", "shale", "shall", "shalt", "shame", "shank", "shape", "shard", "share", "shark", "sharp", "shave", "shawl", "shear", "sheen", "sheep", "sheer", "sheet", "sheik", "shelf", "shell", "shied", "shift", "shine", "shiny", "shire", "shirk", "shirt", "shoal", "shock", "shone", "shook", "shoot", "shore", "shorn", "short", "shout", "shove", "shown", "showy", "shrew", "shrub", "shrug", "shuck", "shunt", "shush", "shyly", "siege", "sieve", "sight", "sigma", "silky", "silly", "since", "sinew", "singe", "siren", "sissy", "sixth", "sixty", "skate", "skier", "skiff", "skill", "skimp", "skirt", "skulk", "skull", "skunk", "slack", "slain", "slang", "slant", "slash", "slate", "sleek", "sleep", "sleet", "slept", "slice", "slick", "slide", "slime", "slimy", "sling", "slink", "sloop", "slope", "slosh", "sloth", "slump", "slung", "slunk", "slurp", "slush", "slyly", "smack", "small", "smart", "smash", "smear", "smell", "smelt", "smile", "smirk", "smite", "smith", "smock", "smoke", "smoky", "smote", "snack", "snail", "snake", "snaky", "snare", "snarl", "sneak", "sneer", "snide", "sniff", "snipe", "snoop", "snore", "snort", "snout", "snowy", "snuck", "snuff", "soapy", "sober", "soggy", "solar", "solid", "solve", "sonar", "sonic", "sooth", "sooty", "sorry", "sound", "south", "sower", "space", "spade", "spank", "spare", "spark", "spasm", "spawn", "speak", "spear", "speck", "speed", "spell", "spelt", "spend", "spent", "sperm", "spice", "spicy", "spied", "spiel", "spike", "spiky", "spill", "spilt", "spine", "spiny", "spire", "spite", "splat", "split", "spoil", "spoke", "spoof", "spook", "spool", "spoon", "spore", "sport", "spout", "spray", "spree", "sprig", "spunk", "spurn", "spurt", "squad", "squat", "squib", "stack", "staff", "stage", "staid", "stain", "stair", "stake", "stale", "stalk", "stall", "stamp", "stand", "stank", "stare", "stark", "start", "stash", "state", "stave", "stead", "steak", "steal", "steam", "steed", "steel", "steep", "steer", "stein", "stern", "stick", "stiff", "still", "stilt", "sting", "stink", "stint", "stock", "stoic", "stoke", "stole", "stomp", "stone", "stony", "stood", "stool", "stoop", "store", "stork", "storm", "story", "stout", "stove", "strap", "straw", "stray", "strip", "strut", "stuck", "study", "stuff", "stump", "stung", "stunk", "stunt", "style", "suave", "sugar", "suing", "suite", "sulky", "sully", "sumac", "sunny", "super", "surer", "surge", "surly", "sushi", "swami", "swamp", "swarm", "swash", "swath", "swear", "sweat", "sweep", "sweet", "swell", "swept", "swift", "swill", "swine", "swing", "swirl", "swish", "swoon", "swoop", "sword", "swore", "sworn", "swung", "synod", "syrup", "tabby", "table", "taboo", "tacit", "tacky", "taffy", "taint", "taken", "taker", "tally", "talon", "tamer", "tango", "tangy", "taper", "tapir", "tardy", "tarot", "taste", "tasty", "tatty", "taunt", "tawny", "teach", "teary", "tease", "teddy", "teeth", "tempo", "tenet", "tenor", "tense", "tenth", "tepee", "tepid", "terra", "terse", "testy", "thank", "theft", "their", "theme", "there", "these", "theta", "thick", "thief", "thigh", "thing", "think", "third", "thong", "thorn", "those", "three", "threw", "throb", "throw", "thrum", "thumb", "thump", "thyme", "tiara", "tibia", "tidal", "tiger", "tight", "tilde", "timer", "timid", "tipsy", "titan", "tithe", "title", "toast", "today", "toddy", "token", "tonal", "tonga", "tonic", "tooth", "topaz", "topic", "torch", "torso", "torus", "total", "totem", "touch", "tough", "towel", "tower", "toxic", "toxin", "trace", "track", "tract", "trade", "trail", "train", "trait", "tramp", "trash", "trawl", "tread", "treat", "trend", "triad", "trial", "tribe", "trice", "trick", "tried", "tripe", "trite", "troll", "troop", "trope", "trout", "trove", "truce", "truck", "truer", "truly", "trump", "trunk", "truss", "trust", "truth", "tryst", "tubal", "tuber", "tulip", "tulle", "tumor", "tunic", "turbo", "tutor", "twang", "tweak", "tweed", "tweet", "twice", "twine", "twirl", "twist", "twixt", "tying", "udder", "ulcer", "ultra", "umbra", "uncle", "uncut", "under", "undid", "undue", "unfed", "unfit", "unify", "union", "unite", "unity", "unlit", "unmet", "unset", "untie", "until", "unwed", "unzip", "upper", "upset", "urban", "urine", "usage", "usher", "using", "usual", "usurp", "utile", "utter", "vague", "valet", "valid", "valor", "value", "valve", "vapid", "vapor", "vault", "vaunt", "vegan", "venom", "venue", "verge", "verse", "verso", "verve", "vicar", "video", "vigil", "vigor", "villa", "vinyl", "viola", "viper", "viral", "virus", "visit", "visor", "vista", "vital", "vivid", "vixen", "vocal", "vodka", "vogue", "voice", "voila", "vomit", "voter", "vouch", "vowel", "vying", "wacky", "wafer", "wager", "wagon", "waist", "waive", "waltz", "warty", "waste", "watch", "water", "waver", "waxen", "weary", "weave", "wedge", "weedy", "weigh", "weird", "welch", "welsh", "wench", "whack", "whale", "wharf", "wheat", "wheel", "whelp", "where", "which", "whiff", "while", "whine", "whiny", "whirl", "whisk", "white", "whole", "whoop", "whose", "widen", "wider", "widow", "width", "wield", "wight", "willy", "wimpy", "wince", "winch", "windy", "wiser", "wispy", "witch", "witty", "woken", "woman", "women", "woody", "wooer", "wooly", "woozy", "wordy", "world", "worry", "worse", "worst", "worth", "would", "wound", "woven", "wrack", "wrath", "wreak", "wreck", "wrest", "wring", "wrist", "write", "wrong", "wrote", "wrung", "wryly", "yacht", "yearn", "yeast", "yield", "young", "youth", "zebra", "zesty", "zonal"]
      
        current_answer_space = words
        goBtn.layer.cornerRadius = goBtn.frame.height/2.11
        goBtn.clipsToBounds = true
        goBtn.backgroundColor = .blue
        resetBtn.layer.cornerRadius = resetBtn.frame.height/2.11
        resetBtn.clipsToBounds = true
        changeFirstGuess.layer.cornerRadius = changeFirstGuess.frame.height/2.11
        changeFirstGuess.clipsToBounds = true
        changeFirstGuess.backgroundColor = .blue
        // Do any additional setup after loading the view.
    }


}

public extension String {
  func indexInt(of char: Character) -> Int? {
    return firstIndex(of: char)?.utf16Offset(in: self)
  }
}
extension StringProtocol {
    subscript(offset: Int) -> Character {
	       self[index(startIndex, offsetBy: offset)]
    }
}
	
extension String {
    func indicesOf(string: String) -> [Int] {
        var indices = [Int]()
        var searchStartIndex = self.startIndex

        while searchStartIndex < self.endIndex,
            let range = self.range(of: string, range: searchStartIndex..<self.endIndex),
            !range.isEmpty
        {
            let index = distance(from: self.startIndex, to: range.lowerBound)
            indices.append(index)
            searchStartIndex = range.upperBound
        }

        return indices
    }
}
