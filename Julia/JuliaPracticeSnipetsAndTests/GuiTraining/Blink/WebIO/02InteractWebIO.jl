using WebIO
using Interact
using Blink
w = Window()

loadfile = filepicker();
function loadfilepage(req)
    page = node(
                :div,
                node(:h2, "Upload Data"),
                node(:br),
                node(:p, loadfile)
    )
    return page
end
body!(w,loadfilepage(10))

function mypage()
    page = node(
        :div,
        node(:h1,"This is my title",attributes = Dict(:style => "color: green; background: gray;")),
        node(:br),
        node(:hr),
        node(:g2,"This is h2"),
        node(:hr),
        node(
            :ul,
            node(:li,"number 1 "),
            node(:li,"number 2 "),
            node(:li,"number 3 "),
            node(:li,"number 4 ")
        )
    )
    return page
end

function p2()
    dom"div.warning.big-text#my-modal[aria-modal=true]"(
    dom"p"("Uh oh! A bad thing happened."),
    # is equal to 
    # <div id="my-modal" class="warning big-text" aria-modal="true">
    # <p>Uh oh! A bad thing happened.</p>
    # </div>
    )
end
body!(w,p2())