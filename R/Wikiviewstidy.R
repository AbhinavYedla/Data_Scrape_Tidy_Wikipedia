#############################################################################
#               Tidy Wikipedia Views Data and dump it to database           #
#############################################################################
#'
#' @description
#' Tidy the data retrieved from WikiViews function and store it in a
#' relational database and text files.
#'
#' @param continent
#' Which continent data to be stored
#'
#' @return
#' Set of files are created
#'
#' @details
#' One file for each country is created.
#' Changed Burma_(Myanmar) to Myanmar
#  Korea,_North to North_Korea
#  Korea,_South to South_Korea
#'
#' \code{}
#'
#' @examples
#' WikiEditsTidy("North_America")
#'
#' @author
#' Abhinav Yedla \email{abhinavyedla@gmail.com}
#'
#' @references
#'
#' @keywords
#' Wikipedia Page Edits
#'
#' @seealso
#' \code{\link{}}
#'
#' @export
library(RMySQL)
library(readxl)
library(stringi)



mydb = dbConnect(MySQL(), user='root', password='root', dbname='wikipedia', host='127.0.0.1')

countryListDf <- read.delim("~/wikipagestats/Africa.txt", header = FALSE)
countCountries <- nrow(countryListDf)


for (i in countCountries) {
  data <-
    read.table(file = paste0(countryListDf[i, 1], ".txt"), header = TRUE, encoding="UTF-8",
               stringsAsFactors=FALSE )

  data$Project <- gsub(".wikipedia", "", data$Project, fixed = TRUE)

  data$TimeStamp <-
    paste0(
      substr(data$TimeStamp, 1, 4),
      "-",
      substr(data$TimeStamp, 5, 6),
      "-",
      substr(data$TimeStamp, 7, 8)
    )


  data$Country <- countryListDf[i, 1]

  data <- data[, c(4,1, 2, 3)]

  colnames(data) <- c("country", "language_short_code", "date", "views")




  dbWriteTable(
    mydb,
    name = 'wikiviews_africa',
    value = data,
    append = TRUE,
    row.names = FALSE
  )
}

countryListDf <- read.delim("Asia.txt", header = FALSE)
countCountries <- nrow(asia)
for (i in countCountries) {
  data <-
    read.table(file = paste0(countryListDf[i, 1], ".txt"), header = TRUE)

  data$Project <- gsub(".wikipedia", "", data$Project, fixed = TRUE)

  colnames(langCode) <- c("Language", "Language_Local", "Project")

  data <- merge(x = data,
                y = langCode,
                by = "Project",
                all.x = TRUE)

  data$TimeStamp <-
    paste0(
      substr(data$TimeStamp, 1, 4),
      "-",
      substr(data$TimeStamp, 5, 6),
      "-",
      substr(data$TimeStamp, 7, 8)
    )


  data$Country <- countryListDf[i, 1]

  data <- data[, c(6,4,5, 1, 2, 3)]

  colnames(data) <- c("country", "language", "language_local","language_short_code", "date", "views")



  dbWriteTable(
    mydb,
    name = 'wikiviews_asia',
    value = data,
    append = TRUE,
    row.names = FALSE
  )
}


countryListDf <- read.delim("Europe.txt", header = FALSE)
countCountries <- nrow(europe)
for (i in countCountries) {
  data <-
    read.table(file = paste0(countryListDf[i, 1], ".txt"), header = TRUE)

  data$Project <- gsub(".wikipedia", "", data$Project, fixed = TRUE)

  colnames(langCode) <- c("Language", "Language_Local", "Project")

  data <- merge(x = data,
                y = langCode,
                by = "Project",
                all.x = TRUE)

  data$TimeStamp <-
    paste0(
      substr(data$TimeStamp, 1, 4),
      "-",
      substr(data$TimeStamp, 5, 6),
      "-",
      substr(data$TimeStamp, 7, 8)
    )



  data$Country <- countryListDf[i, 1]

  data <- data[, c(6,4,5, 1, 2, 3)]

  colnames(data) <- c("country", "language", "language_local","language_short_code", "date", "views")



  dbWriteTable(
    mydb,
    name = 'wikiviews_europe',
    value = data,
    append = TRUE,
    row.names = FALSE
  )
}


countryListDf <- read.delim("NorthAmerica.txt", header = FALSE)
countCountries <- nrow(northAmerica)
for (i in countCountries) {
  data <-
    read.table(file = paste0(countryListDf[i, 1], ".txt"), header = TRUE)

  data$Project <- gsub(".wikipedia", "", data$Project, fixed = TRUE)

  colnames(langCode) <- c("Language", "Language_Local", "Project")

  data <- merge(x = data,
                y = langCode,
                by = "Project",
                all.x = TRUE)

  data$TimeStamp <-
    paste0(
      substr(data$TimeStamp, 1, 4),
      "-",
      substr(data$TimeStamp, 5, 6),
      "-",
      substr(data$TimeStamp, 7, 8)
    )



  data$Country <- countryListDf[i, 1]

  data <- data[, c(6,4,5, 1, 2, 3)]

  colnames(data) <- c("country", "language", "language_local","language_short_code", "date", "views")



  dbWriteTable(
    mydb,
    name = 'wikiviews_north_america',
    value = data,
    append = TRUE,
    row.names = FALSE
  )
}


countryListDf <- read.delim("SouthAmerica.txt", header = FALSE)
countCountries <- nrow(southAmerica)
for (i in countCountries) {
  data <-
    read.table(file = paste0(countryListDf[i, 1], ".txt"), header = TRUE)

  data$Project <- gsub(".wikipedia", "", data$Project, fixed = TRUE)

  colnames(langCode) <- c("Language", "Language_Local", "Project")

  data <- merge(x = data,
                y = langCode,
                by = "Project",
                all.x = TRUE)

  data$TimeStamp <-
    paste0(
      substr(data$TimeStamp, 1, 4),
      "-",
      substr(data$TimeStamp, 5, 6),
      "-",
      substr(data$TimeStamp, 7, 8)
    )



  data$Country <- countryListDf[i, 1]

  data <- data[, c(6,4,5, 1, 2, 3)]

  colnames(data) <- c("country", "language", "language_local","language_short_code", "date", "views")



  dbWriteTable(
    mydb,
    name = 'wikiviews_south_america',
    value = data,
    append = TRUE,
    row.names = FALSE
  )
}


countryListDf <- read.delim("Oceania.txt", header = FALSE)
countCountries <- nrow(oceania)
for (i in countCountries) {
  data <-
    read.table(file = paste0(countryListDf[i, 1], ".txt"), header = TRUE)

  data$Project <- gsub(".wikipedia", "", data$Project, fixed = TRUE)

  colnames(langCode) <- c("Language", "Language_Local", "Project")

  data <- merge(x = data,
                y = langCode,
                by = "Project",
                all.x = TRUE)

  data$TimeStamp <-
    paste0(
      substr(data$TimeStamp, 1, 4),
      "-",
      substr(data$TimeStamp, 5, 6),
      "-",
      substr(data$TimeStamp, 7, 8)
    )



  data$Country <- countryListDf[i, 1]

  data <- data[, c(6,4,5, 1, 2, 3)]

  colnames(data) <- c("country", "language", "language_local","language_short_code", "date", "views")



  dbWriteTable(
    mydb,
    name = 'wikiviews_oceania',
    value = data,
    append = TRUE,
    row.names = FALSE
  )
}







