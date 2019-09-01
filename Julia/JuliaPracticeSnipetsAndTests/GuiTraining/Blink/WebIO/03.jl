using Blink
using WebIO

w = Window()
WebIO.Asset("./css.css")
page = node(:div,
            node(:h1,"title",class="class1"),
            node(:p, "this is some text",class="class2"),
            node(:hr),
            node(:p, "some random text. some random text. some random text. some random text. ",class = "class3")
)
body!(w,page)