def game_hash
    @game_hash = {
        :home => {
            :team_name => "Brooklyn Nets",
            :colors => ["Black", "White"],
            :players => {
                :alan_anderson => {
                    :number => 0,
                    :shoe => 16,
                    :points => 22,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 1
                },
                :reggie_evans => {
                    :number => 30,
                    :shoe => 14,
                    :points => 12, 
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 12,
                    :blocks => 12,
                    :slam_dunks => 7
                },
                :brook_lopez => {
                    :number => 11,
                    :shoe => 17,
                    :points => 17,
                    :rebounds => 19,
                    :assists => 10,
                    :steals => 3, 
                    :blocks => 1,
                    :slam_dunks => 15
                },
                :mason_plumlee => {
                    :number => 1,
                    :shoe => 19,
                    :points => 26,
                    :rebounds => 12,
                    :assists => 6,
                    :steals => 3, 
                    :blocks => 8,
                    :slam_dunks => 5
                },
                :jason_terry => {
                    :number => 31,
                    :shoe => 15, 
                    :points => 19, 
                    :rebounds => 2,
                    :assists => 2,
                    :steals => 4,
                    :blocks => 11,
                    :slam_dunks => 1
                }
        }
        },
        :away => {
            :team_name => "Charlotte Hornets",
            :colors => ["Turquoise", "Purple"],
            :players => {
                :jeff_adrien => {
                    :number => 4,
                    :shoe => 18,
                    :points => 10,
                    :rebounds => 1,
                    :assists => 1,
                    :steals => 2,
                    :blocks => 7,
                    :slam_dunks => 12
                },
                :bismak_biyombo => {
                    :number => 0,
                    :shoe => 16,
                    :points => 12, 
                    :rebounds => 4,
                    :assists => 7,
                    :steals => 7,
                    :blocks => 15,
                    :slam_dunks => 10
                },
                :desagna_diop => {
                    :number => 2,
                    :shoe => 14,
                    :points => 24,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 4, 
                    :blocks => 5,
                    :slam_dunks => 5
                },
                :ben_gordon => {
                    :number => 8,
                    :shoe => 15,
                    :points => 33,
                    :rebounds => 3,
                    :assists => 2,
                    :steals => 1, 
                    :blocks => 1,
                    :slam_dunks => 0
                },
                :brendan_haywood => {
                    :number => 33,
                    :shoe => 15, 
                    :points => 6, 
                    :rebounds => 12,
                    :assists => 12,
                    :steals =>22,
                    :blocks => 5,
                    :slam_dunks => 12
                }
        }
        
    }
    }
#puts game_hash 

def home_team_name
    puts @game_hash[:home][:colors]
end 

home_team_name

def num_points_scored(player_name)
    puts @game_hash[:away][:players][:jeff_adrien][:points]
    
    if @game_hash.each [:home][:player][player_name][:points]
        puts 
    puts @game_hash.each [:home][:player][player_name][:points]
     puts @game_hash.each [:home][:player][player_name][:points]
        @game_hash[:home][:players].each do |player|
         
        if player == player_name
            puts @game_hash.each [:home][:player][:player_name][:points]
        end
    end
end 
     
     # @game_hash[:player][:player_name][:points}
     
      num_points_scored("brook_lopez")
     
end 

def shoe_size(player_name)
if @game_hash[:home][:players][:player_name]
    puts @game_hash[:home][:players][:player_name][:shoe]
else
    puts @game_hash[:away][:players][:player_name][:shoe]
end
end 

shoe_size(:brook_lopez)

end 

