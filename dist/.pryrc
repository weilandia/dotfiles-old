Pry.config.editor = "atom"

Pry.prompt = [
                 proc { |target_self, nest_level, pry|
                       "\001\e[0;32m\002#{pry.input_array.size}\001\e[0m\002 \001\e[0;32m\002🔨 \001\e[0m\002 #{Pry.view_clip(target_self)}#{":#{nest_level}" unless nest_level.zero?}\001\e[1;31m\002> \001\e[0m\002"
                      },
                 proc { |target_self, nest_level, pry|
                       "\001\e[1;31m\002#{pry.input_array.size}\001\e[0m\002 \001\e[1;33m\002⚡︎\001\e[0m\002\001\e[1;31m\002⚡︎\001\e[0m\002 #{Pry.view_clip(target_self)}#{":#{nest_level}" unless nest_level.zero?}\001\e[1;33m\002* \001\e[0m\002"
                      }
                 ]

Pry.config.theme = "shibumi"
