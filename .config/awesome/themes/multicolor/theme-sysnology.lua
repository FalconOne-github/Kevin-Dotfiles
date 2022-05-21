--[[

     Multicolor Awesome WM theme 2.0
     github.com/lcpz

--]]
local cpu_widget = require("awesome-wm-widgets.cpu-widget.cpu-widget")
local weather_widget = require("awesome-wm-widgets.weather-widget.weather")
local net_speed_widget = require("awesome-wm-widgets.net-speed-widget.net-speed")
local calendar_widget = require("awesome-wm-widgets.calendar-widget.calendar")
local volume_widget = require('awesome-wm-widgets.volume-widget.volume')
local todo_widget = require("awesome-wm-widgets.todo-widget.todo")

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.confdir                                   = os.getenv("HOME") .. "/.config/awesome/themes/multicolor"
theme.font                                      = "Fira Code Regular Nerd Font 18"
theme.taglist_font                              = "Fira Code Regular Nerd Font 20"

-- Notifications
-- theme.notification_font                         = "Fira Code Regular Nerd Font 16"
--theme.notification_bg                           = "#2E3440"
--theme.notification_fg                           = "#88C0D0"
--theme.notification_border_width                 = 2
--theme.notification_border_color                 = "#bf616a"
--theme.notification_shape                        = gears.shape.infobubble
--theme.notification_opacity                      = 1
--theme.notification_margin                       = 60


-- Variables set for theming notifications:
theme.notification_title_margin = dpi(6)

theme.notification_body_left_margin = dpi(7)
theme.notification_body_right_margin = dpi(7)
theme.notification_body_top_margin = dpi(8)
theme.notification_body_bottom_margin = dpi(6)
theme.notification_body_margins = dpi(6)
-- theme.notification_margins = dpi(60)

theme.notification_icon_margin = dpi(2)
theme.notification_bg = theme.bg_normal
theme.notification_border_focus = theme.border_focus
theme.notification_border_width = dpi(0)
theme.notification_spacing = dpi(25)

theme.center_notification_border_focus = theme.border_focus
theme.center_notification_border_width = dpi(0)

theme.notification_center_header_bg = "#16161d"
theme.notification_center_inner_bg = "#16161d"

-- Systray
theme.bg_systray = theme.bg_normal
theme.systray_icon_spacing = dpi(5)
theme.systray_max_rows = dpi(1)


theme.fg_minimize                               = "#ffffff"
theme.border_width                              = dpi(2)


theme.border_normal = "#e06c75"
theme.border_focus = "#00efd1"
theme.border_marked = "#7ec7a2"


theme.titlebar_bg_focus   = "#3B4252"
theme.titlebar_bg_normal  = "#2E3440"

theme.bg_normal = "#1c1d29"
theme.widget_bg = "#16161e"
theme.bg_focus = "#16161e"
theme.bg_urgent = "#ff0000"
theme.bg_minimize = "#444444"

theme.fg_normal = "#92a0bd"
theme.fg_focus = "#ffffff"
theme.fg_urgent = "#ffffff"
theme.fg_minimize = "#ffffff"

-- TagList
theme.taglist_fg_focus = "#86e6fc"
theme.taglist_bg_focus = "#2e3440"
theme.taglist_fg_occupied = "#ff79c6"
theme.taglist_bg_occupied = theme.widget_bg
theme.taglist_bg_empty = theme.widget_bg



theme.menu_border_width                         = 0
theme.menu_height                               = dpi(35)
theme.menu_width                                = dpi(280)
theme.menu_submenu_icon                         = theme.confdir .. "/icons/submenu.png"
theme.menu_fg_normal                            = "#aaaaaa"
theme.menu_fg_focus                             = "#ff8c00"
theme.menu_bg_normal                            = "#2E3440"
theme.menu_bg_focus                             = "#2E3440"
theme.widget_temp                               = theme.confdir .. "/icons/temp.png"
theme.widget_uptime                             = theme.confdir .. "/icons/ac.png"
theme.widget_cpu                                = theme.confdir .. "/icons/cpu.png"
theme.widget_weather                            = theme.confdir .. "/icons/dish.png"
theme.widget_fs                                 = theme.confdir .. "/icons/fs.png"
theme.widget_mem                                = theme.confdir .. "/icons/mem.png"
theme.widget_netdown                            = theme.confdir .. "/icons/net_down.png"
theme.widget_netup                              = theme.confdir .. "/icons/net_up.png"
theme.widget_mail                               = theme.confdir .. "/icons/mail.png"
theme.widget_batt                               = theme.confdir .. "/icons/bat.png"
theme.widget_clock                              = theme.confdir .. "/icons/clock.png"
theme.widget_vol                                = theme.confdir .. "/icons/spkr.png"
theme.widget_music                              = theme.confdir .. "/icons/note.png"
theme.widget_music_on                           = theme.confdir .. "/icons/note.png"
theme.widget_music_pause                        = theme.confdir .. "/icons/pause.png"
theme.widget_music_stop                         = theme.confdir .. "/icons/stop.png"
theme.taglist_squares_sel                       = theme.confdir .. "/icons/square_a.png"
theme.taglist_squares_unsel                     = theme.confdir .. "/icons/square_b.png"
--theme.tasklist_plain_task_name                  = true
--theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 10
theme.layout_tile                               = theme.confdir .. "/icons/tile.png"
theme.layout_tilegaps                           = theme.confdir .. "/icons/tilegaps.png"
theme.layout_tileleft                           = theme.confdir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.confdir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.confdir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.confdir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.confdir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.confdir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.confdir .. "/icons/dwindle.png"
theme.layout_max                                = theme.confdir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.confdir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.confdir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.confdir .. "/icons/floating.png"
theme.titlebar_close_button_normal              = theme.confdir .. "/icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.confdir .. "/icons/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal           = theme.confdir .. "/icons/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.confdir .. "/icons/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = theme.confdir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.confdir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.confdir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.confdir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive    = theme.confdir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.confdir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.confdir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.confdir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive  = theme.confdir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.confdir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.confdir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.confdir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.confdir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.confdir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.confdir .. "/icons/titlebar/maximized_focus_active.png"

local markup = lain.util.markup

-- Create a textclock widget
mytextclock = wibox.widget.textclock(markup("#7788af", "%A %d %B ") .. markup("#535f7a", ">") .. markup("#fedb41", " %l:%M %p "))
--mytextclock = wibox.widget.textclock()
local cw = calendar_widget({
    --Theme = nord, outrun, dark, light, monokai
    theme = 'nord',
    placement = 'top',
    radius = 8,
})
mytextclock:connect_signal("button::press", 
    function(_, _, _, button)
        if button == 1 then cw.toggle() end
    end)



-- Weather
local weathericon = wibox.widget.imagebox(theme.widget_weather)
theme.weather = lain.widget.weather({
    city_id = 1694262, -- placeholder (Pavia)
    notification_preset = { font = "Fira Code Regular Nerd Font 14", fg = theme.fg_normal },
    weather_na_markup = markup.fontfg(theme.font, "#eca4c4", "N/A "),
    settings = function()
        descr = weather_now["weather"][1]["description"]:lower()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(markup.fontfg(theme.font, "#eca4c4", descr .. " @ " .. units .. "°F "))
    end
})



-- Separators
local first     = wibox.widget.textbox(markup.font("Terminus 3", " "))
local spr       = wibox.widget.textbox(' ')
local small_spr = wibox.widget.textbox(markup.font("Terminus 4", " "))
local bar_spr   = wibox.widget.textbox(markup.font("Terminus 3", " ") .. markup.fontfg(theme.font, "#777777", "|") .. markup.font("Terminus 5", " "))




-- / fs
--[[ commented because it needs Gio/Glib >= 2.54
local fsicon = wibox.widget.imagebox(theme.widget_fs)
theme.fs = lain.widget.fs({
    notification_preset = { font = "Noto Sans Mono Medium 10", fg = theme.fg_normal },
    settings  = function()
        widget:set_markup(markup.fontfg(theme.font, "#80d9d8", string.format("%.1f", fs_now["/"].used) .. "% "))
    end
})
--]]

-- Mail IMAP check
--[[ commented because it needs to be set before use
local mailicon = wibox.widget.imagebox()
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        if mailcount > 0 then
            mailicon:set_image(theme.widget_mail)
            widget:set_markup(markup.fontfg(theme.font, "#cccccc", mailcount .. " "))
        else
            widget:set_text("")
            --mailicon:set_image() -- not working in 4.0
            mailicon._private.image = nil
            mailicon:emit_signal("widget::redraw_needed")
            mailicon:emit_signal("widget::layout_changed")
        end
    end
})
--]]

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e33a6e", cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#f1af5f", coretemp_now .. "°C "))
    end
})

-- Battery
local baticon = wibox.widget.imagebox(theme.widget_batt)
local bat = lain.widget.bat({
    settings = function()
        local perc = bat_now.perc ~= "N/A" and bat_now.perc .. "%" or bat_now.perc

        if bat_now.ac_status == 1 then
            perc = perc .. " plug"
        end

        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, perc .. " "))
    end
})

-- ALSA volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            volume_now.level = volume_now.level .. "M"
        end

        widget:set_markup(markup.fontfg(theme.font, "#7493d2", volume_now.level .. "% "))
    end
})
--]]

-- ALSA volume bar
local volicon = wibox.widget.imagebox(theme.vol)
theme.volume = lain.widget.alsabar {
    width = dpi(59), border_width = 0, ticks = true, ticks_size = dpi(6),
    notification_preset = { font = theme.font },
    --togglechannel = "IEC958,3",
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.vol_mute)
        elseif volume_now.level == 0 then
            volicon:set_image(theme.vol_no)
        elseif volume_now.level <= 50 then
            volicon:set_image(theme.vol_low)
        else
            volicon:set_image(theme.vol)
        end
    end,
    colors = {
        background   = theme.bg_normal,
        mute         = red,
        unmute       = theme.fg_normal
    }
}
theme.volume.tooltip.wibox.fg = theme.fg_focus
theme.volume.bar:buttons(my_table.join (
          awful.button({}, 1, function()
            awful.spawn(string.format("%s -e alsamixer", awful.util.terminal))
          end),
          awful.button({}, 2, function()
            os.execute(string.format("%s set %s 100%%", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 3, function()
            os.execute(string.format("%s set %s toggle", theme.volume.cmd, theme.volume.togglechannel or theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 4, function()
            os.execute(string.format("%s set %s 1%%+", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 5, function()
            os.execute(string.format("%s set %s 1%%-", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end)
))
local volumebg = wibox.container.background(theme.volume.bar, "#1AE31A", gears.shape.rectangle)
local volumewidget = wibox.container.margin(volumebg, dpi(2), dpi(7), dpi(4), dpi(4))

-- Weather
--[[ to be set before use
theme.weather = lain.widget.weather({
    --APPID =
    city_id = 2643743, -- placeholder (London)
})
--]]




-- Net
local netdownicon = wibox.widget.imagebox(theme.widget_netdown)
local netdowninfo = wibox.widget.textbox()
local netupicon = wibox.widget.imagebox(theme.widget_netup)
local netupinfo = lain.widget.net({
    settings = function()
        if iface ~= "network off" and
           string.match(theme.weather.widget.text, "N/A")
        then
            theme.weather.update()
        end

        widget:set_markup(markup.fontfg(theme.font, "#e54c62", net_now.sent .. " "))
        netdowninfo:set_markup(markup.fontfg(theme.font, "#87af5f", net_now.received .. " "))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local memory = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e0da37", mem_now.used .. "M "))
    end
})

-- MPD
local musicplr = "urxvt -title Music -g 130x34-320+16 -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(my_table.join(
    awful.button({ modkey }, 1, function () awful.spawn.with_shell(musicplr) end),
    --[[awful.button({ }, 1, function ()
        awful.spawn.with_shell("mpc prev")
        theme.mpd.update()
    end),
    --]]
    awful.button({ }, 2, function ()
        awful.spawn.with_shell("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ modkey }, 3, function () awful.spawn.with_shell("pkill ncmpcpp") end),
    awful.button({ }, 3, function ()
        awful.spawn.with_shell("mpc stop")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
            widget:set_markup(markup.font(theme.font, markup("#FFFFFF", artist) .. " " .. title))
        elseif mpd_now.state == "pause" then
            widget:set_markup(markup.font(theme.font, " mpd paused "))
            mpdicon:set_image(theme.widget_music_pause)
        else
            widget:set_text("")
            mpdicon:set_image(theme.widget_music)
        end
    end
})

function theme.at_screen_connect(s)
    -- Quake application
   -- s.quake = lain.util.quake({ app = awful.util.terminal })
   s.quake = lain.util.quake({ app = "urxvt", height = 0.50, argname = "--name %s" })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top",opacity = 1.0, screen = s, height = dpi(32), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        expand = "none",
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            spr,
            small_spr,
            
            small_spr,
            s.mytaglist,
            s.mypromptbox,
        },
        { -- Middle widgets
            layout = wibox.layout.flex.horizontal,
            max_widget_size = 1500,
            mytextclock,
        },
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            --mailicon,
            --mail.widget,
            --mpdicon,
            --theme.mpd.widget,
             --todo_widget(),
             cpu_widget({
                 width = 70,
                 step_width = 2,
                 step_spacing = 0,
                 color = '#C66170'
        }),   
            spr,
            todo_widget(),
            netdownicon,
            netdowninfo,
            netupicon,
            netupinfo.widget,
            spr,
            memicon,
            memory.widget,
            --cpuicon,
            --cpu.widget,
            --weathericon,
            --theme.weather.widget,
            tempicon,
            temp.widget,
            --baticon,
            --bat.widget,
            --clockicon,
            --mytextclock,
            spr,
            volume_widget{
                   widget_type = 'arc',
                   size = 30,
                   main_color = '#1AE31A',
               },
            spr,
            spr,
            --volicon,
            --theme.volume.widget,
            --volumewidget,
            wibox.widget.systray(),
            first,

        },
    }

    -- Create the bottom wibox
    s.mybottomwibox = awful.wibar({ position = "bottom", screen = s, border_width = 0, height = dpi(20), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the bottom wibox
    s.mybottomwibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
                     s.mylayoutbox,

        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
           mpdicon,
           theme.mpd.widget,
            weather_widget({
                api_key='b15c0f369031a24f39662bdccae74423',
                coordinates = {10.7761, 122.5456},
                time_format_12h = true,
                units = 'imperial',
                both_units_widget = true,
                font_name = 'Carter One',
                --icons = 'VitalyGorbachev',
                --icons_extension = '.svg',
                icons = 'weather-underground-icons',
                icons_extension = '.png',
                show_hourly_forecast = true,
                show_daily_forecast = true,  
            }),
            --s.mylayoutbox,
        },
    }
end

return theme
