module Client
  module View
    module Player
      class New

        def self.render(races)
          promote_helper = Helper::PromoteHelper.new
          promote_helper.say I18n.t('player.set_player_tip'), :red
          loop do
            params = set_player_base_info(races)
            return params if promote_helper.yes? I18n.t('player.confirm_player'), :red
          end
        end

        def self.set_player_base_info(races)
          promote_helper = Helper::PromoteHelper.new
          params = {}
          params[:name] = promote_helper.ask I18n.t('player.set_name'), :blue
          params[:sex] = (promote_helper.yes? I18n.t('player.set_sex'), :blue) ? 'male' : 'famale'
          params[:age] = 18 #default value
          promote_helper.say races.map { |race| "#{race.id}: #{race.name}" }.join("\n"), :blue
          params[:race_id] = promote_helper.ask I18n.t('player.set_race'), :blue
          params
        end

      end
    end
  end
end
