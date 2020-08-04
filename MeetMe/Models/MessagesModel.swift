
import SwiftUI

struct messageModel: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
    var messages: [messages]
}

struct messages: Identifiable {
    var id = UUID()
    var time: String
    var message: String
    var sender: String
}


var messageM = [
    messageModel(name: "Rafaela", icon: "user1", messages:
                    [messages(time: "13:50", message: "Hello There", sender: "Tony" )]),
    messageModel(name: "Dolores", icon: "user2", messages:
                    [messages(time: "17:50", message: "Hello", sender: "Tony" )]),
    messageModel(name: "Leonara", icon: "user3", messages:
                    [messages(time: "11:50", message: "Hey, you alright.", sender: "Tony" )]),
    messageModel(name: "Lericia", icon: "user4", messages:
                    [messages(time: "19:10", message: "what's up bra", sender: "Tony" )]),
    messageModel(name: "Eliana", icon: "user5", messages:
                    [messages(time: "10:10", message: "Hey cutie", sender: "Tony" )]),
    messageModel(name: "Tata", icon: "user6", messages:
                    [messages(time: "12:10", message: "Hi!", sender: "Tony" )]),
    messageModel(name: "Ryna", icon: "user7", messages:
                    [messages(time: "12:50", message: "sup girl", sender: "Tony" )]),
    messageModel(name: "Thula", icon: "user8", messages:
                    [messages(time: "13:50", message: "I am impressed", sender: "Tony" )]),
    messageModel(name: "Gisele", icon: "user9", messages:
                    [messages(time: "15:50", message: "you alright?", sender: "Tony" )]),
    messageModel(name: "Patty", icon: "user10", messages:
                    [messages(time: "16:50", message: "how is it going?", sender: "Tony" )]),
    messageModel(name: "Jenniffer", icon: "user11", messages:
                    [messages(time: "11:50", message: "you there?", sender: "Tony" )]),
    messageModel(name: "Bruna", icon: "user12", messages:
                    [messages(time: "2:50", message: "Hello", sender: "Tony" )]),
    messageModel(name: "Bruna", icon: "user13", messages:
                    [messages(time: "2:50", message: "Hello", sender: "Tony" )]),
    messageModel(name: "Bruna", icon: "user14", messages:
                    [messages(time: "2:50", message: "Hello", sender: "Tony" )]),
]
