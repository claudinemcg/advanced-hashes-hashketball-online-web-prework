# Write your code here!

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1,
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7,
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15,
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5,
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1,
        },
      },
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2,
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10,
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5,
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0,
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12,
        },
      },
    },
  }
end

# Build a method, num_points_scored that takes in an argument of a player's name and returns the number of points scored for that player.

# Think about where in the hash you will find a player's :points. How can you iterate down into that level? Think about the return value of your method. Remember that .each returns the original collection that you are iterating over. How can you return the number of points for a particular player?

def num_points_scored(name)
  game_hash().each do |location, team_data|
    team_data[:players].each do |player_name, player_stat|
      if name == player_name
        return player_stat[:points]
      end
    end
  end
end

num_points_scored("Brendan Haywood")

# Build a method, shoe_size, that takes in an argument of a player's name and returns the shoe size for that player.

  # Think about how you will find the shoe size of the correct player. How can you check and see if a player's name matches the name that has been passed into the method as an argument?
  

def shoe_size(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, player_stat|
      if name == player_name
       return player_stat[:shoe]
      end
    end
  end
end

# Build a method, team_colors, that takes in an argument of the team name and returns an array of that teams colors.

def team_colors(team_name)
  game_hash().each do |location, team_data|
    if team_name == team_data[:team_name]
      return team_data[:colors]
    end
  end
end

# Build a method, team_names, that operates on the game hash to return an array of the team names.

def team_names()
  teams = []
  
  game_hash().each do |location, team_data|
    teams << team_data[:team_name]
  end 
  
  teams
end

# Build a method, player_numbers, that takes in an argument of a team name and returns an array of the jersey number's for that team.

def player_numbers(team_name)
  numbers = []
  
  game_hash().each do |location, team_data|
    if team_name == team_data[:team_name]
      team_data[:players].each do |player_name, player_stats|
        numbers << player_stats[:number]
      end
    end
  end
  
  return numbers
end

# Build a method, player_stats, that takes in an argument of a player's name and returns a hash of that player's stats.

def player_stats(name)
  game_hash().each do |location, team_data|
    team_data[:players].each do |player_name, player_stats|
      if name == player_name
        return player_stats
      end
    end
  end 
end

# Build a method, big_shoe_rebounds, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:

  # First, find the player with the largest shoe size
  # Then, return that player's number of rebounds
  # Remember to think about return values here. Use binding.pry to drop into your method and understand what it is returning and why.
  
def big_shoe_rebounds()
  player_with_largest_shoe = find_player_with_longest_shoe()
  
  game_hash().each do |location, team_data|
    team_data[:players].each do |player_name, player_stats|
      if player_name == player_with_largest_shoe
        return player_stats[:rebounds]
      end
    end
  end
end

def find_player_with_longest_shoe()
  largest_shoe_size = nil
  player_with_largest_shoe = nil
  
  game_hash().each do |location, team_data|
    team_data[:players].each do |player_name, player_stats|
      if largest_shoe_size == nil || player_stats[:shoe] > largest_shoe_size
        largest_shoe_size = player_stats[:shoe]
        player_with_largest_shoe = player_name
     end
    end
  end
  
  player_with_largest_shoe
end

big_shoe_rebounds()

#Which player has the most points? Call the method most_points_scored.

def most_points_scored()
  largest_score = nil
  player_with_largest_score = nil
  
  game_hash().each do |location, team_data|
    team_data[:players].each do |player_name, player_stats|
      if largest_score == nil || player_stats[:points] > largest_score
        largest_score = player_stats[:points]
        player_with_largest_score = player_name
      end
   end
  end
  
  player_with_largest_score
end

#most_points_scored()

#Which team has the most points? Call the method winning_team.

def winning_team()
  home_team_score = home_team_total_score()
  away_team_score = away_team_total_score()
  messageA = "The winning team is the home team: Brooklyn Nets! Brooklyn Nets: #{home_team_score}; Charlotte Hornets: #{away_team_score}"
  messageB = "The winning team is the away team: Charlotte Hornets! Brooklyn Nets: #{home_team_score}; Charlotte Hornets: #{away_team_score}"
  
  home_team_score > away_team_total_score ? messageA : messageB
end

def home_team_total_score()
  home_team_score = 0
  
  game_hash()[:home][:players].each do |player_name, player_stats|
    home_team_score += player_stats[:points]
  end
  
  home_team_score
end

def away_team_total_score()
  away_team_score = 0
  
  game_hash()[:away][:players].each do |player_name, player_stats|
    away_team_score += player_stats[:points]
  end
  
  away_team_score
end

#winning_team()

#Which player has the longest name? Call the method player_with_longest_name.

def player_with_longest_name()
  longest_length = 0
  longest_player_name = nil
  
  game_hash().each do |location, team_data|
    team_data[:players].each do |player_name, player_stats|
      if player_name.length > longest_length
        longest_length = player_name.length
        longest_player_name = player_name
      end
    end
  end
  
  longest_player_name
end

#player_with_longest_name()

#Write a method that returns true if the player with the longest name had the most steals. Call the method long_name_steals_a_ton?.

def long_name_steals_a_ton?()
  most_steals = 0
  player_with_most_steals = nil
  
  game_hash().each do |location, team_data|
    team_data[:players].each do |player_name, player_stats|
      if player_stats[:steals] > most_steals
        most_steals = player_stats[:steals]
        player_with_most_steals = player_name
      end
    end
  end
  
  player_with_longest_name() == player_with_most_steals ? true : false
end






