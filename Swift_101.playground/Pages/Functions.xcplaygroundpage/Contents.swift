import Foundation

// 1 den 100'e olan sayılar içerisinde ekrana TEKSAYI ve 7 ye bölünebilenleri BAS
var x = 0
var modNumber = 7
for sayi in 1 ... 100 {
    x += 1
    if sayi / 2 * 2 != sayi && (sayi % modNumber == 0) {
        print("\(x) Tek Sayı")
    }
}


//var greeting = "Merhaba"

func hello(name: String, surname: String, userName: String) -> String {
    let auth = userCheck(user: userName)
    return auth ? "Hello \(name)" + " " + surname: "Yetkili Kullanıcı değilsiniz!."
}
func userCheck(user: String) -> Bool {
    return (user == "Berk" ? true : false)
}
var name = hello(name: "Berk Batuhan", surname: "Şakar", userName: "Berk")
print(name)


//Work
// İki değer alan fonksiyon
// Evin Metrekaresi
// Boyacıyım ve metrekare + boya rengine göre hizmet bedeli veriyorum
// blue = "1.23", yellow = 1.44, red= 3.22, others = 1.21
// Bu eve ne kadara hizmet vermem lazım?
// 10m2 50 m2
// red ?
// En, Boy, Renk


var boyaFiyat = [
    "blue": 1.23, "yellow": 1.44, "red": 3.22, "others": 1.21]

// Example: metrekareHesapla(en: 10, boy: 50)
func metrekareHesapla(en: UInt, boy: UInt) -> UInt {
    return (en * boy)
}

//Example  : hizmetBedeli(_en: 52, _boy: 100)
//Example 2: hizmetBedeli(_renk: "blue",_en: 10, _boy: 50)
func hizmetBedeli(_renk: String = "others", _en: UInt, _boy: UInt) -> UInt{
    if (boyaFiyat[_renk] != nil){
        let deger = Double(metrekareHesapla(en: _en, boy: _boy)) * boyaFiyat[_renk]!
        return UInt(deger)
    }
    return 0
}

hizmetBedeli(_en: 52, _boy: 100)
hizmetBedeli(_renk: "bxlue",_en: 10, _boy: 50)

