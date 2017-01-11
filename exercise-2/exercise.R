# Exercise 2: writing and executing functions (II)

# Define a function `CompareLength` that takes in 2 character strings, and returns
# the sentence of the form
#   "The difference in length is N"

  CompareLength <- function(string1, string2) {
    diff.in.length <- abs(nchar(string1) - nchar(string2))
    result <- paste("The difference in length is", diff.in.length)
    return(result)
  }


# Pass two strings of different lengths to your `CompareLength` function
  
  difference <- CompareLength("Dustin", "Langner")


# Define a function `DescribeDifference` that will return one of the following statements:
# "Your first string is longer by N characters"
# "Your second string is longer by N characters"
  
  DescribeDifference <- function(string1, string2) {
    diff <- nchar(string1) - nchar(string2)
    longer.string <- ""
    if (diff > 0) {
      longer.string <- "first"
    } else {
      longer.string <- "second"
    }
    return(paste("Your ", longer.string, " is longer by ", abs(diff), " characters" ))
  }


# Pass two strings of different lengths to your `DescribeDifference` function
  
  longest.string <- DescribeDifference("Dustin", "Langner")
