## TODO: make the reposInfo list into an S4 class to represent
## repository data

setClass("Htmlized", representation("VIRTUAL"))


setClass("PackageDetail", contains="Htmlized",
         representation("Package"="character",
                        "Version"="character",
                        "Title"="character",
                        "Description"="character",
                        "Author"="character",
                        "Maintainer"="character",
                        "Depends"="character",
                        "Suggests"="character",
                        "Imports"="character",
                        "SystemRequirements"="character",
                        "License"="character",
                        "URL"="character",
                        "biocViews"="character",
                        "downloadLinks"="character",
                        "vignetteLinks"="character",
                        "manualLinks"="character",
                        "dependsOnMe"="character",
                        "suggestsMe"="character",
                        "functionIndex"="character",
                        "reposRoot"="character"))

## Define a subclass of PackageDetail for each "chunk" of the object
## that we want to be able to render to HTML separately.
setClass("pdAuthorMaintainerInfo", contains="PackageDetail")
setClass("pdVignetteInfo", contains="PackageDetail")
setClass("pdDownloadInfo", contains="PackageDetail")
setClass("pdDetailsInfo", contains="PackageDetail")
setClass("pdDescriptionInfo", contains="PackageDetail")


setClass("RepositoryDetail", contains="Htmlized",
         representation(Title="character",
                        reposRoot="character",
                        homeUrl="character",
                        htmlDir="character",
                        packageList="list"))
setClass("rdPackageTable", contains="RepositoryDetail")


setClass("BiocView", contains=c("RepositoryDetail", "Htmlized"),
         representation(name="character",
                        subViews="character",
                        parentViews="character"))


setClass("bvTitle", contains="BiocView")
setClass("bvPackageTable", contains="BiocView")
setClass("bvSubViews", contains="BiocView")
setClass("bvParentViews", contains="BiocView")


    ## Outline

    ## 1. given a repos with VIEWS file, run extractVignettes.
    ## 2. Now get a pkgList using loadPackageDetails()
    ## 3. write HTML