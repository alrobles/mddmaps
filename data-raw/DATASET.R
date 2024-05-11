## code to prepare `DATASET` dataset goes here
mddSpList_v1_11 <- readr::read_csv("C:/Users/alroble8/Arizona State University/Norma Alicia HERNANDEZ HERNANDEZ - MDD_PROJECT/mddUpdate/MddVersions/MDD_1_11.csv") %>%
  filter(extinct != 1,
         domestic != 1) %>%
  select(order, family, genus, specificEpithet, sciName) %>%
  rename(Order = order,
         Family = family, Genus = genus, Species = specificEpithet,
         MDD_SciName = sciName) %>%
  mutate(MDD_SciName = str_replace(MDD_SciName, "_", " ")) %>%
  mutate(Order = str_to_title(Order),
         Family = str_to_title(Family))

write.csv(mddSpList_v1_11, "data-raw/mddSpList_v1_11.csv")


usethis::use_data(DATASET, overwrite = TRUE)
