library(Lahman)
data(Teams)
teams_1961_to_2001 <- Teams %>%
  filter(yearID %in% 1961:2001) %>%
  mutate(runs_per_game = R/G,
         AB_per_game = AB/G,
         win_rate = W/G,
         EPG=E/G,
         DPG = X2B/G,
         TPG = X3B/G)
teams_1961_to_2001 %>% summarize(cor(runs_per_game, AB_per_game))

teams_1961_to_2001 %>% summarize(cor(win_rate, EPG))
teams_1961_to_2001 %>% summarize(cor(DPG, TPG))
