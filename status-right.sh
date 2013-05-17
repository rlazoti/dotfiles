#!/usr/bin/env bash
# This script prints a string will be evaluated for text attributes (but not shell commands) by tmux. It consists of a bunch of segments that are simple shell scripts/programs that output the information to show. For each segment the desired foreground and background color can be specified as well as what separator to use. The script the glues together these segments dynamically so that if one script suddenly does not output anything (= nothing should be shown) the separator colors will be nicely handled.

# The powerline root directory.
cwd=$(dirname $0)

# Source global configurations.
source "${cwd}/config.sh"

# Source lib functions.
source "${cwd}/lib.sh"

segments_path="${cwd}/${segments_dir}"

# Segment
# Comment/uncomment the register function call to enable or disable a segment.

declare -A pwd
pwd+=(["script"]="${segments_path}/pwd.sh")
pwd+=(["foreground"]="colour211")
pwd+=(["background"]="colour89")
pwd+=(["separator"]="${separator_left_bold}")
register_segment "pwd"

declare -A mail_count
mail_count+=(["script"]="${segments_path}/maildir_inbox_count.sh")
mail_count+=(["foreground"]="white")
mail_count+=(["background"]="red")
mail_count+=(["separator"]="${separator_left_bold}")
#register_segment "mail_count"

declare -A mpd_np
mpd_np+=(["script"]="${segments_path}/mpd_np.sh")
mpd_np+=(["foreground"]="colour37")
mpd_np+=(["background"]="colour234")
mpd_np+=(["separator"]="${separator_left_bold}")
#register_segment "mpd_np"

declare -A load
load+=(["script"]="${segments_path}/load.sh")
load+=(["foreground"]="colour167")
load+=(["background"]="colour237")
load+=(["separator"]="${separator_left_bold}")
#register_segment "load"

declare -A battery
battery+=(["script"]="${segments_path}/battery.sh")
battery+=(["foreground"]="colour127")
battery+=(["background"]="colour137")
battery+=(["separator"]="${separator_left_bold}")
#register_segment "battery"

declare -A weather
weather+=(["script"]="${segments_path}/weather.sh")
weather+=(["foreground"]="colour255")
weather+=(["background"]="colour37")
weather+=(["separator"]="${separator_left_bold}")
#register_segment "weather"

declare -A date_day
date_day+=(["script"]="${segments_path}/date_day.sh")
date_day+=(["foreground"]="colour255")
date_day+=(["background"]="colour24")
date_day+=(["separator"]="${separator_left_bold}")
date_day+=(["separator_fg"]="colour24")
register_segment "date_day"

declare -A date_full
date_full+=(["script"]="${segments_path}/date_full.sh")
date_full+=(["foreground"]="colour24")
date_full+=(["background"]="colour254")
date_full+=(["separator"]="${separator_left_bold}")
date_full+=(["separator_fg"]="colour254")
register_segment "date_full"

declare -A time
time+=(["script"]="${segments_path}/time.sh")
time+=(["foreground"]="colour234")
time+=(["background"]="colour148")
time+=(["separator"]="${separator_left_bold}")
time+=(["separator_fg"]="colour148")
register_segment "time"

# Print the status line in the order of registration above.
print_status_line_right

exit 0
