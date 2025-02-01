# gscholar_test.R

library(RSelenium)

# server rselenium ----
remDr <- RSelenium::remoteDriver(remoteServerAddr = "192.168.1.116",
                                 port = 4444L,
                                 browserName = "firefox")
remDr$open()

# url <- "https://scholar.google.com/scholar?as_ylo=2024&q=fine+tuning+language+models&hl=en&as_sdt=0,5"
# # Navigate to Google Scholar
# remDr$navigate(url)
# 
# title <- remDr$findElements(using = "css selector", value = 'h3.gs_rt')
# titles <- unlist(lapply(title, function(x) {
#     x$getElementText()
# }))

get_titles <- function(url) {
    # Navigate to Google Scholar
    Sys.sleep(5)
    remDr$navigate(url)
    
    # Extract titles
    title <- remDr$findElements(using = "css selector", value = 'h3.gs_rt')
    titles <- unlist(lapply(title, function(x) {
        x$getElementText()
    }))

    return(titles)
}

get_pdf <- function(url) {
    # Navigate to Google Scholar
    Sys.sleep(5)
    remDr$navigate(url)
    
    # Extract titles
    doc <- remDr$findElements(using = "css selector", value = 'div.gs_ggsd a')
    pdf <- unlist(lapply(doc, function(x) {
        x$getElementAttribute("href")
    }))
    
    return(pdf)
}

get_bib <- function(url) {
    # Navigate to Google Scholar
    Sys.sleep(5)
    remDr$navigate(url)
    
    # Extract bib
    aut <- remDr$findElements(using = "css selector", value = 'div.gs_a a')
    bib_aut <- lapply(aut, function(x) {
        x$getElementText()
    })
    
    # Extract jrl
    jrl <- remDr$findElements(using = "css selector", value = '#text')
    bib_jrl <- unlist(lapply(jrl, function(x) {
        x$getElementText()
    }))
    
    bib <- bib_jrl
    
    return(bib)
}

# loop to get more titles ----
i <- 0
url_next <- paste0("https://scholar.google.com/scholar?start=",i*10,"&q=fine+tuning+language+models&hl=en&as_sdt=0,5&as_ylo=2024")
title_lst <- unlist(lapply(i[0:3], function(x) get_titles(url_next)))
pdf_lst <- unlist(lapply(i[0:3], function(x) get_pdf(url_next)))
bib_lst <- unlist(lapply(i[0:3], function(x) get_bib(url_next)))

# save data ----
save.image("harvest")
