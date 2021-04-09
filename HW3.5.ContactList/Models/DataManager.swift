//
//  DataManager.swift
//  HW3.5.ContactList
//
//  Created by Alexander Konovalov on 08.04.2021.
//

class DataManager {
    static let share = DataManager()
    
    static var randomArray = getPersons()
    
    static var names = ["Nicholas", "Deborah", "Clarence", "Juanita", "William",
                        "Laurie", "Nicole", "Barbara", "Stephen", "Sheila",
                        "Angela", "Charlie", "James", "Harry", "Jacqueline",
                        "Lisa", "Jimmie", "Charles", "Florence", "Robert"]

    static var surnames = ["Wilson", "Rios", "Martinez", "Lopez", "Kelly",
                           "Chavez", "Higgins", "Brown", "Hodges", "Townsend",
                           "Wright", "Potter", "Murphy", "Ramirez", "Willis",
                           "Gross", "Lee", "Davis", "Scott", "Erickson"]
    
    static var emails = ["ciberinawy-0602@yopmail.com","morrasevitto-4737@yopmail.com",
                         "apporussopp-7474@yopmail.com","vellissazy-6577@yopmail.com",
                         "ittawullufy-8372@yopmail.com","erittedatt-0502@yopmail.com",
                         "fybellene-1449@yopmail.com","warrakacux-3665@yopmail.com",
                         "laqybedir-9262@yopmail.com","ivylusovu-5651@yopmail.com",
                         "cibeawy-0602@yopmail.com","morratto-4737@yopmail.com",
                         "apporussopp-7474@yopmail.com","vellazy-6577@yopmail.com",
                         "ittawufy-8372@yopmail.com","erttatt-0502@yopmail.com",
                         "fybne-1449@yopmail.com","warcux-3665@yopmail.com",
                         "aqybedi22@yopmail.com","ivyu51@yopmail.com"]
    static var phones = ["760(8274)878-22-50", "242(7001)148-94-56",
                         "44(1800)838-44-56", "846(4856)457-92-14",
                         "96(961)091-45-83", "20(79)322-99-21",
                         "6(0220)479-39-49", "820(5793)150-17-23",
                         "04(345)251-10-09", "398(7728)790-51-49",
                         "70(874)818-23-50", "242(701)145-94-56",
                         "43(1800)858-44-56", "86(486)497-23-14",
                         "9(91)091-45-83", "20(79)352-33-21",
                         "6(020)492-39-49", "8(573)454-17-23",
                         "4(35)251-10-25", "398(7728)790-75-49"]
    
    private init() {}
    
    static func getUnikData() -> (name: String, surname: String, email: String, phone: String) {
        
        let indxName = Int.random(in: 0..<names.count)
        let name = names.count > 0 ? names.remove(at: indxName) : ""
        
        let indxSurname = Int.random(in: 0..<surnames.count)
        let surName = surnames.count > 0 ? surnames.remove(at: indxSurname) : ""
        
        let indxEmail = Int.random(in: 0..<emails.count)
        let email = emails.count > 0 ? emails.remove(at: indxEmail) : ""
        
        let indxPhone = Int.random(in: 0..<phones.count)
        let phone = phones.count > 0 ? phones.remove(at: indxPhone) : ""
        
        return (name, surName, email, phone)
    }
    
    private static func getPersons() -> [Person] {
        (1...names.count).map { getPerson($0) }
    }
    
    static func getPerson(_:Int) -> Person {
        let unikData = DataManager.getUnikData()
        return Person(name: unikData.name, surname: unikData.surname,
                    email: unikData.email, phone: unikData.phone)
    }
}
