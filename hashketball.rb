def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
    ]
    }
  }
end


# def home_team_name
#   game_hash[:home][:team_name]
# end
# puts home_team_name

# def home_team_name
#   game_hash[:home][:team_name]
# end
 
# puts home_team_name

# def good_practices
  # game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    
      # team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        
 
        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        # data.each do |data_item|
            
      # end
    # end
  # end
# end

# good_practices

# def shoe_size(name)
#   player = find_the_player(name)
#   player.fetch(:shoe)
# end

# def num_points_scored(name)
#   player = find_the_player(name)
#   player.fetch(:points)
# end

# def team_colors(team_name)
#   team = find_the_team(team_name)
#   team.fetch(:colors)
# end

# def teams
#   game_hash.values[:team_name]
  
# end

# puts game_hash.values

# def find_the_team(team_name)
#   teams.find {|team| team.fetch(:team_name) == team_name}
# end

# def big_shoe_rebounds
#   player = player_biggest_shoe_size
#   player.fetch(:rebounds)
# end

# def player_biggest_shoe_size
#   players.sort_by {|player| player.fetch(:shoe) }.last
# end

# def players
#   home_players = game_hash.fetch(:home).fetch(:players)
#   away_players = game_hash.fetch(:away).fetch(:players)
#   home_players + away_players
# end

def team_names
  teams.map do |team|
    team[:team_name]
  end
end

team_names

# def player_numbers(team_name)
#   find_the_team(team_name)[:players].map do |player|
#     player[:number]
#   end
# end

# def player_stats(player_name)
#   find_the_player(player_name).reject { |key, value| key == :player_name }
# end

# def find_the_player(name)
#   players.find {|player| player.fetch(:player_name) == name}
# end

# def game_hash
#   game_hash = {
#               home: {
#               team_name: "Brooklyn Nets",
#               colors: ["Black", "White"],
#               players: [
#                 { players_name: "Alan Anderson",
#                   number: 0,
#                   shoe: 16,
#                   points: 22,
#                   rebounds: 12,
#                   assists: 12,
#                   steals: 3,
#                   blocks: 1,
#                   slam_dunks: 1
#                 },
#                 { players_name: "Reggie Evans",
#                   number: 30,
#                   shoe: 14,
#                   points: 12,
#                   rebounds: 12,
#                   assists: 12,
#                   steals: 12,
#                   blocks: 12,
#                   slam_dunks: 7
#                 },
#                 { players_name: "Brook Lopez",
#                   number: 11,
#                   shoe: 17,
#                   points: 17,
#                   rebounds: 19,
#                   assists: 10,
#                   steals: 3,
#                   blocks: 1,
#                   slam_dunks: 15
#                 },
#                 { players_name: "Mason Plumlee",
#                   number: 1,
#                   shoe: 19,
#                   points: 26,
#                   rebounds: 12,
#                   assists: 6,
#                   steals: 3,
#                   blocks: 8,
#                   slam_dunks: 5
#                 },
#                 { players_name: "Jason Terry",
#                   number: 31,
#                   shoe: 15,
#                   points: 19,
#                   rebounds: 2,
#                   assists: 2,
#                   steals: 4,
#                   blocks: 11,
#                   slam_dunks: 1
#                 }
#               ]
#             },
#             away: {
#               team_name: "Charlotte Hornets",
#               colors: ["Turquoise", "Purple"],
#               players: [
#                 { players_name: "Jeff Adrien",
#                   number: 4,
#                   shoe: 18,
#                   points: 10,
#                   rebounds: 1,
#                   assists: 1,
#                   steals: 2,
#                   blocks: 7,
#                   slam_dunks: 2
#                 },
#                 { players_name: "Bismak Biyombo",
#                   number: 0,
#                   shoe: 16,
#                   points: 12,
#                   rebounds: 4,
#                   assists: 7,
#                   steals: 7,
#                   blocks: 15,
#                   slam_dunks: 10
#                 },
#                 { players_name: "DeSagna Diop",
#                   number: 2,
#                   shoe: 14,
#                   points: 24,
#                   rebounds: 12,
#                   assists: 12,
#                   steals: 4,
#                   blocks: 5,
#                   slam_dunks: 5
#                 },
#                 { players_name: "Ben Gordon",
#                   number: 8,
#                   shoe: 15,
#                   points: 33,
#                   rebounds: 3,
#                   assists: 2,
#                   steals: 1,
#                   blocks: 1,
#                   slam_dunks: 0
#                 },
#                 { players_name: "Brendan Haywood",
#                   number: 33,
#                   shoe: 15,
#                   points: 6,
#                   rebounds: 12,
#                   assists: 12,
#                   steals: 22,
#                   blocks: 5,
#                   slam_dunks: 12
#                 }
#               ]
#             }
#           }
#           end
        



# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     # binding.pry
#       team_data.each do |attribute, data|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#         # binding.pry
# data.each do |data_item|

#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         # data.each do |data_item|
#             # binding.pry
#       end
#     end
#   end
# end

# good_practices

# def teams
#   game_hash.values
# end

# def team_names(teams)
#   teams.map do |team|
#     team[:team_name]
#   end
# end

# def num_points_scored(players_name)
#   game_hash.each do |location, team_data|
#     players.fetch(:players_name)
    # team_data.each do |key, value|
    # value.each do |y, x|
      # binding.pry
  # returns points scored for player
# end
# end
# end
# end

# num_points_scored("Brendan Haywood")

# def shoe_size(players_name)
  # game_hash[players_name][shoe_size]
  # returns shoe size for player
# end

# def team_colors(team_name)
  # [team_name].fetch[:colors]
  # returns array of teams colors
# end

# def team_names
#   team.map do |team|
#     game_hash[team_name].values
  # returns array of the team team_names
# end

# def player_numbers(team_name)
  # returns array of jersey player_numbers
# end

# def player_stats(players_name)
  # returns hash of players player_stats
# end

# def big_shoe_rebounds
  # returns # rebounds of player w/largest shoe size
  # 1. find player w/ largest shoe size
  # 2. return player's # of rebounds
# end


