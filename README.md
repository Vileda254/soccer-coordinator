Project Instructions

Manually create a single collection named 'players' that contains all information for all 18 players. Each player must themselves be represented by a Dictionary with String keys and the corresponding values.

Create appropriate variables and logic to sort and store players into three teams: Sharks, Dragons and Raptors. Store the players for each team in collection variables named 'teamSharks', 'teamDragons', and 'teamRaptors'. Be sure that your logic results in all teams having the same number of experienced players on each.

Provide logic that prints a personalized letter to each of the guardians specifying: the player’s name, guardian names, team name, and date/time of their first team practice. The values for each should exactly match what we have provided, including the team practice dates and times above. The letters must be stored in a collection variable named 'letters'.

When the code is run, the letters should be printed in the console (Note: you need to print out the array content as formatted individual letters, not a direct content dump of the ‘letters’ array. It is easy to tell, if the output contain brackets “[“, “]”, then you are printing the array itself, not the content only.).

You might find out that the word “Optional” is being printed in the output (e.g. Optional(“John Doe”). This is related to a feature in Swift called Optional Variables. Try doing a bit of research (Hint: search for Swift Optionals Unwrapping).

As always, please add concise and descriptive comments to your code and be sure to name your constants, variables, keys, and methods descriptively and relevant to the project.

Logic to ensure that each team's average height is within 1.5 inch of the others as well as having each team contain the same number of experienced players. Your logic should be make use of dynamic values like the average height of teams or players and not be based on any magic numbers or hard-coded values. You should not rely on a particular ordering of the initial collection of players - the logic should work regardless of the order of players in the initial collection. (Please note, this feature only needs to meet the 1.5 inch threshold for the given set of players we provided, not for all potential future sets of players.) Please also print out the average height of the players of each team. If you do not want to be considered for an “Exceeds Expectations” rating, you may skip this step.
