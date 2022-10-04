#!/usr/bin/env Rscript
#
# This is a script to clean The Pudding's Banknotes dataset for use in the
# workshop reader. The original data is at:
#
#     https://github.com/the-pudding/banknotes
#
# Things this script does:
#
# * Remove the `appearanceDeathDiff` column (students can compute this).
#
# Interesting features of the original dataset:
#
# * Queen Elizabeth II died after the dataset was created, so her death date is
#   missing.
# * The death date for Genoveva Rios is unknown.
#

banknotes = read.csv("../data/2022-10-03_banknotes_data_original.csv")

# Check that there's nothing special about `appearanceDeathDiff`:
diff = banknotes$firstAppearanceDate - as.numeric(banknotes$deathDate)
has_diff = !is.na(diff)
all(diff[has_diff] == banknotes$appearanceDeathDiff[has_diff])

# Remove `appearanceDeathDiff`:
id = match("appearanceDeathDiff", names(banknotes))
banknotes = banknotes[-id]

# Can we get birth year?
# names = unique(banknotes$name)

write.csv(banknotes, "../data/banknotes.csv", row.names = FALSE)
