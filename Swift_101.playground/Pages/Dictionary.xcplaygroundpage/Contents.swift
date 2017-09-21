//: Playground - noun: a place where people can play

import UIKit

var student = 100




//1.Yol
if student >= 85 && student <= 100{
    print("PEKİYİ")
}else if student >= 70 && student <= 84{
    print("İYİ")
}else if student >= 55 && student <= 69{
    print("ORTA")
}else if student >= 45 && student <= 54{
    print("GECER")
}else{
    print("KALDI")
}
print("----------------------------------------------")
//2.Yol
if (85 ... 100).contains(student) {
    print("PEKİYİ")
}else if (70 ... 84).contains(student){
    print("İYİ")
}else if (55 ... 69).contains(student){
    print("ORTA")
}else if (45 ... 54).contains(student){
    print("GECER")
}else{
    print("KALDI")
}
print("----------------------------------------------")

var students = [67,10,75,89,78]
var iosUsers = ["Hakan","Vefa","Omer","Berk","Alper"]


// forIosUserToAdd Yok ise iosUser
var forIosUserToAdd = "Alper"

if !iosUsers.contains(forIosUserToAdd) {
    print(forIosUserToAdd + " Yok!" )
    iosUsers.append(forIosUserToAdd)
}

var x = 0
for (number,studentIndex) in students.enumerated() {
    let number = "\(number)'ıncı kişinin başarı Durumu:"
    if (85 ... 100).contains(studentIndex) {
        print("\(number) PEKİYİ")
    }else if (70 ... 84).contains(studentIndex){
        print("\(number) İYİ")
    }else if (55 ... 69).contains(studentIndex){
        print("\(number) ORTA")
    }else if (45 ... 54).contains(studentIndex){
        print("\(number) GECER")
    }else{
        print("\(number) KALDI")
    }
    x + 1
}


print("----------------------------------------------")
for (number,studentIndex) in zip(iosUsers,students) {
    let number = "\(number)'ın başarı Durumu:"
    if (85 ... 100).contains(studentIndex) {
        print("\(number) PEKİYİ")
    }else if (70 ... 84).contains(studentIndex){
        print("\(number) İYİ")
    }else if (55 ... 69).contains(studentIndex){
        print("\(number) ORTA")
    }else if (45 ... 54).contains(studentIndex){
        print("\(number) GECER")
    }else{
        print("\(number) KALDI")
    }
}

// Dictiony

var airports : [String : String] = ["IST":"Istanbul Atatürk Hava Limanı",
                                    "SAW":"Istanbul Sabiha Gökçen Havalimanı",
                                    "ADB": "Izmir Adnan Menderes Airport"]
//Dictionary Ekleme
airports["ADA"] = "Adana Airport"

// UpdateValue ile varsa Güncelle yoksa Ekleme

airports.updateValue("AYT", forKey: "Antalya Airport")
for (code,name) in airports{
    print("\(code) --> \(name)")
}


// Öğrenci Dictionary<Int, Dictionary<String, Any>>
var studentsForIos = [
    101:
        ["FirstName": "Berk Batuhan",
         "LastName": "ŞAKAR",
         "FirstNote": 47,
         "SecondNote": 82,
         "Option": 64,
         "PassScore": 0.0,
         "PassScoreRate": ""],
    102:
        ["FirstName": "Hakan",
         "LastName": "Yalçınkaya",
         "FirstNote": 70,
         "SecondNote": 32,
         "Option": 61,
         "PassScore": 0.0,
         "PassScoreRate": ""],
    103:
        ["FirstName": "Atahan",
         "LastName": "Demir",
         "FirstNote": 27,
         "SecondNote": 55,
         "Option": 10,
         "PassScore": 0.0,
         "PassScoreRate": ""]
]
type(of: studentsForIos)

var FirstNote: Int

for (studentId,studentDetail) in studentsForIos{
    
    let FirstNote = studentDetail["FirstNote"] as! Int
    //print(type(of: studentDetail["FirstNote"]))
    let SecondNote = studentDetail["SecondNote"] as! Int
    let Option = studentDetail["Option"] as! Int
    let totalScore = Float((FirstNote + SecondNote + Option)) / 3
    let twoDigits = String(format: "%.2f",totalScore)
    studentsForIos[studentId]!["PassScore"]! = twoDigits
    
    if (85 ... 100).contains(totalScore) {
        studentsForIos[studentId]!["PassScoreRate"]! = "PEKİYİ"
    }else if (70 ... 84).contains(totalScore){
        studentsForIos[studentId]!["PassScoreRate"]! = "İYİ"
    }else if (55 ... 69).contains(totalScore){
        studentsForIos[studentId]!["PassScoreRate"]! = "ORTA"
    }else if (45 ... 54).contains(totalScore){
        studentsForIos[studentId]!["PassScoreRate"]! = "GECER"
    }else{
        studentsForIos[studentId]!["PassScoreRate"]! = "KALDI"
    }
}


print("----------------")
for (studentId,studentDetail) in studentsForIos{
    print("\(studentDetail["FirstName"]!) --> \(studentDetail["PassScore"]!)")
}
