# R Basics Assessment
# GradPathways Microcredential
#
# Instructions:
# 
# Write your solution to each exercise directly beneath the text for THAT
# exercise. Put text in comments, but leave code uncommented. Save plots as PNG
# files and refer to the plot by name in this file.
#
# Submit this file and all associated plot PNG files.
#
# If you need help, come to DataLab's office hours.


# Exercise 1
#
# The `seq` function generates a regular sequence of numbers. Skim the help
# file for the `seq` function.
#
# 1. Does the `seq` function have any required arguments? Explain how you can
#    tell.
#
# 2. Use the `seq` function to create a sequence that starts from 10, counts by
#    2, and ends at 100.
#
# 3. What does the related `seq_len` function do? Explain and provide an
#    example.




# Exercise 2
#
# Download the Australian Shark Incident Database (ASID) from:
#
#   https://zenodo.org/record/6672829
#
# The database is distributed as a Microsoft Excel (xlsx) file.
#
# Then install the 'readxl' package, which provides a function `read_excel` for
# reading Excel files into R. You can learn more about the package here:
#
#     https://readxl.tidyverse.org/
#
# Skim the documentation for `read_excel`, then use it to load the ASID into R.
# Print the first 6 rows and 5 columns of the data set.
#
# Note 1: R will display some warnings when you load the data set. These will be
# addressed in Exercises 4 and 5. You can ignore them until then.
#
# Note 2: The `read_excel` function is part of the Tidyverse, and returns a
# "tibble", a special kind of data frame used throughout the Tidyverse. Tibbles
# print differently than ordinary data frames (for example, quotes around
# strings are sometimes omitted). They also set `drop = FALSE` as the default
# for the indexing operator. You can still extract columns as vectors with `$`
# or by explicitly setting `drop = TRUE`.




# Exercise 3
#
# 1. How many rows and columns are in the ASID?
#
# 2. Compute a structural summary of the ASID. What are 5 columns that seem
#    like categorical data and should therefore be factors? Explain your
#    reasoning.
#
# 3. Convert the 5 columns you listed in part 2 to factors. Note: for some
#    columns, it may be a good idea to use one of R's `tolower` or `toupper`
#    functions to eliminate differences in capitalization from the categories
#    first.
#
#    Optionally, also convert any other columns you think are categorical.




# Exercise 4
#
# When you loaded the data in Exercise 2, R displayed several warnings. These
# usually say something like:
#
#     Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet,  :
#       Coercing text to numeric in G1145 / R1145C7: '-33.5427'
#
# Notice the warning refers to specific cells in the Excel file.
#
# 1. What do these warnings mean? Explain.
# 2. How many missing values are there in the `Latitude` column? Get the UINs
#    (unique identification numbers) from the `UIN` column for these rows.
#
# Hint: It may be helpful to inspect the Excel file in a spreadsheet program
# (MS Excel, Google Sheets, LibreOffice), in addition to inspecting the loaded
# data frame. In spreadsheets, letters refer to columns and numbers refer to
# rows, so for example, `A113` means row 113 in column A. Also use the UINs
# (unique identification numbers) to match rows in the spreadsheet to rows in
# R.




# Exercise 5
#
# Since the `read_excel` function wasn't able to automatically convert all of
# the values in the ASID's `Latitude` column into numbers, in this exercise
# you'll learn how to do the conversion manually.
#
# 1. Read about the `col_types` parameter in the `read_excel` function's help
#    file. Look for examples as well as the parameter description. Into a new
#    variable named `lat`, reload the ASID treating all columns as text, and
#    extract just the `Latitude` column. Notice this does not cause the
#    warnings you saw before, because the `Latitude` column is not
#    automatically converted to numbers. 
#
# 2. Use indexing to get the values from `lat` that correspond to the missing
#    values in the previous exercise. What's different about these compared to
#    the other latitude values?
#
# 3. Install the `stringr` package, which provides string-processing functions
#    for R. You can read more about `stringr` at:
#
#       https://stringr.tidyverse.org/
#
#    Load the package and skim the help file for the `str_trim` function. Use
#    `str_trim` to clean the `lat`, then use `as.numeric` to convert the column
#    to numbers.
#
# 4. Confirm that there are no missing values in `lat`. Then overwrite the
#    `Latitude` column in the ASID data frame with `lat`.
#




# Exercise 6
#
# 1. What's the range of years in the ASID?
#
# 2. Create a new column called `century` with the century for each incident.
#    For example, the century is 1800 for 1837 and 2000 for 2012. Hint: the
#    `floor` function may be helpful here.
#
# 3. How many incidents occurred in each century spanned by the data?
#
# 4. Have the types of sharks involved in shark incidents changed from century
#    to century? Is it possible to tell? Explain. Hint: use the `table`
#    function to cross-tabulate century with shark type.




# Exercise 7
#
# Use ggplot2 to make a bar plot of the number of incidents by shark common
# name. Put the shark names on the y-axis and make sure to give the plot a
# meaningful title and axis labels.




# Exercise 8
#
# Use ggplot2 to make side-by-side box plots of the ages of the victims in the
# ASID by gender. Use fill color to distinguish the box plots for different
# genders, and give the plot a meaningful title and axis labels.


