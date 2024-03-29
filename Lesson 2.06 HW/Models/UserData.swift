//
//  UserData.swift
//  Lesson 2.06 HW
//
//  Created by Valentin on 14.02.2024.
//


struct Account {
    let login: String
    let password: String
    let person: Person
        
    static func getAccount() -> Account {
        Account(
            login: "u",
            password: "ui",
            
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let company: String
    let department: String
    let position: String
    let bio: String

    static func getPerson() -> Person {
        Person(
            name: "Elon",
            surname: "Musk",
            photo: "",
            company: "SpaceX",
            department: "Top management",
            position: "CEO",
            bio: "Businessman and investor. He is the founder, chairman, CEO, and CTO of SpaceX; angel investor, CEO, product architect, and former chairman of Tesla, Inc.; owner, chairman, and CTO of X Corp.; founder of the Boring Company and xAI; co-founder of Neuralink and OpenAI; and president of the Musk Foundation. He is the second wealthiest person in the world, with an estimated net worth of US$232 billion as of December 2023, according to the Bloomberg Billionaires Index, and $182.6  billion according to Forbes, primarily from his ownership stakes in Tesla and SpaceX."
        )
    }

}

struct Bio {
    let name: String
    let surname: String
    let bio: String
}
