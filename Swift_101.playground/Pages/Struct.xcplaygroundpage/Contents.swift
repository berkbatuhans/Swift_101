//: [Previous](@previous)

struct Student {
    var studentId: UInt
    var firstName: String
    var lastName: String
    
    init(studentId: UInt, firstName:String,lastName:String) {
        self.studentId = studentId
        self.firstName = firstName
        self.lastName = lastName
    }
    
}
struct Lesson {
    var lessonId: UInt
    var lessonName: String
}
struct Notlar {
    
    var studentId : UInt
    var lesson: UInt
    var firstNote: Int
    var secondNote: Int
    var opinion: Int
    var passScore: Float
    var passScoreRate: String!
    init(_ firstNote: Int,_ student:UInt,_ lesson: UInt) {
        self.studentId = student
        self.lesson = lesson
        self.firstNote = firstNote
        self.secondNote = 0
        self.opinion = 0
        self.passScore = Float(firstNote)
        self.passScoreRate = "2.Notunuz ve Sözlü Notunuz Bekleniyor..."
    }
    init(_ firstNote: Int, _ secondNote: Int, _ student: UInt,_ lesson: UInt) {
        
        self.init(firstNote, student, lesson )
        //self.firstNote = firstNote
        self.secondNote = secondNote
        self.opinion = 0
        self.passScore = Float(firstNote + secondNote) / 2
        self.passScoreRate = "Sözlü Notunuz Bekleniyor..."
    }
    
    init(_ firstNote: Int, _ secondNote: Int, _ opinion: Int, _ student: UInt, _ lesson: UInt) {
        
        let passScoreValue = Float((firstNote + secondNote + opinion) / 3)
        
        func isPass(totalScore: Float) -> String {
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
        
        self.init(firstNote, secondNote, student, lesson)
        //self.init(firstNote)
        //self.firstNote = firstNote
        //self.secondNote = secondNote
        self.opinion = opinion
        self.passScore = passScoreValue
        self.passScoreRate = isPass(totalScore: passScoreValue)
        
    }
    
    
    
    /*
     // 3 Not bölümünü hesaplar.
     func passScoreFunc() -> Float{
     let deger = Float((self.firstNote + self.secondNote + self.opinion) / 3)
     return deger
     }
     
     mutating func updatePasscore(){
     self.passScore = passScoreFunc()
     }
     */
    
    
}





var lesson : [Lesson] = []
var studentsForIos : [Student] = []
var passscoreList : [Notlar] = []

lesson.append(Lesson(lessonId: 1001, lessonName: "Fizik"))
lesson.append(Lesson(lessonId: 1002, lessonName: "Kimya"))
lesson.append(Lesson(lessonId: 1003, lessonName: "Biyoloji"))
lesson.append(Lesson(lessonId: 1004, lessonName: "Matematik"))
//for i in lesson{
//   print (i.lessonName)
//}

studentsForIos.append(Student(studentId: 101, firstName: "Berk Batuhan", lastName: "ŞAKAR"))
studentsForIos.append(Student(studentId: 102, firstName: "Hakan", lastName: "Yalçınkaya"))
studentsForIos.append(Student(studentId: 103, firstName: "Atahan", lastName: "Demir"))




//print(Notlar(10,101))
//print(Notlar(10, 15))
//print(Notlar(10, 50, 100))







//passscoreList.append(Notlar(47))
//passscoreList.append(Notlar(70,32))
//passscoreList.append(Notlar(27,55,10))

//for i in passscoreList{
//    print(i.firstNote)
//}

passscoreList.append(Notlar(27, 55, 10, 101, 1001))














