using TourOfJuliaExamTemplate
using Documenter

DocMeta.setdocmeta!(TourOfJuliaExamTemplate, :DocTestSetup, :(using TourOfJuliaExamTemplate); recursive=true)

makedocs(;
    modules=[TourOfJuliaExamTemplate],
    authors="Stefano Campanella <15182642+stefanocampanella@users.noreply.github.com> and contributors",
    repo="https://github.com/stefanocampanella/TourOfJuliaExamTemplate.jl/blob/{commit}{path}#{line}",
    sitename="TourOfJuliaExamTemplate.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://stefanocampanella.github.io/TourOfJuliaExamTemplate.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/stefanocampanella/TourOfJuliaExamTemplate.jl",
    devbranch="master",
)
