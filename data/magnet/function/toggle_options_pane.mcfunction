# copy this instant into a scratchpad variable for OR statement
#scoreboard players operation instant m_internals = m_timer_player m_internals

# if the options menu is open and something hasn't already happened, set the flag to close the options
#execute if score instant m_internals = m_timer_player m_options if score optionsOpen m_internals matches 1 run scoreboard players set instant m_internals -1

# set toggler depending on if the options is open or not
# open:
execute if score optionsOpen m_internals matches 1 run scoreboard players set toggle m_internals 1
# closed:
execute if score optionsOpen m_internals matches 0 run scoreboard players set toggle m_internals 0

# if the options panel is closed, open it
execute if score toggle m_internals matches 0 run scoreboard objectives setdisplay sidebar m_options
execute if score toggle m_internals matches 0 run scoreboard players set optionsOpen m_internals 1
execute if score toggle m_internals matches 0 run tellraw @s ["",{"text":"\n\n\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550[Magnet Options]\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n\nTo change a setting, run a variation of the following command:\n"},{"text":"/scoreboard players set ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set OPTION m_options VALUE"},"hoverEvent":{"action":"show_text","contents":"Click to suggest"}},{"text":"<option name>","italic":true,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set OPTION m_options VALUE"},"hoverEvent":{"action":"show_text","contents":"Click to suggest"}},{"text":" m_options ","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set OPTION m_options VALUE"},"hoverEvent":{"action":"show_text","contents":"Click to suggest"}},{"text":"<value>","italic":true,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set OPTION m_options VALUE"},"hoverEvent":{"action":"show_text","contents":"Click to suggest"}},{"text":"\n\nFor example, to turn off magnet sounds, use:\n"},{"text":"/scoreboard players set playItemSound m_options 0","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set playItemSound m_options 0"},"hoverEvent":{"action":"show_text","contents":"Click to suggest"}},{"text":"\n\nTo close this menu again, click "},{"text":"[here]","color":"yellow","clickEvent":{"action":"run_command","value":"/function magnet:toggle_options_pane"},"hoverEvent":{"action":"show_text","contents":"Toggle options pane"}},{"text":"\nor type: "},{"text":"/function magnet:toggle_options_pane","color":"yellow","clickEvent":{"action":"suggest_command","value":"/function magnet:toggle_options_pane"},"hoverEvent":{"action":"show_text","contents":"Click to suggest"}},{"text":"\n\nMore info can be found "},{"text":"[here]","color":"yellow","clickEvent":{"action":"open_url","value":"http://bit.ly/MagnetDatapack"},"hoverEvent":{"action":"show_text","contents":"Open help page"}},{"text":".\n\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"}]

# if the options panel is opened, close it
execute if score toggle m_internals matches 1 run scoreboard objectives setdisplay sidebar
execute if score toggle m_internals matches 1 run scoreboard players set optionsOpen m_internals 0

# message player
#execute unless score optionsOpen m_internals matches 1 run tellraw @s {"text":"opened options"}
#execute unless score optionsOpen m_internals matches 1 run say Opened Magnet options pane

# show on sidebar
#execute unless score optionsOpen m_internals matches 1 run scoreboard objectives setdisplay sidebar m_options


#execute unless score optionsOpen m_internals matches 1 run scoreboard players set optionsOpen m_internals 1
