using ABCDOptics
using Documenter

DocMeta.setdocmeta!(ABCDOptics, :DocTestSetup, :(using ABCDOptics); recursive=true)

makedocs(;
    modules=[ABCDOptics],
    authors="Brian Sinquin <paradisepx@gmail.com> and contributors",
    repo="https://github.com/curio-sitas/ABCDOptics.jl/blob/{commit}{path}#{line}",
    sitename="ABCDOptics.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://curio-sitas.github.io/ABCDOptics.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/curio-sitas/ABCDOptics.jl",
    devbranch="master",
)
