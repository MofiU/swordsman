module Swordsman
  module Wizard
    def initialize_game_world
      set_game_background
      set_maps
      set_game_start_time
      set_hot_keys
      set_player
      set_groups
    end

    def set_game_background
      p "设置游戏背景"
    end

    def set_maps
      p "设置游戏地图"
    end

    def set_game_start_time
      p "设置游戏背景年代"
    end

    def set_hot_keys
      p "设置快捷键"
    end

    def set_player
      p "初始化玩家"
    end

    def set_groups
      p '设置系统势力'
    end

    def save_game
      # 设想
      p '存档...'
    end

    def loading_game_history
      # 设想
      p "读档..."
    end
  end
end