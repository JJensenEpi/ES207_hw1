#Pulls data from football-data.org
##Created dashee87 as part of the footballR package 
fdo_call_API <- function(request, token="", response = "full"){
  url <- paste0("http://api.football-data.org/",request)
  output <- httr::GET(url,httr::add_headers(`X-Auth-Token` = token, `X-Response-Control` = response))
  return(jsonlite::fromJSON(httr::content(output, as = "text", encoding = "UTF-8")))
}