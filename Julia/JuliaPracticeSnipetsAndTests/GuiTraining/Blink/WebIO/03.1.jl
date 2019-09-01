using Blink
using WebIO

w = Window()
mycss = WebIO.Asset("./css.css")
page = Scope(
    imports=[mycss],
    dom=node(:div,
            node(:h1,"title",class="class1"),
            node(:p, "this is some text",class="class2"),
            node(:hr),
            node(:p, "some random text. some random text. some random text. some random text. ",class = "class3")
    ),
)
body!(w,page)
