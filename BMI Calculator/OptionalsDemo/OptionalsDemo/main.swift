let myOptional: String?

myOptional = "Serhat"

let text: String = myOptional! // force unwrapping (!) değişkenin nil olmadığına emin olduğumuz durumlarda uygulanır. myOptional değişkenim nil olsaydı uygulamam crushlerdi.




let myOptional2: String?

myOptional2 = nil

if myOptional2 != nil {
    let text2: String = myOptional!
} else {
    print("myOptional was found to be nil ")
} // checking for nil value yönetmi optional öğenin nil değeri içerip içermediğini kontrol ettiğimiz ve nil değilse onunla çalıştığımız bir davranıştır. Opsyionellerde bunu işlemek için yerleşik bir işlevsellik vardır.



// Optional Binding(Opsiyonel bağlama)
// bu durumda yapacağımız şey, nil değilse optional öğenin değerini yeni bit sabitle bağlamak için if let yapısı kullanılır

let myOptional3: String?

myOptional3 = "Sero"

if let safeOptional = myOptional3 {
    let text3: String = safeOptional
    let text4: String = safeOptional
    print(safeOptional)
} else {
    print("myOptional was found to be nil ")
}




// Nil Coalescing Operator(Nil Birleştirme Operatörü)
// Yaptığı şey optional ifadenin sıfır olup olmadığını kontrol etmektir. Eğer nil değilse, o zaman optional değerini kullanacağız. Ancak nil ise defaultValue yi kullanacağız.

let myOptional4: String?

myOptional4 = nil

let text5: String = myOptional4 ?? "I am the default value"
                    //optional      //defaultValue
print(text5)




// Optional Chaining(Optional Zincirleme)
// Optional class veya structlarda kullanılır

struct MyOptional {
    var property = 12
    func method() {
        print(" I am the struct's method")
    }
}

let myOptional5: MyOptional?

myOptional5 = nil

print(myOptional5?.property)
myOptional5?.method()
