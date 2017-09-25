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

func isPass(totalScore: Float) -> String{
    switch totalScore {
    case 85 ... 100:
        return "PEKİYİ"
    case 70 ... 84:
        return "İYİ"
    case 55 ... 69:
        return "GECER"
    case 45 ... 54:
        return "ORTA"
    default:
        return "KALDI"
    }
}

func average(firstNote: UInt, secondNote: UInt, opinion: UInt) -> UInt{
    return (firstNote + secondNote + opinion) / 3
}

print(average(firstNote: 55, secondNote: 21, opinion: 59))
