using Blink
using WebIO
# w = Window()

function dis()
    mycss = WebIO.Asset("./css.css")
    page = Scope(
                dom=node(:div,
                node(:h1,"title",class="class1"),
                node(:p, "this is some text",class="class2"),
                node(:hr),
                node(:p, "some random text. some random text. some random text. some random text. ",class = "class3")
        ),
        imports=[mycss]
    )
    # w = Window()
    # WebIO.Asset("./css.css")
    # Scope(imports=["./css.css"])
    # page = node(:div,
    #             node(:h1,"title",class="class1"),
    #             node(:p, "this is some text",class="class2"),
    #             node(:hr),
    #             node(:p, "some random text. some random text. some random text. some random text. ",class = "class3")
    # )

    println("new")
    body!(w,page)
    sleep(10)
    body!(w,"Empty!")
end 
dis()