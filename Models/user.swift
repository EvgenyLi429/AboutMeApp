struct User {
    let user: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            user: "user",
            password: "password",
            person: Person.getPersonInfo()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let secction: String
    let occupation: String
    let more: String
    let about: String
    
    
    static func getPersonInfo() -> Person {
        Person(
            name: "Evgeny",
            surname: "Likhachev",
            company: "Some Company",
            secction: "Any section",
            occupation: "Occupation",
            more: "Кто-то скажет: невозможно вкатится в айти после 20 лет работы на стройке, с двумя детьми и без свободного времени... но я и не собираюсь вас переубеждать, я стану девелопером, во что бы то ни стало. Я познал всю прелесть бытия обычного работяги, без денег, без помощи, без друзей и родителей в чужой стране. То что меня ждет, если я зафакаплю я уже знаю, поэтому я готов на всё, чтоб изменить эту жизнь",
            about: "here will be about me text"
        )
    }
}
