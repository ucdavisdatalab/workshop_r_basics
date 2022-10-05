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
# * Rename the `countryAbbr` column to `currency_code`.
# * Convert the column names to snake case.
# * Rename `_date` in column names to `_year`.
# * Compute `scaled_bill_value`.
#
# Interesting features of the original dataset:
#
# * Queen Elizabeth II died after the dataset was created, so her death date is
#   missing.
# * The death date for Genoveva Rios is unknown.
#

banknotes = read.csv("../data/2022-10-03_banknotes_data_original.csv")

# Check that there's nothing special about `appearanceDeathDiff`:
suppressWarnings(
  diff <- banknotes$firstAppearanceDate - as.numeric(banknotes$deathDate)
)
has_diff = !is.na(diff)
stopifnot(all(diff[has_diff] == banknotes$appearanceDeathDiff[has_diff]))

# Remove `appearanceDeathDiff`:
id = match("appearanceDeathDiff", names(banknotes))
banknotes = banknotes[-id]

# Rename `country_abbr` to `currency_code`:
id = match("countryAbbr", names(banknotes))
names(banknotes)[id] = "currency_code"

# Convert column names to snake case.
cols = names(banknotes)
cols = gsub("([A-Z])", "_\\1", cols)
cols = tolower(cols)
names(banknotes) = cols

# Change `date` in column names to `year`
cols = names(banknotes)
cols = gsub("_date", "_year", cols)
names(banknotes) = cols


# Compute `scaled_bill_value`:
vmin = aggregate(banknotes$current_bill_value, banknotes["currency_code"], min)
vmax = aggregate(banknotes$current_bill_value, banknotes["currency_code"], max)
vrange = merge(vmin, vmax, by = "currency_code", all = TRUE)
cols = c("min_bill_value", "max_bill_value")
names(vrange)[2:3] = cols
banknotes = merge(banknotes, vrange, by = "currency_code", all.x = TRUE)

banknotes$scaled_bill_value = with(banknotes,
  (current_bill_value - min_bill_value) / (max_bill_value - min_bill_value))

id = match(cols, names(banknotes))
banknotes = banknotes[-id]


# Can we get birth year?
# names = unique(banknotes$name)

write.csv(banknotes, "../data/banknotes.csv", row.names = FALSE)
