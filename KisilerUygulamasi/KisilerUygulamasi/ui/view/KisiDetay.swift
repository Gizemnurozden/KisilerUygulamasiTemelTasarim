//
//  KisiDetay.swift
//  KisilerUygulamasi
//
//  Created by Gizemnur Özden on 9.11.2023.
//

import UIKit

class KisiDetay: UIViewController {
    
    var kisi:Kisiler?
    
    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    
    override func viewDidLoad() {
       
        
        super.viewDidLoad()
        if let k = kisi {
            tfKisiAd.text = k.kisi_ad
            tfKisiTel.text = k.kisi_tel
        }

       
    }
    

    @IBAction func buttonguncelle(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text , let k = kisi {
            guncelle(kisi_ad: ka, kisi_Tel: kt, kisi_id: k.kisi_id!)
            
        }
    }
    
    func guncelle (kisi_ad:String,kisi_Tel:String,kisi_id:Int) {
        print("Kişi Güncelle : \(kisi_id)- \(kisi_ad)- \(kisi_Tel)")
        
    }

    
}
