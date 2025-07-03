--[[

Luna Interface Suite
by Nebula Softworks

Main Credits

Hunter (Nebula Softworks) | Designing And Programming | Main Developer
JustHey (Nebula Softworks) | Configurations, Bug Fixing And More! | Co Developer
Throit | Color Picker
Wally | Dragging And Certain Functions
Sirius | PCall Parsing, Notifications, Slider And Home Tab
Luna Executor | Original UI


Extra Credits / Provided Certain Elements

Pookie Pepelss | Bug Tester
Inori | Configuration Concept
Latte Softworks and qweery | Lucide Icons And Material Icons
kirill9655 | Loading Circle
Deity/dp4pv/x64x70 | Certain Scripting and Testing ig

]]

local Release = "Prerelease Beta 6.1"

local Luna = { Folder = "Luna", Options = {}, ThemeGradient = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(117, 164, 206)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(123, 201, 201)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(224, 138, 175))} }

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Localization = game:GetService("LocalizationService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local CoreGui = game:GetService("CoreGui")

local isStudio
local website = "github.com/Nebula-Softworks"

if RunService:IsStudio() then
	isStudio = true
end

-- Credits To Latte Softworks And qweery for Lucide And Material Icons Respectively.
local IconModule = {
	Lucide = nil,
	Material = {
		["perm_media"] = "http://www.roblox.com/asset/?id=6031215982";
		["sticky_note_2"] = "http://www.roblox.com/asset/?id=6031265972";
		["gavel"] = "http://www.roblox.com/asset/?id=6023565902";
		["table_view"] = "http://www.roblox.com/asset/?id=6031233835";
		["home"] = "http://www.roblox.com/asset/?id=6026568195";
		["list"] = "http://www.roblox.com/asset/?id=6026568229";
		["alarm_add"] = "http://www.roblox.com/asset/?id=6023426898";
		["speaker_notes"] = "http://www.roblox.com/asset/?id=6031266001";
		["check_circle_outline"] = "http://www.roblox.com/asset/?id=6023426909";
		["extension"] = "http://www.roblox.com/asset/?id=6023565892";
		["pending"] = "http://www.roblox.com/asset/?id=6031084745";
		["pageview"] = "http://www.roblox.com/asset/?id=6031216007";
		["group_work"] = "http://www.roblox.com/asset/?id=6023565910";
		["zoom_in"] = "http://www.roblox.com/asset/?id=6031075573";
		["aspect_ratio"] = "http://www.roblox.com/asset/?id=6022668895";
		["code"] = "http://www.roblox.com/asset/?id=6022668955";
		["3d_rotation"] = "http://www.roblox.com/asset/?id=6022668893";
		["translate"] = "http://www.roblox.com/asset/?id=6031225812";
		["star_rate"] = "http://www.roblox.com/asset/?id=6031265978";
		["system_update_alt"] = "http://www.roblox.com/asset/?id=6031251515";
		["open_with"] = "http://www.roblox.com/asset/?id=6026568265";
		["build_circle"] = "http://www.roblox.com/asset/?id=6023426952";
		["toc"] = "http://www.roblox.com/asset/?id=6031229341";
		["settings_phone"] = "http://www.roblox.com/asset/?id=6031289445";
		["open_in_full"] = "http://www.roblox.com/asset/?id=6026568245";
		["history"] = "http://www.roblox.com/asset/?id=6026568197";
		["accessibility_new"] = "http://www.roblox.com/asset/?id=6022668945";
		["hourglass_disabled"] = "http://www.roblox.com/asset/?id=6026568193";
		["line_style"] = "http://www.roblox.com/asset/?id=6026568276";
		["account_circle"] = "http://www.roblox.com/asset/?id=6022668898";
		["settings_cell"] = "http://www.roblox.com/asset/?id=6031280890";
		["search_off"] = "http://www.roblox.com/asset/?id=6031260783";
		["shop"] = "http://www.roblox.com/asset/?id=6031265983";
		["anchor"] = "http://www.roblox.com/asset/?id=6023426906";
		["language"] = "http://www.roblox.com/asset/?id=6026568213";
		["settings_brightness"] = "http://www.roblox.com/asset/?id=6031280902";
		["restore_page"] = "http://www.roblox.com/asset/?id=6031154877";
		["chrome_reader_mode"] = "http://www.roblox.com/asset/?id=6023426912";
		["sync_alt"] = "http://www.roblox.com/asset/?id=6031233840";
		["book"] = "http://www.roblox.com/asset/?id=6022860343";
		["smart_button"] = "http://www.roblox.com/asset/?id=6031265962";
		["request_page"] = "http://www.roblox.com/asset/?id=6031154873";
		["lock_clock"] = "http://www.roblox.com/asset/?id=6026568260";
		["android"] = "http://www.roblox.com/asset/?id=6022668966";
		["outgoing_mail"] = "http://www.roblox.com/asset/?id=6026568242";
		["dynamic_form"] = "http://www.roblox.com/asset/?id=6023426970";
		["track_changes"] = "http://www.roblox.com/asset/?id=6031225814";
		["source"] = "http://www.roblox.com/asset/?id=6031289451";
		["thumb_down"] = "http://www.roblox.com/asset/?id=6031229336";
		["integration_instructions"] = "http://www.roblox.com/asset/?id=6026568214";
		["opacity"] = "http://www.roblox.com/asset/?id=6026568295";
		["perm_identity"] = "http://www.roblox.com/asset/?id=6031215978";
		["view_module"] = "http://www.roblox.com/asset/?id=6031079152";
		["perm_data_setting"] = "http://www.roblox.com/asset/?id=6031215991";
		["assignment_turned_in"] = "http://www.roblox.com/asset/?id=6023426904";
		["change_history"] = "http://www.roblox.com/asset/?id=6023426914";
		["thumb_down_off_alt"] = "http://www.roblox.com/asset/?id=6031229354";
		["text_rotation_angledown"] = "http://www.roblox.com/asset/?id=6031251513";
		["bookmark"] = "http://www.roblox.com/asset/?id=6022852108";
		["view_stream"] = "http://www.roblox.com/asset/?id=6031079164";
		["remove_done"] = "http://www.roblox.com/asset/?id=6031086169";
		["markunread_mailbox"] = "http://www.roblox.com/asset/?id=6031082531";
		["store"] = "http://www.roblox.com/asset/?id=6031265968";
		["text_rotation_angleup"] = "http://www.roblox.com/asset/?id=6031229337";
		["eco"] = "http://www.roblox.com/asset/?id=6023426988";
		["find_in_page"] = "http://www.roblox.com/asset/?id=6023426986";
		["api"] = "http://www.roblox.com/asset/?id=6022668911";
		["launch"] = "http://www.roblox.com/asset/?id=6026568211";
		["text_rotation_down"] = "http://www.roblox.com/asset/?id=6031229334";
		["flip_to_back"] = "http://www.roblox.com/asset/?id=6023565896";
		["contact_page"] = "http://www.roblox.com/asset/?id=6022668881";
		["preview"] = "http://www.roblox.com/asset/?id=6031260793";
		["restore"] = "http://www.roblox.com/asset/?id=6031260800";
		["favorite_border"] = "http://www.roblox.com/asset/?id=6023565882";
		["assignment_late"] = "http://www.roblox.com/asset/?id=6022668880";
		["youtube_searched_for"] = "http://www.roblox.com/asset/?id=6031075934";
		["hourglass_full"] = "http://www.roblox.com/asset/?id=6026568190";
		["timeline"] = "http://www.roblox.com/asset/?id=6031229350";
		["turned_in"] = "http://www.roblox.com/asset/?id=6031225808";
		["info"] = "http://www.roblox.com/asset/?id=6026568227";
		["restore_from_trash"] = "http://www.roblox.com/asset/?id=6031154869";
		["arrow_circle_down"] = "http://www.roblox.com/asset/?id=6022668877";
		["flaky"] = "http://www.roblox.com/asset/?id=6031082523";
		["alarm_on"] = "http://www.roblox.com/asset/?id=6023426920";
		["swap_vertical_circle"] = "http://www.roblox.com/asset/?id=6031233839";
		["open_in_new"] = "http://www.roblox.com/asset/?id=6026568256";
		["watch_later"] = "http://www.roblox.com/asset/?id=6031075924";
		["alarm_off"] = "http://www.roblox.com/asset/?id=6023426901";
		["maximize"] = "http://www.roblox.com/asset/?id=6026568267";
		["lock_outline"] = "http://www.roblox.com/asset/?id=6031082533";
		["outbond"] = "http://www.roblox.com/asset/?id=6026568244";
		["view_carousel"] = "http://www.roblox.com/asset/?id=6031251507";
		["published_with_changes"] = "http://www.roblox.com/asset/?id=6031243328";
		["verified_user"] = "http://www.roblox.com/asset/?id=6031225819";
		["drag_indicator"] = "http://www.roblox.com/asset/?id=6023426962";
		["lightbulb_outline"] = "http://www.roblox.com/asset/?id=6026568254";
		["segment"] = "http://www.roblox.com/asset/?id=6031260773";
		["assignment"] = "http://www.roblox.com/asset/?id=6022668882";
		["work_outline"] = "http://www.roblox.com/asset/?id=6031075930";
		["line_weight"] = "http://www.roblox.com/asset/?id=6026568226";
		["dangerous"] = "http://www.roblox.com/asset/?id=6022668916";
		["assessment"] = "http://www.roblox.com/asset/?id=6022668897";
		["view_day"] = "http://www.roblox.com/asset/?id=6031079153";
		["help_center"] = "http://www.roblox.com/asset/?id=6026568192";
		["logout"] = "http://www.roblox.com/asset/?id=6031082522";
		["event"] = "http://www.roblox.com/asset/?id=6023426959";
		["get_app"] = "http://www.roblox.com/asset/?id=6023565889";
		["tab"] = "http://www.roblox.com/asset/?id=6031233851";
		["label"] = "http://www.roblox.com/asset/?id=6031082525";
		["g_translate"] = "http://www.roblox.com/asset/?id=6031082526";
		["view_week"] = "http://www.roblox.com/asset/?id=6031079154";
		["view_in_ar"] = "http://www.roblox.com/asset/?id=6031079158";
		["card_travel"] = "http://www.roblox.com/asset/?id=6023426925";
		["lock_open"] = "http://www.roblox.com/asset/?id=6026568220";
		["voice_over_off"] = "http://www.roblox.com/asset/?id=6031075927";
		["app_blocking"] = "http://www.roblox.com/asset/?id=6022668952";
		["settings_ethernet"] = "http://www.roblox.com/asset/?id=6031280883";
		["supervised_user_circle"] = "http://www.roblox.com/asset/?id=6031289449";
		["done_all"] = "http://www.roblox.com/asset/?id=6023426929";
		["lightbulb"] = "http://www.roblox.com/asset/?id=6026568247";
		["find_replace"] = "http://www.roblox.com/asset/?id=6023426979";
		["bookmarks"] = "http://www.roblox.com/asset/?id=6023426924";
		["today"] = "http://www.roblox.com/asset/?id=6031229352";
		["class"] = "http://www.roblox.com/asset/?id=6022668949";
		["supervisor_account"] = "http://www.roblox.com/asset/?id=6031251516";
		["support"] = "http://www.roblox.com/asset/?id=6031251532";
		["done_outline"] = "http://www.roblox.com/asset/?id=6023426936";
		["reorder"] = "http://www.roblox.com/asset/?id=6031154868";
		["fact_check"] = "http://www.roblox.com/asset/?id=6023426951";
		["thumb_up"] = "http://www.roblox.com/asset/?id=6031229347";
		["assignment_returned"] = "http://www.roblox.com/asset/?id=6023426899";
		["card_giftcard"] = "http://www.roblox.com/asset/?id=6023426978";
		["trending_down"] = "http://www.roblox.com/asset/?id=6031225811";
		["settings_backup_restore"] = "http://www.roblox.com/asset/?id=6031280886";
		["settings_voice"] = "http://www.roblox.com/asset/?id=6031265966";
		["dns"] = "http://www.roblox.com/asset/?id=6023426958";
		["perm_scan_wifi"] = "http://www.roblox.com/asset/?id=6031215985";
		["plagiarism"] = "http://www.roblox.com/asset/?id=6031243320";
		["commute"] = "http://www.roblox.com/asset/?id=6022668901";
		["gif"] = "http://www.roblox.com/asset/?id=6031082540";
		["work"] = "http://www.roblox.com/asset/?id=6031075939";
		["picture_in_picture_alt"] = "http://www.roblox.com/asset/?id=6031215979";
		["query_builder"] = "http://www.roblox.com/asset/?id=6031086183";
		["label_off"] = "http://www.roblox.com/asset/?id=6026568209";
		["all_out"] = "http://www.roblox.com/asset/?id=6022668876";
		["article"] = "http://www.roblox.com/asset/?id=6022668907";
		["shopping_basket"] = "http://www.roblox.com/asset/?id=6031265997";
		["mark_as_unread"] = "http://www.roblox.com/asset/?id=6026568223";
		["work_off"] = "http://www.roblox.com/asset/?id=6031075937";
		["delete_outline"] = "http://www.roblox.com/asset/?id=6022668962";
		["account_box"] = "http://www.roblox.com/asset/?id=6023426915";
		["home_filled"] = "rbxassetid://9080449299";
		["lock"] = "http://www.roblox.com/asset/?id=6026568224";
		["perm_device_information"] = "http://www.roblox.com/asset/?id=6031215996";
		["add_task"] = "http://www.roblox.com/asset/?id=6022668912";
		["text_rotate_up"] = "http://www.roblox.com/asset/?id=6031251526";
		["swipe"] = "http://www.roblox.com/asset/?id=6031233863";
		["eject"] = "http://www.roblox.com/asset/?id=6023426930";
		["mediation"] = "http://www.roblox.com/asset/?id=6026568249";
		["label_important_outline"] = "http://www.roblox.com/asset/?id=6026568199";
		["settings_remote"] = "http://www.roblox.com/asset/?id=6031289442";
		["history_toggle_off"] = "http://www.roblox.com/asset/?id=6026568196";
		["invert_colors"] = "http://www.roblox.com/asset/?id=6026568253";
		["visibility_off"] = "http://www.roblox.com/asset/?id=6031075929";
		["addchart"] = "http://www.roblox.com/asset/?id=6023426905";
		["cancel_schedule_send"] = "http://www.roblox.com/asset/?id=6022668963";
		["loyalty"] = "http://www.roblox.com/asset/?id=6026568237";
		["speaker_notes_off"] = "http://www.roblox.com/asset/?id=6031265965";
		["online_prediction"] = "http://www.roblox.com/asset/?id=6026568239";
		["remove_shopping_cart"] = "http://www.roblox.com/asset/?id=6031260778";
		["text_rotate_vertical"] = "http://www.roblox.com/asset/?id=6031251518";
		["visibility"] = "http://www.roblox.com/asset/?id=6031075931";
		["add_to_drive"] = "http://www.roblox.com/asset/?id=6022860335";
		["accessible"] = "http://www.roblox.com/asset/?id=6022668902";
		["bookmark_border"] = "http://www.roblox.com/asset/?id=6022860339";
		["tour"] = "http://www.roblox.com/asset/?id=6031229362";
		["compare_arrows"] = "http://www.roblox.com/asset/?id=6022668951";
		["view_sidebar"] = "http://www.roblox.com/asset/?id=6031079160";
		["face"] = "http://www.roblox.com/asset/?id=6023426944";
		["wysiwyg"] = "http://www.roblox.com/asset/?id=6031075938";
		["camera_enhance"] = "http://www.roblox.com/asset/?id=6023426935";
		["perm_camera_mic"] = "http://www.roblox.com/asset/?id=6031215983";
		["model_training"] = "http://www.roblox.com/asset/?id=6026568222";
		["arrow_circle_up"] = "http://www.roblox.com/asset/?id=6022668934";
		["euro_symbol"] = "http://www.roblox.com/asset/?id=6023426954";
		["pending_actions"] = "http://www.roblox.com/asset/?id=6031260777";
		["not_accessible"] = "http://www.roblox.com/asset/?id=6026568269";
		["explore_off"] = "http://www.roblox.com/asset/?id=6023426953";
		["build"] = "http://www.roblox.com/asset/?id=6023426938";
		["backup"] = "http://www.roblox.com/asset/?id=6023426911";
		["settings_input_antenna"] = "http://www.roblox.com/asset/?id=6031280891";
		["disabled_by_default"] = "http://www.roblox.com/asset/?id=6023426939";
		["upgrade"] = "http://www.roblox.com/asset/?id=6031225815";
		["contactless"] = "http://www.roblox.com/asset/?id=6022668886";
		["trending_flat"] = "http://www.roblox.com/asset/?id=6031225818";
		["schedule"] = "http://www.roblox.com/asset/?id=6031260808";
		["offline_pin"] = "http://www.roblox.com/asset/?id=6031084770";
		["date_range"] = "http://www.roblox.com/asset/?id=6022668894";
		["flight_land"] = "http://www.roblox.com/asset/?id=6023565897";
		["view_headline"] = "http://www.roblox.com/asset/?id=6031079151";
		["cached"] = "http://www.roblox.com/asset/?id=6023426921";
		["unpublished"] = "http://www.roblox.com/asset/?id=6031225817";
		["outlet"] = "http://www.roblox.com/asset/?id=6031084748";
		["favorite"] = "http://www.roblox.com/asset/?id=6023426974";
		["vertical_split"] = "http://www.roblox.com/asset/?id=6031225820";
		["report_problem"] = "http://www.roblox.com/asset/?id=6031086176";
		["fingerprint"] = "http://www.roblox.com/asset/?id=6023565895";
		["important_devices"] = "http://www.roblox.com/asset/?id=6026568202";
		["outbox"] = "http://www.roblox.com/asset/?id=6026568263";
		["all_inbox"] = "http://www.roblox.com/asset/?id=6022668909";
		["label_important"] = "http://www.roblox.com/asset/?id=6026568215";
		["print"] = "http://www.roblox.com/asset/?id=6031243324";
		["settings_bluetooth"] = "http://www.roblox.com/asset/?id=6031280905";
		["power_settings_new"] = "http://www.roblox.com/asset/?id=6031260781";
		["zoom_out"] = "http://www.roblox.com/asset/?id=6031075577";
		["stars"] = "http://www.roblox.com/asset/?id=6031265971";
		["offline_bolt"] = "http://www.roblox.com/asset/?id=6031084742";
		["feedback"] = "http://www.roblox.com/asset/?id=6023426957";
		["accessibility"] = "http://www.roblox.com/asset/?id=6022668887";
		["announcement"] = "http://www.roblox.com/asset/?id=6022668946";
		["settings_input_hdmi"] = "http://www.roblox.com/asset/?id=6031280970";
		["leaderboard"] = "http://www.roblox.com/asset/?id=6026568216";
		["view_quilt"] = "http://www.roblox.com/asset/?id=6031079155";
		["note_add"] = "http://www.roblox.com/asset/?id=6031084749";
		["theaters"] = "http://www.roblox.com/asset/?id=6031229335";
		["alarm"] = "http://www.roblox.com/asset/?id=6023426910";
		["settings_input_composite"] = "http://www.roblox.com/asset/?id=6031280896";
		["grade"] = "http://www.roblox.com/asset/?id=6026568189";
		["tab_unselected"] = "http://www.roblox.com/asset/?id=6031251505";
		["swap_vert"] = "http://www.roblox.com/asset/?id=6031233847";
		["assignment_return"] = "http://www.roblox.com/asset/?id=6023426931";
		["highlight_alt"] = "http://www.roblox.com/asset/?id=6023565913";
		["shopping_bag"] = "http://www.roblox.com/asset/?id=6031265970";
		["contact_support"] = "http://www.roblox.com/asset/?id=6022668879";
		["flip_to_front"] = "http://www.roblox.com/asset/?id=6023565894";
		["touch_app"] = "http://www.roblox.com/asset/?id=6031229361";
		["room"] = "http://www.roblox.com/asset/?id=6031154875";
		["send_and_archive"] = "http://www.roblox.com/asset/?id=6031280889";
		["view_array"] = "http://www.roblox.com/asset/?id=6031225842";
		["settings_power"] = "http://www.roblox.com/asset/?id=6031289446";
		["admin_panel_settings"] = "http://www.roblox.com/asset/?id=6022668961";
		["open_in_browser"] = "http://www.roblox.com/asset/?id=6026568266";
		["card_membership"] = "http://www.roblox.com/asset/?id=6023426942";
		["rule"] = "http://www.roblox.com/asset/?id=6031154859";
		["schedule_send"] = "http://www.roblox.com/asset/?id=6031154866";
		["calendar_today"] = "http://www.roblox.com/asset/?id=6022668917";
		["info_outline"] = "http://www.roblox.com/asset/?id=6026568210";
		["description"] = "http://www.roblox.com/asset/?id=6022668888";
		["dashboard_customize"] = "http://www.roblox.com/asset/?id=6022668899";
		["rowing"] = "http://www.roblox.com/asset/?id=6031154857";
		["swap_horizontal_circle"] = "http://www.roblox.com/asset/?id=6031233833";
		["account_balance_wallet"] = "http://www.roblox.com/asset/?id=6022668892";
		["view_agenda"] = "http://www.roblox.com/asset/?id=6031225831";
		["shop_two"] = "http://www.roblox.com/asset/?id=6031289461";
		["done"] = "http://www.roblox.com/asset/?id=6023426926";
		["circle_notifications"] = "http://www.roblox.com/asset/?id=6023426923";
		["compress"] = "http://www.roblox.com/asset/?id=6022668878";
		["calendar_view_day"] = "http://www.roblox.com/asset/?id=6023426946";
		["thumbs_up_down"] = "http://www.roblox.com/asset/?id=6031229373";
		["account_balance"] = "http://www.roblox.com/asset/?id=6022668900";
		["play_for_work"] = "http://www.roblox.com/asset/?id=6031260776";
		["pets"] = "http://www.roblox.com/asset/?id=6031260782";
		["view_column"] = "http://www.roblox.com/asset/?id=6031079172";
		["search"] = "http://www.roblox.com/asset/?id=6031154871";
		["autorenew"] = "http://www.roblox.com/asset/?id=6023565901";
		["copyright"] = "http://www.roblox.com/asset/?id=6023565898";
		["privacy_tip"] = "http://www.roblox.com/asset/?id=6031260784";
		["arrow_right_alt"] = "http://www.roblox.com/asset/?id=6022668890";
		["delete"] = "http://www.roblox.com/asset/?id=6022668885";
		["nightlight_round"] = "http://www.roblox.com/asset/?id=6031084743";
		["batch_prediction"] = "http://www.roblox.com/asset/?id=6022860334";
		["shopping_cart"] = "http://www.roblox.com/asset/?id=6031265976";
		["login"] = "http://www.roblox.com/asset/?id=6031082527";
		["settings_input_svideo"] = "http://www.roblox.com/asset/?id=6031289444";
		["payment"] = "http://www.roblox.com/asset/?id=6031084751";
		["update"] = "http://www.roblox.com/asset/?id=6031225810";
		["text_rotation_none"] = "http://www.roblox.com/asset/?id=6031229344";
		["perm_contact_calendar"] = "http://www.roblox.com/asset/?id=6031215990";
		["explore"] = "http://www.roblox.com/asset/?id=6023426941";
		["delete_forever"] = "http://www.roblox.com/asset/?id=6022668939";
		["rounded_corner"] = "http://www.roblox.com/asset/?id=6031154861";
		["book_online"] = "http://www.roblox.com/asset/?id=6022860332";
		["quickreply"] = "http://www.roblox.com/asset/?id=6031243319";
		["bug_report"] = "http://www.roblox.com/asset/?id=6022852107";
		["subtitles_off"] = "http://www.roblox.com/asset/?id=6031289466";
		["close_fullscreen"] = "http://www.roblox.com/asset/?id=6023426928";
		["horizontal_split"] = "http://www.roblox.com/asset/?id=6026568194";
		["minimize"] = "http://www.roblox.com/asset/?id=6026568240";
		["filter_list_alt"] = "http://www.roblox.com/asset/?id=6023426955";
		["add_shopping_cart"] = "http://www.roblox.com/asset/?id=6022668875";
		["next_plan"] = "http://www.roblox.com/asset/?id=6026568231";
		["view_list"] = "http://www.roblox.com/asset/?id=6031079156";
		["receipt"] = "http://www.roblox.com/asset/?id=6031086173";
		["polymer"] = "http://www.roblox.com/asset/?id=6031260785";
		["spellcheck"] = "http://www.roblox.com/asset/?id=6031289450";
		["wifi_protected_setup"] = "http://www.roblox.com/asset/?id=6031075926";
		["label_outline"] = "http://www.roblox.com/asset/?id=6026568207";
		["highlight_off"] = "http://www.roblox.com/asset/?id=6023565916";
		["turned_in_not"] = "http://www.roblox.com/asset/?id=6031225806";
		["edit_off"] = "http://www.roblox.com/asset/?id=6023426983";
		["question_answer"] = "http://www.roblox.com/asset/?id=6031086172";
		["settings_overscan"] = "http://www.roblox.com/asset/?id=6031289459";
		["trending_up"] = "http://www.roblox.com/asset/?id=6031225816";
		["verified"] = "http://www.roblox.com/asset/?id=6031225809";
		["flight_takeoff"] = "http://www.roblox.com/asset/?id=6023565891";
		["grading"] = "http://www.roblox.com/asset/?id=6026568191";
		["dashboard"] = "http://www.roblox.com/asset/?id=6022668883";
		["expand"] = "http://www.roblox.com/asset/?id=6022668891";
		["backup_table"] = "http://www.roblox.com/asset/?id=6022860338";
		["analytics"] = "http://www.roblox.com/asset/?id=6022668884";
		["picture_in_picture"] = "http://www.roblox.com/asset/?id=6031215994";
		["settings"] = "http://www.roblox.com/asset/?id=6031280882";
		["accessible_forward"] = "http://www.roblox.com/asset/?id=6022668906";
		["pan_tool"] = "http://www.roblox.com/asset/?id=6031084771";
		["https"] = "http://www.roblox.com/asset/?id=6026568200";
		["filter_alt"] = "http://www.roblox.com/asset/?id=6023426984";
		["thumb_up_off_alt"] = "http://www.roblox.com/asset/?id=6031229342";
		["record_voice_over"] = "http://www.roblox.com/asset/?id=6031243318";
		["help_outline"] = "http://www.roblox.com/asset/?id=6026568201";
		["check_circle"] = "http://www.roblox.com/asset/?id=6023426945";
		["comment_bank"] = "http://www.roblox.com/asset/?id=6023426937";
		["perm_phone_msg"] = "http://www.roblox.com/asset/?id=6031215986";
		["settings_applications"] = "http://www.roblox.com/asset/?id=6031280894";
		["exit_to_app"] = "http://www.roblox.com/asset/?id=6023426922";
		["saved_search"] = "http://www.roblox.com/asset/?id=6031154867";
		["toll"] = "http://www.roblox.com/asset/?id=6031229343";
		["not_started"] = "http://www.roblox.com/asset/?id=6026568232";
		["subject"] = "http://www.roblox.com/asset/?id=6031289452";
		["redeem"] = "http://www.roblox.com/asset/?id=6031086170";
		["input"] = "http://www.roblox.com/asset/?id=6026568225";
		["settings_input_component"] = "http://www.roblox.com/asset/?id=6031280884";
		["assignment_ind"] = "http://www.roblox.com/asset/?id=6022668935";
		["swap_horiz"] = "http://www.roblox.com/asset/?id=6031233841";
		["fullscreen"] = "http://www.roblox.com/asset/?id=6031094681";
		["cancel"] = "http://www.roblox.com/asset/?id=6031094677";
		["subdirectory_arrow_left"] = "http://www.roblox.com/asset/?id=6031104654";
		["close"] = "http://www.roblox.com/asset/?id=6031094678";
		["arrow_back_ios"] = "http://www.roblox.com/asset/?id=6031091003";
		["east"] = "http://www.roblox.com/asset/?id=6031094675";
		["unfold_more"] = "http://www.roblox.com/asset/?id=6031104644";
		["south"] = "http://www.roblox.com/asset/?id=6031104646";
		["arrow_drop_up"] = "http://www.roblox.com/asset/?id=6031090990";
		["arrow_back"] = "http://www.roblox.com/asset/?id=6031091000";
		["arrow_downward"] = "http://www.roblox.com/asset/?id=6031090991";
		["west"] = "http://www.roblox.com/asset/?id=6031104677";
		["legend_toggle"] = "http://www.roblox.com/asset/?id=6031097233";
		["fullscreen_exit"] = "http://www.roblox.com/asset/?id=6031094691";
		["last_page"] = "http://www.roblox.com/asset/?id=6031094686";
		["switch_right"] = "http://www.roblox.com/asset/?id=6031104649";
		["check"] = "http://www.roblox.com/asset/?id=6031094667";
		["home_work"] = "http://www.roblox.com/asset/?id=6031094683";
		["north_east"] = "http://www.roblox.com/asset/?id=6031097228";
		["double_arrow"] = "http://www.roblox.com/asset/?id=6031094674";
		["more_vert"] = "http://www.roblox.com/asset/?id=6031104648";
		["chevron_left"] = "http://www.roblox.com/asset/?id=6031094670";
		["more_horiz"] = "http://www.roblox.com/asset/?id=6031104650";
		["unfold_less"] = "http://www.roblox.com/asset/?id=6031104681";
		["first_page"] = "http://www.roblox.com/asset/?id=6031094682";
		["payments"] = "http://www.roblox.com/asset/?id=6031097227";
		["arrow_right"] = "http://www.roblox.com/asset/?id=6031090994";
		["offline_share"] = "http://www.roblox.com/asset/?id=6031097267";
		["south_west"] = "http://www.roblox.com/asset/?id=6031104652";
		["expand_less"] = "http://www.roblox.com/asset/?id=6031094679";
		["south_east"] = "http://www.roblox.com/asset/?id=6031104642";
		["assistant_navigation"] = "http://www.roblox.com/asset/?id=6031091006";
		["apps"] = "http://www.roblox.com/asset/?id=6031090999";
		["arrow_upward"] = "http://www.roblox.com/asset/?id=6031090997";
		["app_settings_alt"] = "http://www.roblox.com/asset/?id=6031090998";
		["subdirectory_arrow_right"] = "http://www.roblox.com/asset/?id=6031104647";
		["north_west"] = "http://www.roblox.com/asset/?id=6031104630";
		["switch_left"] = "http://www.roblox.com/asset/?id=6031104651";
		["chevron_right"] = "http://www.roblox.com/asset/?id=6031094680";
		["arrow_forward"] = "http://www.roblox.com/asset/?id=6031090995";
		["arrow_forward_ios"] = "http://www.roblox.com/asset/?id=6031091008";
		["arrow_drop_down"] = "http://www.roblox.com/asset/?id=6031091004";
		["refresh"] = "http://www.roblox.com/asset/?id=6031097226";
		["pivot_table_chart"] = "http://www.roblox.com/asset/?id=6031097234";
		["expand_more"] = "http://www.roblox.com/asset/?id=6031094687";
		["campaign"] = "http://www.roblox.com/asset/?id=6031094666";
		["arrow_left"] = "http://www.roblox.com/asset/?id=6031091002";
		["arrow_drop_down_circle"] = "http://www.roblox.com/asset/?id=6031091001";
		["menu_open"] = "http://www.roblox.com/asset/?id=6031097229";
		["waterfall_chart"] = "http://www.roblox.com/asset/?id=6031104632";
		["assistant_direction"] = "http://www.roblox.com/asset/?id=6031091005";
		["menu"] = "http://www.roblox.com/asset/?id=6031097225";
		["personal_video"] = "http://www.roblox.com/asset/?id=6034457070";
		["power_off"] = "http://www.roblox.com/asset/?id=6034457087";
		["wifi_off"] = "http://www.roblox.com/asset/?id=6034461625";
		["adb"] = "http://www.roblox.com/asset/?id=6034418515";
		["airline_seat_recline_normal"] = "http://www.roblox.com/asset/?id=6034418512";
		["sync_problem"] = "http://www.roblox.com/asset/?id=6034452653";
		["network_check"] = "http://www.roblox.com/asset/?id=6034461631";
		["event_busy"] = "http://www.roblox.com/asset/?id=6034439634";
		["airline_seat_flat"] = "http://www.roblox.com/asset/?id=6034418511";
		["disc_full"] = "http://www.roblox.com/asset/?id=6034418518";
		["sd_card"] = "http://www.roblox.com/asset/?id=6034457089";
		["time_to_leave"] = "http://www.roblox.com/asset/?id=6034452660";
		["phone_bluetooth_speaker"] = "http://www.roblox.com/asset/?id=6034457057";
		["phone_paused"] = "http://www.roblox.com/asset/?id=6034457066";
		["phone_locked"] = "http://www.roblox.com/asset/?id=6034457058";
		["more"] = "http://www.roblox.com/asset/?id=6034461627";
		["add_call"] = "http://www.roblox.com/asset/?id=6034418524";
		["account_tree"] = "http://www.roblox.com/asset/?id=6034418507";
		["do_not_disturb_on"] = "http://www.roblox.com/asset/?id=6034439649";
		["event_note"] = "http://www.roblox.com/asset/?id=6034439637";
		["sync_disabled"] = "http://www.roblox.com/asset/?id=6034452649";
		["mms"] = "http://www.roblox.com/asset/?id=6034461621";
		["airline_seat_flat_angled"] = "http://www.roblox.com/asset/?id=6034418513";
		["bluetooth_audio"] = "http://www.roblox.com/asset/?id=6034418522";
		["vibration"] = "http://www.roblox.com/asset/?id=6034452651";
		["system_update"] = "http://www.roblox.com/asset/?id=6034452663";
		["enhanced_encryption"] = "http://www.roblox.com/asset/?id=6034439652";
		["wc"] = "http://www.roblox.com/asset/?id=6034452643";
		["live_tv"] = "http://www.roblox.com/asset/?id=6034439648";
		["folder_special"] = "http://www.roblox.com/asset/?id=6034439639";
		["phone_missed"] = "http://www.roblox.com/asset/?id=6034457056";
		["airline_seat_recline_extra"] = "http://www.roblox.com/asset/?id=6034418528";
		["sms"] = "http://www.roblox.com/asset/?id=6034452645";
		["tap_and_play"] = "http://www.roblox.com/asset/?id=6034452650";
		["confirmation_number"] = "http://www.roblox.com/asset/?id=6034418519";
		["event_available"] = "http://www.roblox.com/asset/?id=6034439643";
		["sms_failed"] = "http://www.roblox.com/asset/?id=6034452676";
		["do_not_disturb_alt"] = "http://www.roblox.com/asset/?id=6034461619";
		["do_not_disturb"] = "http://www.roblox.com/asset/?id=6034439645";
		["ondemand_video"] = "http://www.roblox.com/asset/?id=6034457065";
		["no_encryption"] = "http://www.roblox.com/asset/?id=6034457059";
		["airline_seat_legroom_extra"] = "http://www.roblox.com/asset/?id=6034418508";
		["tv_off"] = "http://www.roblox.com/asset/?id=6034452646";
		["sim_card_alert"] = "http://www.roblox.com/asset/?id=6034452641";
		["airline_seat_legroom_normal"] = "http://www.roblox.com/asset/?id=6034418532";
		["wifi"] = "http://www.roblox.com/asset/?id=6034461626";
		["do_not_disturb_off"] = "http://www.roblox.com/asset/?id=6034439642";
		["imagesearch_roller"] = "http://www.roblox.com/asset/?id=6034439635";
		["power"] = "http://www.roblox.com/asset/?id=6034457105";
		["airline_seat_legroom_reduced"] = "http://www.roblox.com/asset/?id=6034418520";
		["phone_in_talk"] = "http://www.roblox.com/asset/?id=6034457067";
		["airline_seat_individual_suite"] = "http://www.roblox.com/asset/?id=6034418514";
		["priority_high"] = "http://www.roblox.com/asset/?id=6034457092";
		["phone_callback"] = "http://www.roblox.com/asset/?id=6034457104";
		["phone_forwarded"] = "http://www.roblox.com/asset/?id=6034457106";
		["sync"] = "http://www.roblox.com/asset/?id=6034452662";
		["vpn_lock"] = "http://www.roblox.com/asset/?id=6034452648";
		["support_agent"] = "http://www.roblox.com/asset/?id=6034452656";
		["network_locked"] = "http://www.roblox.com/asset/?id=6034457064";
		["directions_off"] = "http://www.roblox.com/asset/?id=6034418517";
		["drive_eta"] = "http://www.roblox.com/asset/?id=6034464371";
		["sensor_window"] = "http://www.roblox.com/asset/?id=6031067242";
		["sensor_door"] = "http://www.roblox.com/asset/?id=6031067241";
		["keyboard_return"] = "http://www.roblox.com/asset/?id=6034818370";
		["monitor"] = "http://www.roblox.com/asset/?id=6034837803";
		["device_hub"] = "http://www.roblox.com/asset/?id=6034789877";
		["keyboard"] = "http://www.roblox.com/asset/?id=6034818398";
		["keyboard_voice"] = "http://www.roblox.com/asset/?id=6034818360";
		["cast"] = "http://www.roblox.com/asset/?id=6034789876";
		["developer_board"] = "http://www.roblox.com/asset/?id=6034789883";
		["tablet"] = "http://www.roblox.com/asset/?id=6034848733";
		["keyboard_hide"] = "http://www.roblox.com/asset/?id=6034818386";
		["dock"] = "http://www.roblox.com/asset/?id=6034789888";
		["phonelink"] = "http://www.roblox.com/asset/?id=6034837801";
		["device_unknown"] = "http://www.roblox.com/asset/?id=6034789884";
		["speaker_group"] = "http://www.roblox.com/asset/?id=6034848732";
		["desktop_mac"] = "http://www.roblox.com/asset/?id=6034789898";
		["point_of_sale"] = "http://www.roblox.com/asset/?id=6034837798";
		["memory"] = "http://www.roblox.com/asset/?id=6034837807";
		["keyboard_tab"] = "http://www.roblox.com/asset/?id=6034818363";
		["router"] = "http://www.roblox.com/asset/?id=6034837806";
		["sim_card"] = "http://www.roblox.com/asset/?id=6034837800";
		["headset"] = "http://www.roblox.com/asset/?id=6034789880";
		["gamepad"] = "http://www.roblox.com/asset/?id=6034789879";
		["speaker"] = "http://www.roblox.com/asset/?id=6034848746";
		["devices_other"] = "http://www.roblox.com/asset/?id=6034789873";
		["laptop"] = "http://www.roblox.com/asset/?id=6034818367";
		["scanner"] = "http://www.roblox.com/asset/?id=6034837799";
		["tv"] = "http://www.roblox.com/asset/?id=6034848740";
		["headset_mic"] = "http://www.roblox.com/asset/?id=6034818383";
		["browser_not_supported"] = "http://www.roblox.com/asset/?id=6034789875";
		["computer"] = "http://www.roblox.com/asset/?id=6034789874";
		["connected_tv"] = "http://www.roblox.com/asset/?id=6034789870";
		["phonelink_off"] = "http://www.roblox.com/asset/?id=6034837804";
		["headset_off"] = "http://www.roblox.com/asset/?id=6034818402";
		["cast_connected"] = "http://www.roblox.com/asset/?id=6034789895";
		["watch"] = "http://www.roblox.com/asset/?id=6034848747";
		["keyboard_arrow_up"] = "http://www.roblox.com/asset/?id=6034818379";
		["keyboard_backspace"] = "http://www.roblox.com/asset/?id=6034818381";
		["laptop_chromebook"] = "http://www.roblox.com/asset/?id=6034818364";
		["phone_iphone"] = "http://www.roblox.com/asset/?id=6034837811";
		["smartphone"] = "http://www.roblox.com/asset/?id=6034848731";
		["power_input"] = "http://www.roblox.com/asset/?id=6034837794";
		["videogame_asset"] = "http://www.roblox.com/asset/?id=6034848748";
		["desktop_windows"] = "http://www.roblox.com/asset/?id=6034789893";
		["keyboard_arrow_down"] = "http://www.roblox.com/asset/?id=6034818372";
		["laptop_mac"] = "http://www.roblox.com/asset/?id=6034837808";
		["laptop_windows"] = "http://www.roblox.com/asset/?id=6034837796";
		["keyboard_arrow_right"] = "http://www.roblox.com/asset/?id=6034818365";
		["cast_for_education"] = "http://www.roblox.com/asset/?id=6034789872";
		["keyboard_capslock"] = "http://www.roblox.com/asset/?id=6034818403";
		["toys"] = "http://www.roblox.com/asset/?id=6034848752";
		["tablet_android"] = "http://www.roblox.com/asset/?id=6034848734";
		["mouse"] = "http://www.roblox.com/asset/?id=6034837797";
		["phone_android"] = "http://www.roblox.com/asset/?id=6034837793";
		["keyboard_arrow_left"] = "http://www.roblox.com/asset/?id=6034818375";
		["security"] = "http://www.roblox.com/asset/?id=6034837802";
		["dry_cleaning"] = "http://www.roblox.com/asset/?id=6034754456";
		["bakery_dining"] = "http://www.roblox.com/asset/?id=6034767610";
		["place"] = "http://www.roblox.com/asset/?id=6034503372";
		["run_circle"] = "http://www.roblox.com/asset/?id=6034503367";
		["local_post_office"] = "http://www.roblox.com/asset/?id=6034513883";
		["takeout_dining"] = "http://www.roblox.com/asset/?id=6034467808";
		["nightlife"] = "http://www.roblox.com/asset/?id=6034510003";
		["design_services"] = "http://www.roblox.com/asset/?id=6034754453";
		["celebration"] = "http://www.roblox.com/asset/?id=6034767613";
		["near_me_disabled"] = "http://www.roblox.com/asset/?id=6034509988";
		["add_location_alt"] = "http://www.roblox.com/asset/?id=6034483678";
		["directions_run"] = "http://www.roblox.com/asset/?id=6034754445";
		["local_fire_department"] = "http://www.roblox.com/asset/?id=6034684949";
		["add_road"] = "http://www.roblox.com/asset/?id=6034483677";
		["my_location"] = "http://www.roblox.com/asset/?id=6034509987";
		["dinner_dining"] = "http://www.roblox.com/asset/?id=6034754457";
		["local_airport"] = "http://www.roblox.com/asset/?id=6034687951";
		["zoom_out_map"] = "http://www.roblox.com/asset/?id=6035229856";
		["pin_drop"] = "http://www.roblox.com/asset/?id=6034470807";
		["subway"] = "http://www.roblox.com/asset/?id=6034467790";
		["electric_moped"] = "http://www.roblox.com/asset/?id=6034744027";
		["restaurant_menu"] = "http://www.roblox.com/asset/?id=6034503378";
		["local_gas_station"] = "http://www.roblox.com/asset/?id=6034684935";
		["local_cafe"] = "http://www.roblox.com/asset/?id=6034687954";
		["theater_comedy"] = "http://www.roblox.com/asset/?id=6034467796";
		["directions_bus"] = "http://www.roblox.com/asset/?id=6034754434";
		["hail"] = "http://www.roblox.com/asset/?id=6034744033";
		["satellite"] = "http://www.roblox.com/asset/?id=6034503370";
		["local_phone"] = "http://www.roblox.com/asset/?id=6034513884";
		["electric_bike"] = "http://www.roblox.com/asset/?id=6034744032";
		["local_see"] = "http://www.roblox.com/asset/?id=6034513887";
		["transit_enterexit"] = "http://www.roblox.com/asset/?id=6034467805";
		["local_convenience_store"] = "http://www.roblox.com/asset/?id=6034687956";
		["local_offer"] = "http://www.roblox.com/asset/?id=6034513891";
		["electric_car"] = "http://www.roblox.com/asset/?id=6034744029";
		["beenhere"] = "http://www.roblox.com/asset/?id=6034483675";
		["miscellaneous_services"] = "http://www.roblox.com/asset/?id=6034509993";
		["maps_ugc"] = "http://www.roblox.com/asset/?id=6034509992";
		["moped"] = "http://www.roblox.com/asset/?id=6034509999";
		["medical_services"] = "http://www.roblox.com/asset/?id=6034510001";
		["money"] = "http://www.roblox.com/asset/?id=6034509997";
		["transfer_within_a_station"] = "http://www.roblox.com/asset/?id=6034467809";
		["electrical_services"] = "http://www.roblox.com/asset/?id=6034744038";
		["museum"] = "http://www.roblox.com/asset/?id=6034510005";
		["add_location"] = "http://www.roblox.com/asset/?id=6034483672";
		["layers"] = "http://www.roblox.com/asset/?id=6034687957";
		["handyman"] = "http://www.roblox.com/asset/?id=6034744057";
		["local_pharmacy"] = "http://www.roblox.com/asset/?id=6034513903";
		["electric_rickshaw"] = "http://www.roblox.com/asset/?id=6034744043";
		["alt_route"] = "http://www.roblox.com/asset/?id=6034483670";
		["no_transfer"] = "http://www.roblox.com/asset/?id=6034503363";
		["pedal_bike"] = "http://www.roblox.com/asset/?id=6034503374";
		["directions_transit"] = "http://www.roblox.com/asset/?id=6034754436";
		["railway_alert"] = "http://www.roblox.com/asset/?id=6034470823";
		["local_police"] = "http://www.roblox.com/asset/?id=6034513895";
		["directions_car"] = "http://www.roblox.com/asset/?id=6034754441";
		["category"] = "http://www.roblox.com/asset/?id=6034767621";
		["attractions"] = "http://www.roblox.com/asset/?id=6034767620";
		["person_pin_circle"] = "http://www.roblox.com/asset/?id=6034503375";
		["cleaning_services"] = "http://www.roblox.com/asset/?id=6034767619";
		["terrain"] = "http://www.roblox.com/asset/?id=6034467794";
		["no_meals"] = "http://www.roblox.com/asset/?id=6034510024";
		["train"] = "http://www.roblox.com/asset/?id=6034467803";
		["delivery_dining"] = "http://www.roblox.com/asset/?id=6034767644";
		["pest_control"] = "http://www.roblox.com/asset/?id=6034470809";
		["directions"] = "http://www.roblox.com/asset/?id=6034754449";
		["atm"] = "http://www.roblox.com/asset/?id=6034767614";
		["rate_review"] = "http://www.roblox.com/asset/?id=6034503385";
		["local_bar"] = "http://www.roblox.com/asset/?id=6034687950";
		["local_drink"] = "http://www.roblox.com/asset/?id=6034687965";
		["directions_railway"] = "http://www.roblox.com/asset/?id=6034754433";
		["person_pin"] = "http://www.roblox.com/asset/?id=6034503364";
		["ev_station"] = "http://www.roblox.com/asset/?id=6034744037";
		["home_repair_service"] = "http://www.roblox.com/asset/?id=6034744064";
		["bus_alert"] = "http://www.roblox.com/asset/?id=6034767618";
		["agriculture"] = "http://www.roblox.com/asset/?id=6034483674";
		["volunteer_activism"] = "http://www.roblox.com/asset/?id=6034467799";
		["breakfast_dining"] = "http://www.roblox.com/asset/?id=6034483671";
		["layers_clear"] = "http://www.roblox.com/asset/?id=6034687975";
		["plumbing"] = "http://www.roblox.com/asset/?id=6034470800";
		["taxi_alert"] = "http://www.roblox.com/asset/?id=6034467792";
		["add_business"] = "http://www.roblox.com/asset/?id=6034483666";
		["badge"] = "http://www.roblox.com/asset/?id=6034767607";
		["edit_attributes"] = "http://www.roblox.com/asset/?id=6034754443";
		["directions_walk"] = "http://www.roblox.com/asset/?id=6034754448";
		["local_play"] = "http://www.roblox.com/asset/?id=6034513889";
		["bike_scooter"] = "http://www.roblox.com/asset/?id=6034483669";
		["two_wheeler"] = "http://www.roblox.com/asset/?id=6034467795";
		["local_florist"] = "http://www.roblox.com/asset/?id=6034684940";
		["local_hotel"] = "http://www.roblox.com/asset/?id=6034684939";
		["no_meals_ouline"] = "http://www.roblox.com/asset/?id=6034510025";
		["festival"] = "http://www.roblox.com/asset/?id=6034744031";
		["local_shipping"] = "http://www.roblox.com/asset/?id=6034684926";
		["directions_boat"] = "http://www.roblox.com/asset/?id=6034754442";
		["wrong_location"] = "http://www.roblox.com/asset/?id=6034467801";
		["restaurant"] = "http://www.roblox.com/asset/?id=6034503366";
		["directions_subway"] = "http://www.roblox.com/asset/?id=6034754440";
		["not_listed_location"] = "http://www.roblox.com/asset/?id=6034503380";
		["electric_scooter"] = "http://www.roblox.com/asset/?id=6034744041";
		["ramen_dining"] = "http://www.roblox.com/asset/?id=6034503377";
		["edit_road"] = "http://www.roblox.com/asset/?id=6034744035";
		["local_printshop"] = "http://www.roblox.com/asset/?id=6034513897";
		["map"] = "http://www.roblox.com/asset/?id=6034684930";
		["car_rental"] = "http://www.roblox.com/asset/?id=6034767641";
		["multiple_stop"] = "http://www.roblox.com/asset/?id=6034510026";
		["brunch_dining"] = "http://www.roblox.com/asset/?id=6034767611";
		["local_laundry_service"] = "http://www.roblox.com/asset/?id=6034684943";
		["set_meal"] = "http://www.roblox.com/asset/?id=6034503368";
		["local_car_wash"] = "http://www.roblox.com/asset/?id=6034687976";
		["pest_control_rodent"] = "http://www.roblox.com/asset/?id=6034470803";
		["local_pizza"] = "http://www.roblox.com/asset/?id=6034513885";
		["local_grocery_store"] = "http://www.roblox.com/asset/?id=6034684933";
		["traffic"] = "http://www.roblox.com/asset/?id=6034467797";
		["departure_board"] = "http://www.roblox.com/asset/?id=6034767615";
		["icecream"] = "http://www.roblox.com/asset/?id=6034687967";
		["navigation"] = "http://www.roblox.com/asset/?id=6034509984";
		["near_me"] = "http://www.roblox.com/asset/?id=6034509996";
		["fastfood"] = "http://www.roblox.com/asset/?id=6034744034";
		["local_library"] = "http://www.roblox.com/asset/?id=6034684931";
		["local_activity"] = "http://www.roblox.com/asset/?id=6034687955";
		["local_hospital"] = "http://www.roblox.com/asset/?id=6034684956";
		["menu_book"] = "http://www.roblox.com/asset/?id=6034509994";
		["directions_bike"] = "http://www.roblox.com/asset/?id=6034754459";
		["store_mall_directory"] = "http://www.roblox.com/asset/?id=6034470811";
		["trip_origin"] = "http://www.roblox.com/asset/?id=6034467804";
		["tram"] = "http://www.roblox.com/asset/?id=6034467806";
		["edit_location"] = "http://www.roblox.com/asset/?id=6034754439";
		["streetview"] = "http://www.roblox.com/asset/?id=6034470805";
		["hvac"] = "http://www.roblox.com/asset/?id=6034687960";
		["lunch_dining"] = "http://www.roblox.com/asset/?id=6034684928";
		["car_repair"] = "http://www.roblox.com/asset/?id=6034767617";
		["compass_calibration"] = "http://www.roblox.com/asset/?id=6034767623";
		["360"] = "http://www.roblox.com/asset/?id=6034767608";
		["flight"] = "http://www.roblox.com/asset/?id=6034744030";
		["local_mall"] = "http://www.roblox.com/asset/?id=6034684934";
		["hotel"] = "http://www.roblox.com/asset/?id=6034687977";
		["local_parking"] = "http://www.roblox.com/asset/?id=6034513893";
		["hardware"] = "http://www.roblox.com/asset/?id=6034744036";
		["local_dining"] = "http://www.roblox.com/asset/?id=6034687963";
		["park"] = "http://www.roblox.com/asset/?id=6034503369";
		["location_pin"] = "http://www.roblox.com/asset/?id=6034684937";
		["local_movies"] = "http://www.roblox.com/asset/?id=6034684936";
		["local_atm"] = "http://www.roblox.com/asset/?id=6034687953";
		["local_taxi"] = "http://www.roblox.com/asset/?id=6034684927";
		["brightness_low"] = "http://www.roblox.com/asset/?id=6034989542";
		["screen_lock_landscape"] = "http://www.roblox.com/asset/?id=6034996700";
		["graphic_eq"] = "http://www.roblox.com/asset/?id=6034989551";
		["screen_lock_rotation"] = "http://www.roblox.com/asset/?id=6034996710";
		["signal_cellular_4_bar"] = "http://www.roblox.com/asset/?id=6035030076";
		["airplanemode_inactive"] = "http://www.roblox.com/asset/?id=6034983848";
		["signal_wifi_0_bar"] = "http://www.roblox.com/asset/?id=6035030067";
		["battery_full"] = "http://www.roblox.com/asset/?id=6034983854";
		["gps_fixed"] = "http://www.roblox.com/asset/?id=6034989550";
		["brightness_high"] = "http://www.roblox.com/asset/?id=6034989541";
		["ad_units"] = "http://www.roblox.com/asset/?id=6034983845";
		["signal_cellular_alt"] = "http://www.roblox.com/asset/?id=6035030079";
		["bluetooth_connected"] = "http://www.roblox.com/asset/?id=6034983855";
		["wifi_tethering"] = "http://www.roblox.com/asset/?id=6035039430";
		["dvr"] = "http://www.roblox.com/asset/?id=6034989561";
		["screen_search_desktop"] = "http://www.roblox.com/asset/?id=6034996711";
		["network_wifi"] = "http://www.roblox.com/asset/?id=6034996712";
		["access_alarms"] = "http://www.roblox.com/asset/?id=6034983853";
		["nfc"] = "http://www.roblox.com/asset/?id=6034996698";
		["location_disabled"] = "http://www.roblox.com/asset/?id=6034996694";
		["signal_wifi_4_bar"] = "http://www.roblox.com/asset/?id=6035030077";
		["access_time"] = "http://www.roblox.com/asset/?id=6034983856";
		["mobile_off"] = "http://www.roblox.com/asset/?id=6034996702";
		["battery_unknown"] = "http://www.roblox.com/asset/?id=6034983842";
		["signal_cellular_null"] = "http://www.roblox.com/asset/?id=6035030075";
		["bluetooth_disabled"] = "http://www.roblox.com/asset/?id=6034989562";
		["developer_mode"] = "http://www.roblox.com/asset/?id=6034989549";
		["network_cell"] = "http://www.roblox.com/asset/?id=6034996709";
		["sd_storage"] = "http://www.roblox.com/asset/?id=6034996719";
		["signal_cellular_no_sim"] = "http://www.roblox.com/asset/?id=6035030078";
		["devices"] = "http://www.roblox.com/asset/?id=6034989540";
		["screen_rotation"] = "http://www.roblox.com/asset/?id=6034996701";
		["device_thermostat"] = "http://www.roblox.com/asset/?id=6034989544";
		["signal_wifi_off"] = "http://www.roblox.com/asset/?id=6035030074";
		["widgets"] = "http://www.roblox.com/asset/?id=6035039429";
		["bluetooth"] = "http://www.roblox.com/asset/?id=6034983880";
		["battery_charging_full"] = "http://www.roblox.com/asset/?id=6034983849";
		["mobile_friendly"] = "http://www.roblox.com/asset/?id=6034996699";
		["signal_cellular_0_bar"] = "http://www.roblox.com/asset/?id=6035030072";
		["storage"] = "http://www.roblox.com/asset/?id=6035030083";
		["send_to_mobile"] = "http://www.roblox.com/asset/?id=6034996697";
		["location_searching"] = "http://www.roblox.com/asset/?id=6034996695";
		["brightness_auto"] = "http://www.roblox.com/asset/?id=6034989545";
		["wifi_lock"] = "http://www.roblox.com/asset/?id=6035039428";
		["gps_not_fixed"] = "http://www.roblox.com/asset/?id=6034989547";
		["access_alarm"] = "http://www.roblox.com/asset/?id=6034983844";
		["battery_alert"] = "http://www.roblox.com/asset/?id=6034983843";
		["signal_cellular_off"] = "http://www.roblox.com/asset/?id=6035030084";
		["signal_cellular_connected_no_internet_4"] = "http://www.roblox.com/asset/?id=6035229858";
		["gps_off"] = "http://www.roblox.com/asset/?id=6034989548";
		["add_alarm"] = "http://www.roblox.com/asset/?id=6034983850";
		["brightness_medium"] = "http://www.roblox.com/asset/?id=6034989543";
		["usb"] = "http://www.roblox.com/asset/?id=6035030080";
		["airplanemode_active"] = "http://www.roblox.com/asset/?id=6034983864";
		["reset_tv"] = "http://www.roblox.com/asset/?id=6034996696";
		["wallpaper"] = "http://www.roblox.com/asset/?id=6035030102";
		["settings_system_daydream"] = "http://www.roblox.com/asset/?id=6035030081";
		["bluetooth_searching"] = "http://www.roblox.com/asset/?id=6034989553";
		["add_to_home_screen"] = "http://www.roblox.com/asset/?id=6034983858";
		["screen_lock_portrait"] = "http://www.roblox.com/asset/?id=6034996706";
		["data_usage"] = "http://www.roblox.com/asset/?id=6034989568";
		["_auto_delete"] = "http://www.roblox.com/asset/?id=6031071068";
		["_error"] = "http://www.roblox.com/asset/?id=6031071057";
		["_notification_important"] = "http://www.roblox.com/asset/?id=6031071056";
		["_add_alert"] = "http://www.roblox.com/asset/?id=6031071067";
		["_warning"] = "http://www.roblox.com/asset/?id=6031071053";
		["_error_outline"] = "http://www.roblox.com/asset/?id=6031071050";
		["check_box_outline_blank"] = "http://www.roblox.com/asset/?id=6031068420";
		["toggle_off"] = "http://www.roblox.com/asset/?id=6031068429";
		["indeterminate_check_box"] = "http://www.roblox.com/asset/?id=6031068445";
		["radio_button_checked"] = "http://www.roblox.com/asset/?id=6031068426";
		["toggle_on"] = "http://www.roblox.com/asset/?id=6031068430";
		["check_box"] = "http://www.roblox.com/asset/?id=6031068421";
		["radio_button_unchecked"] = "http://www.roblox.com/asset/?id=6031068433";
		["star"] = "http://www.roblox.com/asset/?id=6031068423";
		["star_border"] = "http://www.roblox.com/asset/?id=6031068425";
		["star_half"] = "http://www.roblox.com/asset/?id=6031068427";
		["star_outline"] = "http://www.roblox.com/asset/?id=6031068428";
		["multiline_chart"] = "http://www.roblox.com/asset/?id=6034941721";
		["pie_chart"] = "http://www.roblox.com/asset/?id=6034973076";
		["format_line_spacing"] = "http://www.roblox.com/asset/?id=6034910905";
		["format_align_left"] = "http://www.roblox.com/asset/?id=6034900727";
		["linear_scale"] = "http://www.roblox.com/asset/?id=6034941707";
		["insert_photo"] = "http://www.roblox.com/asset/?id=6034941703";
		["scatter_plot"] = "http://www.roblox.com/asset/?id=6034973094";
		["post_add"] = "http://www.roblox.com/asset/?id=6034973083";
		["format_textdirection_r_to_l"] = "http://www.roblox.com/asset/?id=6034925623";
		["format_size"] = "http://www.roblox.com/asset/?id=6034910908";
		["format_color_fill"] = "http://www.roblox.com/asset/?id=6034910903";
		["format_paint"] = "http://www.roblox.com/asset/?id=6034925618";
		["format_underlined"] = "http://www.roblox.com/asset/?id=6034925627";
		["format_shapes"] = "http://www.roblox.com/asset/?id=6034910909";
		["title"] = "http://www.roblox.com/asset/?id=6034934042";
		["highlight"] = "http://www.roblox.com/asset/?id=6034925617";
		["bar_chart"] = "http://www.roblox.com/asset/?id=6034898096";
		["format_indent_increase"] = "http://www.roblox.com/asset/?id=6034900724";
		["merge_type"] = "http://www.roblox.com/asset/?id=6034941705";
		["bubble_chart"] = "http://www.roblox.com/asset/?id=6034925612";
		["publish"] = "http://www.roblox.com/asset/?id=6034973085";
		["format_indent_decrease"] = "http://www.roblox.com/asset/?id=6034900733";
		["margin"] = "http://www.roblox.com/asset/?id=6034941701";
		["table_rows"] = "http://www.roblox.com/asset/?id=6034934025";
		["stacked_line_chart"] = "http://www.roblox.com/asset/?id=6034934039";
		["border_clear"] = "http://www.roblox.com/asset/?id=6034898135";
		["border_color"] = "http://www.roblox.com/asset/?id=6034898100";
		["border_inner"] = "http://www.roblox.com/asset/?id=6034898131";
		["insert_chart"] = "http://www.roblox.com/asset/?id=6034925628";
		["border_top"] = "http://www.roblox.com/asset/?id=6034900726";
		["padding"] = "http://www.roblox.com/asset/?id=6034973078";
		["border_vertical"] = "http://www.roblox.com/asset/?id=6034900725";
		["score"] = "http://www.roblox.com/asset/?id=6034934041";
		["border_right"] = "http://www.roblox.com/asset/?id=6034898120";
		["add_chart"] = "http://www.roblox.com/asset/?id=6034898093";
		["space_bar"] = "http://www.roblox.com/asset/?id=6034934037";
		["border_outer"] = "http://www.roblox.com/asset/?id=6034898104";
		["mode_comment"] = "http://www.roblox.com/asset/?id=6034941700";
		["attach_money"] = "http://www.roblox.com/asset/?id=6034898098";
		["drag_handle"] = "http://www.roblox.com/asset/?id=6034910907";
		["format_align_right"] = "http://www.roblox.com/asset/?id=6034900723";
		["pie_chart_outlined"] = "http://www.roblox.com/asset/?id=6034973077";
		["horizontal_rule"] = "http://www.roblox.com/asset/?id=6034925610";
		["border_all"] = "http://www.roblox.com/asset/?id=6034898101";
		["border_style"] = "http://www.roblox.com/asset/?id=6034898097";
		["insert_comment"] = "http://www.roblox.com/asset/?id=6034925609";
		["vertical_align_top"] = "http://www.roblox.com/asset/?id=6034973080";
		["vertical_align_center"] = "http://www.roblox.com/asset/?id=6034934051";
		["format_color_text"] = "http://www.roblox.com/asset/?id=6034910910";
		["format_quote"] = "http://www.roblox.com/asset/?id=6034925629";
		["height"] = "http://www.roblox.com/asset/?id=6034925613";
		["add_comment"] = "http://www.roblox.com/asset/?id=6034898128";
		["format_strikethrough"] = "http://www.roblox.com/asset/?id=6034910904";
		["strikethrough_s"] = "http://www.roblox.com/asset/?id=6034934030";
		["border_left"] = "http://www.roblox.com/asset/?id=6034898099";
		["format_list_bulleted"] = "http://www.roblox.com/asset/?id=6034925620";
		["format_italic"] = "http://www.roblox.com/asset/?id=6034910912";
		["format_list_numbered"] = "http://www.roblox.com/asset/?id=6034925622";
		["attach_file"] = "http://www.roblox.com/asset/?id=6034898102";
		["wrap_text"] = "http://www.roblox.com/asset/?id=6034973118";
		["insert_invitation"] = "http://www.roblox.com/asset/?id=6034973091";
		["format_list_numbered_rtl"] = "http://www.roblox.com/asset/?id=6034910906";
		["border_horizontal"] = "http://www.roblox.com/asset/?id=6034898105";
		["format_align_center"] = "http://www.roblox.com/asset/?id=6034900718";
		["format_textdirection_l_to_r"] = "http://www.roblox.com/asset/?id=6034925619";
		["show_chart"] = "http://www.roblox.com/asset/?id=6034934032";
		["insert_chart_outlined"] = "http://www.roblox.com/asset/?id=6034925606";
		["vertical_align_bottom"] = "http://www.roblox.com/asset/?id=6034934023";
		["subscript"] = "http://www.roblox.com/asset/?id=6034934059";
		["format_align_justify"] = "http://www.roblox.com/asset/?id=6034900721";
		["format_clear"] = "http://www.roblox.com/asset/?id=6034910902";
		["notes"] = "http://www.roblox.com/asset/?id=6034973084";
		["insert_drive_file"] = "http://www.roblox.com/asset/?id=6034941697";
		["functions"] = "http://www.roblox.com/asset/?id=6034925614";
		["insert_emoticon"] = "http://www.roblox.com/asset/?id=6034973079";
		["insert_link"] = "http://www.roblox.com/asset/?id=6034973074";
		["format_color_reset"] = "http://www.roblox.com/asset/?id=6034900743";
		["monetization_on"] = "http://www.roblox.com/asset/?id=6034973115";
		["short_text"] = "http://www.roblox.com/asset/?id=6034934035";
		["mode_edit"] = "http://www.roblox.com/asset/?id=6034941708";
		["superscript"] = "http://www.roblox.com/asset/?id=6034934034";
		["table_chart"] = "http://www.roblox.com/asset/?id=6034973081";
		["format_bold"] = "http://www.roblox.com/asset/?id=6034900732";
		["money_off"] = "http://www.roblox.com/asset/?id=6034973088";
		["border_bottom"] = "http://www.roblox.com/asset/?id=6034898094";
		["text_fields"] = "http://www.roblox.com/asset/?id=6034934040";
		["note"] = "http://www.roblox.com/asset/?id=6026663734";
		["shuffle"] = "http://www.roblox.com/asset/?id=6026667003";
		["library_books"] = "http://www.roblox.com/asset/?id=6026660085";
		["library_music"] = "http://www.roblox.com/asset/?id=6026660075";
		["surround_sound"] = "http://www.roblox.com/asset/?id=6026671209";
		["forward_30"] = "http://www.roblox.com/asset/?id=6026660088";
		["music_video"] = "http://www.roblox.com/asset/?id=6026663704";
		["videocam_off"] = "http://www.roblox.com/asset/?id=6026671212";
		["control_camera"] = "http://www.roblox.com/asset/?id=6026647916";
		["explicit"] = "http://www.roblox.com/asset/?id=6026647913";
		["3k_plus"] = "http://www.roblox.com/asset/?id=6026681598";
		["fiber_pin"] = "http://www.roblox.com/asset/?id=6026660064";
		["skip_previous"] = "http://www.roblox.com/asset/?id=6026667011";
		["pause_circle_filled"] = "http://www.roblox.com/asset/?id=6026663718";
		["video_settings"] = "http://www.roblox.com/asset/?id=6026671211";
		["movie"] = "http://www.roblox.com/asset/?id=6026660081";
		["add_to_queue"] = "http://www.roblox.com/asset/?id=6026647903";
		["6k"] = "http://www.roblox.com/asset/?id=6026681579";
		["web_asset"] = "http://www.roblox.com/asset/?id=6026671239";
		["play_circle_outline"] = "http://www.roblox.com/asset/?id=6026663726";
		["volume_off"] = "http://www.roblox.com/asset/?id=6026671224";
		["mic_off"] = "http://www.roblox.com/asset/?id=6026660076";
		["featured_play_list"] = "http://www.roblox.com/asset/?id=6026647932";
		["pause_circle_outline"] = "http://www.roblox.com/asset/?id=6026663701";
		["slow_motion_video"] = "http://www.roblox.com/asset/?id=6026681583";
		["7k"] = "http://www.roblox.com/asset/?id=6026681584";
		["playlist_add"] = "http://www.roblox.com/asset/?id=6026663728";
		["fiber_smart_record"] = "http://www.roblox.com/asset/?id=6026660080";
		["8k"] = "http://www.roblox.com/asset/?id=6026643014";
		["hd"] = "http://www.roblox.com/asset/?id=6026660065";
		["repeat_one_on"] = "http://www.roblox.com/asset/?id=6026666992";
		["recent_actors"] = "http://www.roblox.com/asset/?id=6026663773";
		["fiber_new"] = "http://www.roblox.com/asset/?id=6026647930";
		["fiber_dvr"] = "http://www.roblox.com/asset/?id=6026647912";
		["hearing_disabled"] = "http://www.roblox.com/asset/?id=6026660068";
		["forward_10"] = "http://www.roblox.com/asset/?id=6026660062";
		["4k_plus"] = "http://www.roblox.com/asset/?id=6026643005";
		["repeat_one"] = "http://www.roblox.com/asset/?id=6026681590";
		["equalizer"] = "http://www.roblox.com/asset/?id=6026647906";
		["stop"] = "http://www.roblox.com/asset/?id=6026681576";
		["2k"] = "http://www.roblox.com/asset/?id=6026643032";
		["playlist_add_check"] = "http://www.roblox.com/asset/?id=6026663727";
		["not_interested"] = "http://www.roblox.com/asset/?id=6026663743";
		["videocam"] = "http://www.roblox.com/asset/?id=6026671213";
		["sort_by_alpha"] = "http://www.roblox.com/asset/?id=6026667009";
		["library_add"] = "http://www.roblox.com/asset/?id=6026660063";
		["stop_circle"] = "http://www.roblox.com/asset/?id=6026681577";
		["pause"] = "http://www.roblox.com/asset/?id=6026663719";
		["new_releases"] = "http://www.roblox.com/asset/?id=6026663730";
		["album"] = "http://www.roblox.com/asset/?id=6026647905";
		["sd"] = "http://www.roblox.com/asset/?id=6026681582";
		["volume_up"] = "http://www.roblox.com/asset/?id=6026671215";
		["replay_5"] = "http://www.roblox.com/asset/?id=6026666993";
		["high_quality"] = "http://www.roblox.com/asset/?id=6026660059";
		["shuffle_on"] = "http://www.roblox.com/asset/?id=6026666996";
		["play_arrow"] = "http://www.roblox.com/asset/?id=6026663699";
		["snooze"] = "http://www.roblox.com/asset/?id=6026667006";
		["closed_caption_disabled"] = "http://www.roblox.com/asset/?id=6026647900";
		["subscriptions"] = "http://www.roblox.com/asset/?id=6026671207";
		["skip_next"] = "http://www.roblox.com/asset/?id=6026667005";
		["branding_watermark"] = "http://www.roblox.com/asset/?id=6026647911";
		["speed"] = "http://www.roblox.com/asset/?id=6026681578";
		["art_track"] = "http://www.roblox.com/asset/?id=6026647908";
		["3k"] = "http://www.roblox.com/asset/?id=6026681574";
		["4k"] = "http://www.roblox.com/asset/?id=6026643017";
		["volume_mute"] = "http://www.roblox.com/asset/?id=6026671214";
		["playlist_play"] = "http://www.roblox.com/asset/?id=6026663723";
		["remove_from_queue"] = "http://www.roblox.com/asset/?id=6026663771";
		["fast_forward"] = "http://www.roblox.com/asset/?id=6026647902";
		["play_disabled"] = "http://www.roblox.com/asset/?id=6026663702";
		["fast_rewind"] = "http://www.roblox.com/asset/?id=6026647942";
		["5k"] = "http://www.roblox.com/asset/?id=6026681575";
		["replay_10"] = "http://www.roblox.com/asset/?id=6026667007";
		["video_library"] = "http://www.roblox.com/asset/?id=6026671208";
		["loop"] = "http://www.roblox.com/asset/?id=6026660087";
		["replay_circle_filled"] = "http://www.roblox.com/asset/?id=6026667002";
		["5g"] = "http://www.roblox.com/asset/?id=6026643007";
		["library_add_check"] = "http://www.roblox.com/asset/?id=6026660083";
		["repeat"] = "http://www.roblox.com/asset/?id=6026666998";
		["queue_play_next"] = "http://www.roblox.com/asset/?id=6026663700";
		["forward_5"] = "http://www.roblox.com/asset/?id=6026660067";
		["web"] = "http://www.roblox.com/asset/?id=6026671234";
		["mic_none"] = "http://www.roblox.com/asset/?id=6026660066";
		["queue"] = "http://www.roblox.com/asset/?id=6026663724";
		["closed_caption_off"] = "http://www.roblox.com/asset/?id=6026647943";
		["hearing"] = "http://www.roblox.com/asset/?id=6026660060";
		["queue_music"] = "http://www.roblox.com/asset/?id=6026663725";
		["airplay"] = "http://www.roblox.com/asset/?id=6026647929";
		["9k"] = "http://www.roblox.com/asset/?id=6026643013";
		["video_label"] = "http://www.roblox.com/asset/?id=6026671204";
		["8k_plus"] = "http://www.roblox.com/asset/?id=6026643003";
		["play_circle_filled"] = "http://www.roblox.com/asset/?id=6026663705";
		["1k"] = "http://www.roblox.com/asset/?id=6026643002";
		["fiber_manual_record"] = "http://www.roblox.com/asset/?id=6026647909";
		["closed_caption"] = "http://www.roblox.com/asset/?id=6026647896";
		["subtitles"] = "http://www.roblox.com/asset/?id=6026671203";
		["featured_video"] = "http://www.roblox.com/asset/?id=6026647910";
		["replay_30"] = "http://www.roblox.com/asset/?id=6026667010";
		["10k"] = "http://www.roblox.com/asset/?id=6026643035";
		["5k_plus"] = "http://www.roblox.com/asset/?id=6026643028";
		["6k_plus"] = "http://www.roblox.com/asset/?id=6026643019";
		["replay"] = "http://www.roblox.com/asset/?id=6026666999";
		["repeat_on"] = "http://www.roblox.com/asset/?id=6026666994";
		["1k_plus"] = "http://www.roblox.com/asset/?id=6026681580";
		["2k_plus"] = "http://www.roblox.com/asset/?id=6026681588";
		["games"] = "http://www.roblox.com/asset/?id=6026660074";
		["volume_down"] = "http://www.roblox.com/asset/?id=6026671206";
		["mic"] = "http://www.roblox.com/asset/?id=6026660078";
		["call_to_action"] = "http://www.roblox.com/asset/?id=6026647898";
		["7k_plus"] = "http://www.roblox.com/asset/?id=6026643012";
		["av_timer"] = "http://www.roblox.com/asset/?id=6026647934";
		["9k_plus"] = "http://www.roblox.com/asset/?id=6026681585";
		["radio"] = "http://www.roblox.com/asset/?id=6026663698";
		["10mp"] = "http://www.roblox.com/asset/?id=6031328149";
		["20mp"] = "http://www.roblox.com/asset/?id=6031488940";
		["wb_twighlight"] = "http://www.roblox.com/asset/?id=6034412760";
		["movie_creation"] = "http://www.roblox.com/asset/?id=6034323681";
		["crop_portrait"] = "http://www.roblox.com/asset/?id=6031630198";
		["filter_5"] = "http://www.roblox.com/asset/?id=6031597518";
		["broken_image"] = "http://www.roblox.com/asset/?id=6031471480";
		["flip_camera_android"] = "http://www.roblox.com/asset/?id=6034333280";
		["flip_camera_ios"] = "http://www.roblox.com/asset/?id=6034333267";
		["circle"] = "http://www.roblox.com/asset/?id=6031625146";
		["photo_camera_front"] = "http://www.roblox.com/asset/?id=6031771000";
		["assistant"] = "http://www.roblox.com/asset/?id=6031360356";
		["face_retouching_natural"] = "http://www.roblox.com/asset/?id=6034333274";
		["palette"] = "http://www.roblox.com/asset/?id=6034316009";
		["nature_people"] = "http://www.roblox.com/asset/?id=6034323711";
		["14mp"] = "http://www.roblox.com/asset/?id=6031328161";
		["gradient"] = "http://www.roblox.com/asset/?id=6034333261";
		["filter_4"] = "http://www.roblox.com/asset/?id=6031597512";
		["panorama_wide_angle_select"] = "http://www.roblox.com/asset/?id=6031770990";
		["photo"] = "http://www.roblox.com/asset/?id=6031770993";
		["grid_off"] = "http://www.roblox.com/asset/?id=6034333286";
		["leak_add"] = "http://www.roblox.com/asset/?id=6034407074";
		["landscape"] = "http://www.roblox.com/asset/?id=6034407069";
		["exposure_plus_1"] = "http://www.roblox.com/asset/?id=6034328970";
		["slideshow"] = "http://www.roblox.com/asset/?id=6031754546";
		["camera_alt"] = "http://www.roblox.com/asset/?id=6031572307";
		["audiotrack"] = "http://www.roblox.com/asset/?id=6031471489";
		["filter_none"] = "http://www.roblox.com/asset/?id=6031600815";
		["blur_off"] = "http://www.roblox.com/asset/?id=6031371055";
		["crop_16_9"] = "http://www.roblox.com/asset/?id=6031630205";
		["blur_on"] = "http://www.roblox.com/asset/?id=6031371068";
		["brightness_4"] = "http://www.roblox.com/asset/?id=6031471483";
		["details"] = "http://www.roblox.com/asset/?id=6034328968";
		["panorama_horizontal"] = "http://www.roblox.com/asset/?id=6034315966";
		["camera_rear"] = "http://www.roblox.com/asset/?id=6031572316";
		["hdr_weak"] = "http://www.roblox.com/asset/?id=6034407083";
		["collections"] = "http://www.roblox.com/asset/?id=6031625145";
		["hdr_enhanced_select"] = "http://www.roblox.com/asset/?id=6034333281";
		["adjust"] = "http://www.roblox.com/asset/?id=6031339048";
		["burst_mode"] = "http://www.roblox.com/asset/?id=6031572306";
		["nature"] = "http://www.roblox.com/asset/?id=6034323695";
		["brightness_6"] = "http://www.roblox.com/asset/?id=6031572309";
		["19mp"] = "http://www.roblox.com/asset/?id=6031339054";
		["grain"] = "http://www.roblox.com/asset/?id=6034333288";
		["receipt_long"] = "http://www.roblox.com/asset/?id=6031763428";
		["photo_filter"] = "http://www.roblox.com/asset/?id=6031770992";
		["edit"] = "http://www.roblox.com/asset/?id=6034328955";
		["healing"] = "http://www.roblox.com/asset/?id=6034407071";
		["exposure_neg_1"] = "http://www.roblox.com/asset/?id=6034328957";
		["exposure"] = "http://www.roblox.com/asset/?id=6034328962";
		["wb_shade"] = "http://www.roblox.com/asset/?id=6034315974";
		["compare"] = "http://www.roblox.com/asset/?id=6031625151";
		["cases"] = "http://www.roblox.com/asset/?id=6031572324";
		["timer_3"] = "http://www.roblox.com/asset/?id=6031754540";
		["exposure_plus_2"] = "http://www.roblox.com/asset/?id=6034328961";
		["12mp"] = "http://www.roblox.com/asset/?id=6031328140";
		["22mp"] = "http://www.roblox.com/asset/?id=6031360353";
		["timer_off"] = "http://www.roblox.com/asset/?id=6031734881";
		["auto_stories"] = "http://www.roblox.com/asset/?id=6031360360";
		["rotate_left"] = "http://www.roblox.com/asset/?id=6031763427";
		["wb_iridescent"] = "http://www.roblox.com/asset/?id=6034315972";
		["shutter_speed"] = "http://www.roblox.com/asset/?id=6031763443";
		["switch_video"] = "http://www.roblox.com/asset/?id=6031754536";
		["23mp"] = "http://www.roblox.com/asset/?id=6031339045";
		["euro"] = "http://www.roblox.com/asset/?id=6034328963";
		["15mp"] = "http://www.roblox.com/asset/?id=6031328158";
		["filter_center_focus"] = "http://www.roblox.com/asset/?id=6031600817";
		["photo_library"] = "http://www.roblox.com/asset/?id=6031770998";
		["mp"] = "http://www.roblox.com/asset/?id=6034323674";
		["looks_4"] = "http://www.roblox.com/asset/?id=6034407089";
		["filter_2"] = "http://www.roblox.com/asset/?id=6031597521";
		["crop_3_2"] = "http://www.roblox.com/asset/?id=6034328956";
		["auto_fix_normal"] = "http://www.roblox.com/asset/?id=6031371074";
		["auto_fix_off"] = "http://www.roblox.com/asset/?id=6031360381";
		["wb_auto"] = "http://www.roblox.com/asset/?id=6031734875";
		["switch_camera"] = "http://www.roblox.com/asset/?id=6031754550";
		["filter_vintage"] = "http://www.roblox.com/asset/?id=6031600811";
		["photo_size_select_small"] = "http://www.roblox.com/asset/?id=6031763457";
		["blur_linear"] = "http://www.roblox.com/asset/?id=6031488930";
		["hdr_on"] = "http://www.roblox.com/asset/?id=6034333279";
		["tag_faces"] = "http://www.roblox.com/asset/?id=6031754560";
		["21mp"] = "http://www.roblox.com/asset/?id=6031339065";
		["camera"] = "http://www.roblox.com/asset/?id=6031572312";
		["image_aspect_ratio"] = "http://www.roblox.com/asset/?id=6034407073";
		["filter_b_and_w"] = "http://www.roblox.com/asset/?id=6031600824";
		["crop_landscape"] = "http://www.roblox.com/asset/?id=6031630202";
		["13mp"] = "http://www.roblox.com/asset/?id=6031328137";
		["grid_on"] = "http://www.roblox.com/asset/?id=6034333276";
		["motion_photos_pause"] = "http://www.roblox.com/asset/?id=6034323668";
		["filter_6"] = "http://www.roblox.com/asset/?id=6031597524";
		["linked_camera"] = "http://www.roblox.com/asset/?id=6034407082";
		["panorama_fish_eye"] = "http://www.roblox.com/asset/?id=6034315969";
		["panorama"] = "http://www.roblox.com/asset/?id=6034315955";
		["color_lens"] = "http://www.roblox.com/asset/?id=6031625148";
		["lens"] = "http://www.roblox.com/asset/?id=6034407081";
		["crop_din"] = "http://www.roblox.com/asset/?id=6031630208";
		["exposure_neg_2"] = "http://www.roblox.com/asset/?id=6034328973";
		["mic_external_off"] = "http://www.roblox.com/asset/?id=6034323672";
		["crop_free"] = "http://www.roblox.com/asset/?id=6031630212";
		["crop_original"] = "http://www.roblox.com/asset/?id=6031630204";
		["panorama_photosphere_select"] = "http://www.roblox.com/asset/?id=6034315975";
		["photo_size_select_actual"] = "http://www.roblox.com/asset/?id=6031771012";
		["leak_remove"] = "http://www.roblox.com/asset/?id=6034407080";
		["collections_bookmark"] = "http://www.roblox.com/asset/?id=6034328965";
		["straighten"] = "http://www.roblox.com/asset/?id=6031754545";
		["timelapse"] = "http://www.roblox.com/asset/?id=6031754541";
		["picture_as_pdf"] = "http://www.roblox.com/asset/?id=6031763425";
		["crop_rotate"] = "http://www.roblox.com/asset/?id=6031630203";
		["control_point_duplicate"] = "http://www.roblox.com/asset/?id=6034328959";
		["photo_camera_back"] = "http://www.roblox.com/asset/?id=6031771007";
		["looks_3"] = "http://www.roblox.com/asset/?id=6034407088";
		["motion_photos_off"] = "http://www.roblox.com/asset/?id=6034323670";
		["rotate_right"] = "http://www.roblox.com/asset/?id=6031763429";
		["view_compact"] = "http://www.roblox.com/asset/?id=6031734878";
		["crop_7_5"] = "http://www.roblox.com/asset/?id=6031630197";
		["style"] = "http://www.roblox.com/asset/?id=6031754538";
		["exposure_zero"] = "http://www.roblox.com/asset/?id=6034329000";
		["camera_front"] = "http://www.roblox.com/asset/?id=6031572318";
		["hdr_strong"] = "http://www.roblox.com/asset/?id=6034333272";
		["view_comfy"] = "http://www.roblox.com/asset/?id=6031734876";
		["panorama_vertical"] = "http://www.roblox.com/asset/?id=6034315963";
		["panorama_vertical_select"] = "http://www.roblox.com/asset/?id=6034315961";
		["looks_two"] = "http://www.roblox.com/asset/?id=6034412757";
		["filter_drama"] = "http://www.roblox.com/asset/?id=6031600813";
		["center_focus_strong"] = "http://www.roblox.com/asset/?id=6031625147";
		["18mp"] = "http://www.roblox.com/asset/?id=6031339064";
		["7mp"] = "http://www.roblox.com/asset/?id=6031328139";
		["wb_sunny"] = "http://www.roblox.com/asset/?id=6034412758";
		["filter_9_plus"] = "http://www.roblox.com/asset/?id=6031600812";
		["crop"] = "http://www.roblox.com/asset/?id=6034328964";
		["vignette"] = "http://www.roblox.com/asset/?id=6031734905";
		["brightness_2"] = "http://www.roblox.com/asset/?id=6031488938";
		["crop_square"] = "http://www.roblox.com/asset/?id=6031630222";
		["looks_5"] = "http://www.roblox.com/asset/?id=6034412764";
		["flip"] = "http://www.roblox.com/asset/?id=6034333275";
		["looks_one"] = "http://www.roblox.com/asset/?id=6034412761";
		["flash_off"] = "http://www.roblox.com/asset/?id=6034333270";
		["hdr_off"] = "http://www.roblox.com/asset/?id=6034333266";
		["photo_album"] = "http://www.roblox.com/asset/?id=6031770989";
		["motion_photos_paused"] = "http://www.roblox.com/asset/?id=6034323675";
		["photo_camera"] = "http://www.roblox.com/asset/?id=6031770997";
		["2mp"] = "http://www.roblox.com/asset/?id=6031328138";
		["3mp"] = "http://www.roblox.com/asset/?id=6031328136";
		["24mp"] = "http://www.roblox.com/asset/?id=6031360352";
		["filter_9"] = "http://www.roblox.com/asset/?id=6031597534";
		["6mp"] = "http://www.roblox.com/asset/?id=6031328131";
		["remove_red_eye"] = "http://www.roblox.com/asset/?id=6031763426";
		["4mp"] = "http://www.roblox.com/asset/?id=6031328152";
		["add_a_photo"] = "http://www.roblox.com/asset/?id=6031339049";
		["filter_3"] = "http://www.roblox.com/asset/?id=6031597513";
		["crop_5_4"] = "http://www.roblox.com/asset/?id=6034328960";
		["8mp"] = "http://www.roblox.com/asset/?id=6031328133";
		["camera_roll"] = "http://www.roblox.com/asset/?id=6031572314";
		["panorama_wide_angle"] = "http://www.roblox.com/asset/?id=6031770995";
		["transform"] = "http://www.roblox.com/asset/?id=6031734873";
		["flare"] = "http://www.roblox.com/asset/?id=6031600816";
		["image_search"] = "http://www.roblox.com/asset/?id=6034407084";
		["auto_awesome"] = "http://www.roblox.com/asset/?id=6031360365";
		["motion_photos_on"] = "http://www.roblox.com/asset/?id=6034323669";
		["rotate_90_degrees_ccw"] = "http://www.roblox.com/asset/?id=6031763456";
		["filter_1"] = "http://www.roblox.com/asset/?id=6031597511";
		["filter_tilt_shift"] = "http://www.roblox.com/asset/?id=6031600814";
		["image"] = "http://www.roblox.com/asset/?id=6034407078";
		["center_focus_weak"] = "http://www.roblox.com/asset/?id=6031625144";
		["blur_circular"] = "http://www.roblox.com/asset/?id=6031488945";
		["bedtime"] = "http://www.roblox.com/asset/?id=6031371054";
		["auto_fix_high"] = "http://www.roblox.com/asset/?id=6031360355";
		["monochrome_photos"] = "http://www.roblox.com/asset/?id=6034323678";
		["flash_auto"] = "http://www.roblox.com/asset/?id=6034333287";
		["5mp"] = "http://www.roblox.com/asset/?id=6031328144";
		["photo_size_select_large"] = "http://www.roblox.com/asset/?id=6031763423";
		["assistant_photo"] = "http://www.roblox.com/asset/?id=6031339052";
		["animation"] = "http://www.roblox.com/asset/?id=6031625150";
		["looks"] = "http://www.roblox.com/asset/?id=6034407096";
		["17mp"] = "http://www.roblox.com/asset/?id=6031339055";
		["panorama_horizontal_select"] = "http://www.roblox.com/asset/?id=6034315965";
		["flash_on"] = "http://www.roblox.com/asset/?id=6034333271";
		["iso"] = "http://www.roblox.com/asset/?id=6034407106";
		["music_note"] = "http://www.roblox.com/asset/?id=6034323673";
		["music_off"] = "http://www.roblox.com/asset/?id=6034323679";
		["navigate_next"] = "http://www.roblox.com/asset/?id=6034315956";
		["timer"] = "http://www.roblox.com/asset/?id=6031754564";
		["loupe"] = "http://www.roblox.com/asset/?id=6034412770";
		["navigate_before"] = "http://www.roblox.com/asset/?id=6034323696";
		["brightness_1"] = "http://www.roblox.com/asset/?id=6031471488";
		["brightness_7"] = "http://www.roblox.com/asset/?id=6031471491";
		["tonality"] = "http://www.roblox.com/asset/?id=6031734891";
		["brush"] = "http://www.roblox.com/asset/?id=6031572320";
		["colorize"] = "http://www.roblox.com/asset/?id=6031625161";
		["filter_7"] = "http://www.roblox.com/asset/?id=6031597515";
		["16mp"] = "http://www.roblox.com/asset/?id=6031328168";
		["timer_10"] = "http://www.roblox.com/asset/?id=6031734880";
		["portrait"] = "http://www.roblox.com/asset/?id=6031763434";
		["tune"] = "http://www.roblox.com/asset/?id=6031734877";
		["image_not_supported"] = "http://www.roblox.com/asset/?id=6034407076";
		["wb_cloudy"] = "http://www.roblox.com/asset/?id=6031734907";
		["auto_awesome_motion"] = "http://www.roblox.com/asset/?id=6031360370";
		["filter_8"] = "http://www.roblox.com/asset/?id=6031597532";
		["brightness_5"] = "http://www.roblox.com/asset/?id=6031471479";
		["movie_filter"] = "http://www.roblox.com/asset/?id=6034323687";
		["add_photo_alternate"] = "http://www.roblox.com/asset/?id=6031471484";
		["add_to_photos"] = "http://www.roblox.com/asset/?id=6031371075";
		["texture"] = "http://www.roblox.com/asset/?id=6031754553";
		["11mp"] = "http://www.roblox.com/asset/?id=6031328141";
		["mic_external_on"] = "http://www.roblox.com/asset/?id=6034323671";
		["looks_6"] = "http://www.roblox.com/asset/?id=6034412759";
		["dehaze"] = "http://www.roblox.com/asset/?id=6031630200";
		["control_point"] = "http://www.roblox.com/asset/?id=6031625131";
		["panorama_photosphere"] = "http://www.roblox.com/asset/?id=6034412763";
		["filter_frames"] = "http://www.roblox.com/asset/?id=6031600833";
		["auto_awesome_mosaic"] = "http://www.roblox.com/asset/?id=6031371053";
		["9mp"] = "http://www.roblox.com/asset/?id=6031328146";
		["filter"] = "http://www.roblox.com/asset/?id=6031597514";
		["brightness_3"] = "http://www.roblox.com/asset/?id=6031572317";
		["dirty_lens"] = "http://www.roblox.com/asset/?id=6034328967";
		["wb_incandescent"] = "http://www.roblox.com/asset/?id=6034316010";
		["filter_hdr"] = "http://www.roblox.com/asset/?id=6031600819";
		["textsms"] = "http://www.roblox.com/asset/?id=6035202006";
		["comment"] = "http://www.roblox.com/asset/?id=6035181871";
		["call_end"] = "http://www.roblox.com/asset/?id=6035173845";
		["qr_code_scanner"] = "http://www.roblox.com/asset/?id=6035202022";
		["phonelink_setup"] = "http://www.roblox.com/asset/?id=6035202025";
		["call_merge"] = "http://www.roblox.com/asset/?id=6035173843";
		["phonelink_erase"] = "http://www.roblox.com/asset/?id=6035202085";
		["contact_mail"] = "http://www.roblox.com/asset/?id=6035181868";
		["contact_phone"] = "http://www.roblox.com/asset/?id=6035181861";
		["screen_share"] = "http://www.roblox.com/asset/?id=6035202008";
		["present_to_all"] = "http://www.roblox.com/asset/?id=6035202020";
		["stay_primary_portrait"] = "http://www.roblox.com/asset/?id=6035202009";
		["message"] = "http://www.roblox.com/asset/?id=6035202033";
		["sentiment_satisfied_alt"] = "http://www.roblox.com/asset/?id=6035202069";
		["stay_current_portrait"] = "http://www.roblox.com/asset/?id=6035202004";
		["voicemail"] = "http://www.roblox.com/asset/?id=6035202019";
		["business"] = "http://www.roblox.com/asset/?id=6035173853";
		["mail_outline"] = "http://www.roblox.com/asset/?id=6035190844";
		["vpn_key"] = "http://www.roblox.com/asset/?id=6035202034";
		["forward_to_inbox"] = "http://www.roblox.com/asset/?id=6035190840";
		["contacts"] = "http://www.roblox.com/asset/?id=6035181864";
		["phonelink_ring"] = "http://www.roblox.com/asset/?id=6035202066";
		["domain_disabled"] = "http://www.roblox.com/asset/?id=6035181862";
		["person_add_disabled"] = "http://www.roblox.com/asset/?id=6035202007";
		["stay_primary_landscape"] = "http://www.roblox.com/asset/?id=6035202026";
		["alternate_email"] = "http://www.roblox.com/asset/?id=6035173865";
		["phone_disabled"] = "http://www.roblox.com/asset/?id=6035202028";
		["email"] = "http://www.roblox.com/asset/?id=6035181866";
		["mobile_screen_share"] = "http://www.roblox.com/asset/?id=6035202021";
		["live_help"] = "http://www.roblox.com/asset/?id=6035190836";
		["chat_bubble"] = "http://www.roblox.com/asset/?id=6035181858";
		["stop_screen_share"] = "http://www.roblox.com/asset/?id=6035202042";
		["location_on"] = "http://www.roblox.com/asset/?id=6035190846";
		["chat_bubble_outline"] = "http://www.roblox.com/asset/?id=6035181869";
		["dialer_sip"] = "http://www.roblox.com/asset/?id=6035181865";
		["no_sim"] = "http://www.roblox.com/asset/?id=6035202030";
		["list_alt"] = "http://www.roblox.com/asset/?id=6035190838";
		["call"] = "http://www.roblox.com/asset/?id=6035173859";
		["pause_presentation"] = "http://www.roblox.com/asset/?id=6035202015";
		["invert_colors_off"] = "http://www.roblox.com/asset/?id=6035190842";
		["call_missed_outgoing"] = "http://www.roblox.com/asset/?id=6035173847";
		["stay_current_landscape"] = "http://www.roblox.com/asset/?id=6035202011";
		["import_export"] = "http://www.roblox.com/asset/?id=6035202040";
		["add_ic_call"] = "http://www.roblox.com/asset/?id=6035173839";
		["dialpad"] = "http://www.roblox.com/asset/?id=6035181892";
		["nat"] = "http://www.roblox.com/asset/?id=6035202082";
		["unsubscribe"] = "http://www.roblox.com/asset/?id=6035202044";
		["mark_chat_unread"] = "http://www.roblox.com/asset/?id=6035190841";
		["portable_wifi_off"] = "http://www.roblox.com/asset/?id=6035202091";
		["location_off"] = "http://www.roblox.com/asset/?id=6035202049";
		["person_search"] = "http://www.roblox.com/asset/?id=6035202013";
		["phonelink_lock"] = "http://www.roblox.com/asset/?id=6035202064";
		["desktop_access_disabled"] = "http://www.roblox.com/asset/?id=6035181863";
		["import_contacts"] = "http://www.roblox.com/asset/?id=6035190854";
		["rss_feed"] = "http://www.roblox.com/asset/?id=6035202016";
		["chat"] = "http://www.roblox.com/asset/?id=6035173838";
		["print_disabled"] = "http://www.roblox.com/asset/?id=6035202041";
		["mark_email_read"] = "http://www.roblox.com/asset/?id=6035202038";
		["hourglass_top"] = "http://www.roblox.com/asset/?id=6035190886";
		["clear_all"] = "http://www.roblox.com/asset/?id=6035181870";
		["forum"] = "http://www.roblox.com/asset/?id=6035202002";
		["qr_code"] = "http://www.roblox.com/asset/?id=6035202012";
		["speaker_phone"] = "http://www.roblox.com/asset/?id=6035202018";
		["rtt"] = "http://www.roblox.com/asset/?id=6035202010";
		["domain_verification"] = "http://www.roblox.com/asset/?id=6035181867";
		["app_registration"] = "http://www.roblox.com/asset/?id=6035173870";
		["call_split"] = "http://www.roblox.com/asset/?id=6035173861";
		["cell_wifi"] = "http://www.roblox.com/asset/?id=6035173852";
		["phone_enabled"] = "http://www.roblox.com/asset/?id=6035202089";
		["call_made"] = "http://www.roblox.com/asset/?id=6035173858";
		["call_received"] = "http://www.roblox.com/asset/?id=6035173844";
		["phone"] = "http://www.roblox.com/asset/?id=6035202017";
		["ring_volume"] = "http://www.roblox.com/asset/?id=6035202032";
		["mark_email_unread"] = "http://www.roblox.com/asset/?id=6035202027";
		["hourglass_bottom"] = "http://www.roblox.com/asset/?id=6035202043";
		["read_more"] = "http://www.roblox.com/asset/?id=6035202014";
		["duo"] = "http://www.roblox.com/asset/?id=6035181860";
		["more_time"] = "http://www.roblox.com/asset/?id=6035202036";
		["wifi_calling"] = "http://www.roblox.com/asset/?id=6035202065";
		["swap_calls"] = "http://www.roblox.com/asset/?id=6035202037";
		["cancel_presentation"] = "http://www.roblox.com/asset/?id=6035173837";
		["call_missed"] = "http://www.roblox.com/asset/?id=6035173850";
		["mark_chat_read"] = "http://www.roblox.com/asset/?id=6035202031";
		["text_snippet"] = "http://www.roblox.com/asset/?id=6031302995";
		["snippet_folder"] = "http://www.roblox.com/asset/?id=6031302947";
		["workspaces_outline"] = "http://www.roblox.com/asset/?id=6031302952";
		["file_download"] = "http://www.roblox.com/asset/?id=6031302931";
		["request_quote"] = "http://www.roblox.com/asset/?id=6031302941";
		["approval"] = "http://www.roblox.com/asset/?id=6031302928";
		["drive_folder_upload"] = "http://www.roblox.com/asset/?id=6031302929";
		["rule_folder"] = "http://www.roblox.com/asset/?id=6031302940";
		["attach_email"] = "http://www.roblox.com/asset/?id=6031302935";
		["topic"] = "http://www.roblox.com/asset/?id=6031302976";
		["upload_file"] = "http://www.roblox.com/asset/?id=6031302959";
		["attachment"] = "http://www.roblox.com/asset/?id=6031302921";
		["file_download_done"] = "http://www.roblox.com/asset/?id=6031302926";
		["drive_file_move_outline"] = "http://www.roblox.com/asset/?id=6031302924";
		["cloud_upload"] = "http://www.roblox.com/asset/?id=6031302992";
		["cloud_circle"] = "http://www.roblox.com/asset/?id=6031302919";
		["folder_shared"] = "http://www.roblox.com/asset/?id=6031302945";
		["cloud_download"] = "http://www.roblox.com/asset/?id=6031302917";
		["file_upload"] = "http://www.roblox.com/asset/?id=6031302996";
		["workspaces_filled"] = "http://www.roblox.com/asset/?id=6031302961";
		["cloud_queue"] = "http://www.roblox.com/asset/?id=6031302916";
		["cloud"] = "http://www.roblox.com/asset/?id=6031302918";
		["folder_open"] = "http://www.roblox.com/asset/?id=6031302934";
		["grid_view"] = "http://www.roblox.com/asset/?id=6031302950";
		["cloud_off"] = "http://www.roblox.com/asset/?id=6031302993";
		["create_new_folder"] = "http://www.roblox.com/asset/?id=6031302933";
		["cloud_done"] = "http://www.roblox.com/asset/?id=6031302927";
		["folder"] = "http://www.roblox.com/asset/?id=6031302932";
		["drive_file_move"] = "http://www.roblox.com/asset/?id=6031302922";
		["drive_file_rename_outline"] = "http://www.roblox.com/asset/?id=6031302994";
		["notifications_active"] = "http://www.roblox.com/asset/?id=6034304908";
		["sentiment_neutral"] = "http://www.roblox.com/asset/?id=6034230636";
		["sick"] = "http://www.roblox.com/asset/?id=6034230642";
		["poll"] = "http://www.roblox.com/asset/?id=6034267991";
		["emoji_events"] = "http://www.roblox.com/asset/?id=6034275726";
		["groups"] = "http://www.roblox.com/asset/?id=6034281935";
		["sports_soccer"] = "http://www.roblox.com/asset/?id=6034227075";
		["person_add"] = "http://www.roblox.com/asset/?id=6034287514";
		["mood_bad"] = "http://www.roblox.com/asset/?id=6034295706";
		["person_remove_alt_1"] = "http://www.roblox.com/asset/?id=6034287515";
		["king_bed"] = "http://www.roblox.com/asset/?id=6034281948";
		["architecture"] = "http://www.roblox.com/asset/?id=6034275730";
		["deck"] = "http://www.roblox.com/asset/?id=6034295703";
		["group_add"] = "http://www.roblox.com/asset/?id=6034281909";
		["sports_basketball"] = "http://www.roblox.com/asset/?id=6034230649";
		["emoji_symbols"] = "http://www.roblox.com/asset/?id=6034281899";
		["switch_account"] = "http://www.roblox.com/asset/?id=6034227138";
		["remove_moderator"] = "http://www.roblox.com/asset/?id=6034267998";
		["coronavirus"] = "http://www.roblox.com/asset/?id=6034275724";
		["people"] = "http://www.roblox.com/asset/?id=6034287513";
		["person"] = "http://www.roblox.com/asset/?id=6034287594";
		["elderly"] = "http://www.roblox.com/asset/?id=6034295698";
		["clean_hands"] = "http://www.roblox.com/asset/?id=6034275729";
		["emoji_flags"] = "http://www.roblox.com/asset/?id=6034304898";
		["psychology"] = "http://www.roblox.com/asset/?id=6034287516";
		["person_add_alt"] = "http://www.roblox.com/asset/?id=6034267994";
		["sports_volleyball"] = "http://www.roblox.com/asset/?id=6034227139";
		["domain"] = "http://www.roblox.com/asset/?id=6034275722";
		["emoji_objects"] = "http://www.roblox.com/asset/?id=6034281900";
		["ios_share"] = "http://www.roblox.com/asset/?id=6034281941";
		["history_edu"] = "http://www.roblox.com/asset/?id=6034281934";
		["share"] = "http://www.roblox.com/asset/?id=6034230648";
		["military_tech"] = "http://www.roblox.com/asset/?id=6034295711";
		["sports_kabaddi"] = "http://www.roblox.com/asset/?id=6034227141";
		["cake"] = "http://www.roblox.com/asset/?id=6034295702";
		["engineering"] = "http://www.roblox.com/asset/?id=6034281908";
		["emoji_food_beverage"] = "http://www.roblox.com/asset/?id=6034304883";
		["notifications_none"] = "http://www.roblox.com/asset/?id=6034308947";
		["emoji_people"] = "http://www.roblox.com/asset/?id=6034281904";
		["thumb_down_alt"] = "http://www.roblox.com/asset/?id=6034227069";
		["sentiment_very_satisfied"] = "http://www.roblox.com/asset/?id=6034230650";
		["nights_stay"] = "http://www.roblox.com/asset/?id=6034304881";
		["reduce_capacity"] = "http://www.roblox.com/asset/?id=6034268013";
		["add_moderator"] = "http://www.roblox.com/asset/?id=6034295699";
		["science"] = "http://www.roblox.com/asset/?id=6034230640";
		["pages"] = "http://www.roblox.com/asset/?id=6034304892";
		["sentiment_satisfied"] = "http://www.roblox.com/asset/?id=6034230668";
		["plus_one"] = "http://www.roblox.com/asset/?id=6034268012";
		["party_mode"] = "http://www.roblox.com/asset/?id=6034287521";
		["person_remove"] = "http://www.roblox.com/asset/?id=6034267996";
		["single_bed"] = "http://www.roblox.com/asset/?id=6034230651";
		["mood"] = "http://www.roblox.com/asset/?id=6034295704";
		["public"] = "http://www.roblox.com/asset/?id=6034287522";
		["sports_rugby"] = "http://www.roblox.com/asset/?id=6034227073";
		["sports_handball"] = "http://www.roblox.com/asset/?id=6034227074";
		["person_add_alt_1"] = "http://www.roblox.com/asset/?id=6034287519";
		["people_alt"] = "http://www.roblox.com/asset/?id=6034287518";
		["notifications_off"] = "http://www.roblox.com/asset/?id=6034304894";
		["whatshot"] = "http://www.roblox.com/asset/?id=6034287525";
		["emoji_transportation"] = "http://www.roblox.com/asset/?id=6034281894";
		["outdoor_grill"] = "http://www.roblox.com/asset/?id=6034304900";
		["sentiment_very_dissatisfied"] = "http://www.roblox.com/asset/?id=6034230659";
		["masks"] = "http://www.roblox.com/asset/?id=6034295710";
		["luggage"] = "http://www.roblox.com/asset/?id=6034295708";
		["sports_motorsports"] = "http://www.roblox.com/asset/?id=6034227071";
		["sports_esports"] = "http://www.roblox.com/asset/?id=6034227061";
		["location_city"] = "http://www.roblox.com/asset/?id=6034304889";
		["sports_golf"] = "http://www.roblox.com/asset/?id=6034227060";
		["sentiment_dissatisfied"] = "http://www.roblox.com/asset/?id=6034230637";
		["no_luggage"] = "http://www.roblox.com/asset/?id=6034304891";
		["fireplace"] = "http://www.roblox.com/asset/?id=6034281910";
		["emoji_nature"] = "http://www.roblox.com/asset/?id=6034281896";
		["group"] = "http://www.roblox.com/asset/?id=6034281901";
		["thumb_up_alt"] = "http://www.roblox.com/asset/?id=6034227076";
		["sports_tennis"] = "http://www.roblox.com/asset/?id=6034227068";
		["facebook"] = "http://www.roblox.com/asset/?id=6034281898";
		["sports_mma"] = "http://www.roblox.com/asset/?id=6034227072";
		["person_outline"] = "http://www.roblox.com/asset/?id=6034268008";
		["sports_baseball"] = "http://www.roblox.com/asset/?id=6034230652";
		["sports_cricket"] = "http://www.roblox.com/asset/?id=6034230660";
		["people_outline"] = "http://www.roblox.com/asset/?id=6034287528";
		["notifications_paused"] = "http://www.roblox.com/asset/?id=6034304896";
		["emoji_emotions"] = "http://www.roblox.com/asset/?id=6034275731";
		["follow_the_signs"] = "http://www.roblox.com/asset/?id=6034281911";
		["sanitizer"] = "http://www.roblox.com/asset/?id=6034287586";
		["self_improvement"] = "http://www.roblox.com/asset/?id=6034230634";
		["notifications"] = "http://www.roblox.com/asset/?id=6034308946";
		["public_off"] = "http://www.roblox.com/asset/?id=6034287538";
		["recommend"] = "http://www.roblox.com/asset/?id=6034287524";
		["sports_football"] = "http://www.roblox.com/asset/?id=6034227067";
		["sports_hockey"] = "http://www.roblox.com/asset/?id=6034227064";
		["school"] = "http://www.roblox.com/asset/?id=6034230641";
		["connect_without_contact"] = "http://www.roblox.com/asset/?id=6034275800";
		["sports"] = "http://www.roblox.com/asset/?id=6034230647";
		["construction"] = "http://www.roblox.com/asset/?id=6034275725";
		["inventory"] = "http://www.roblox.com/asset/?id=6035056487";
		["add_box"] = "http://www.roblox.com/asset/?id=6035047375";
		["how_to_reg"] = "http://www.roblox.com/asset/?id=6035053288";
		["unarchive"] = "http://www.roblox.com/asset/?id=6035078921";
		["block_flipped"] = "http://www.roblox.com/asset/?id=6035047378";
		["file_copy"] = "http://www.roblox.com/asset/?id=6035053293";
		["bolt"] = "http://www.roblox.com/asset/?id=6035047381";
		["remove_circle_outline"] = "http://www.roblox.com/asset/?id=6035067843";
		["move_to_inbox"] = "http://www.roblox.com/asset/?id=6035067838";
		["save_alt"] = "http://www.roblox.com/asset/?id=6035067842";
		["weekend"] = "http://www.roblox.com/asset/?id=6035078894";
		["where_to_vote"] = "http://www.roblox.com/asset/?id=6035078913";
		["biotech"] = "http://www.roblox.com/asset/?id=6035047385";
		["report_off"] = "http://www.roblox.com/asset/?id=6035067830";
		["clear"] = "http://www.roblox.com/asset/?id=6035047409";
		["redo"] = "http://www.roblox.com/asset/?id=6035056483";
		["link"] = "http://www.roblox.com/asset/?id=6035056475";
		["drafts"] = "http://www.roblox.com/asset/?id=6035053297";
		["push_pin"] = "http://www.roblox.com/asset/?id=6035056481";
		["reply"] = "http://www.roblox.com/asset/?id=6035067844";
		["undo"] = "http://www.roblox.com/asset/?id=6035078896";
		["archive"] = "http://www.roblox.com/asset/?id=6035047379";
		["add"] = "http://www.roblox.com/asset/?id=6035047377";
		["insights"] = "http://www.roblox.com/asset/?id=6035067839";
		["flag"] = "http://www.roblox.com/asset/?id=6035053279";
		["save"] = "http://www.roblox.com/asset/?id=6035067857";
		["text_format"] = "http://www.roblox.com/asset/?id=6035078890";
		["content_cut"] = "http://www.roblox.com/asset/?id=6035053280";
		["ballot"] = "http://www.roblox.com/asset/?id=6035047386";
		["remove"] = "http://www.roblox.com/asset/?id=6035067836";
		["calculate"] = "http://www.roblox.com/asset/?id=6035047384";
		["report"] = "http://www.roblox.com/asset/?id=6035067826";
		["markunread"] = "http://www.roblox.com/asset/?id=6035056476";
		["delete_sweep"] = "http://www.roblox.com/asset/?id=6035053301";
		["gesture"] = "http://www.roblox.com/asset/?id=6035053287";
		["link_off"] = "http://www.roblox.com/asset/?id=6035056484";
		["forward"] = "http://www.roblox.com/asset/?id=6035053298";
		["reply_all"] = "http://www.roblox.com/asset/?id=6035067824";
		["how_to_vote"] = "http://www.roblox.com/asset/?id=6035053295";
		["square_foot"] = "http://www.roblox.com/asset/?id=6035078918";
		["outlined_flag"] = "http://www.roblox.com/asset/?id=6035056486";
		["add_circle"] = "http://www.roblox.com/asset/?id=6035047380";
		["stacked_bar_chart"] = "http://www.roblox.com/asset/?id=6035078892";
		["policy"] = "http://www.roblox.com/asset/?id=6035056512";
		["backspace"] = "http://www.roblox.com/asset/?id=6035047397";
		["sort"] = "http://www.roblox.com/asset/?id=6035078888";
		["content_paste"] = "http://www.roblox.com/asset/?id=6035053285";
		["low_priority"] = "http://www.roblox.com/asset/?id=6035056491";
		["font_download"] = "http://www.roblox.com/asset/?id=6035053275";
		["shield"] = "http://www.roblox.com/asset/?id=6035078889";
		["waves"] = "http://www.roblox.com/asset/?id=6035078898";
		["select_all"] = "http://www.roblox.com/asset/?id=6035067834";
		["dynamic_feed"] = "http://www.roblox.com/asset/?id=6035053289";
		["mail"] = "http://www.roblox.com/asset/?id=6035056477";
		["amp_stories"] = "http://www.roblox.com/asset/?id=6035047382";
		["filter_list"] = "http://www.roblox.com/asset/?id=6035053294";
		["send"] = "http://www.roblox.com/asset/?id=6035067832";
		["create"] = "http://www.roblox.com/asset/?id=6035053304";
		["stream"] = "http://www.roblox.com/asset/?id=6035078897";
		["next_week"] = "http://www.roblox.com/asset/?id=6035067835";
		["inbox"] = "http://www.roblox.com/asset/?id=6035067831";
		["add_link"] = "http://www.roblox.com/asset/?id=6035047374";
		["content_copy"] = "http://www.roblox.com/asset/?id=6035053278";
		["remove_circle"] = "http://www.roblox.com/asset/?id=6035067837";
		["add_circle_outline"] = "http://www.roblox.com/asset/?id=6035047391";
		["block"] = "http://www.roblox.com/asset/?id=6035047387";
		["tag"] = "http://www.roblox.com/asset/?id=6035078895";
		["beach_access"] = "http://www.roblox.com/asset/?id=6035107923";
		["stroller"] = "http://www.roblox.com/asset/?id=6035161535";
		["family_restroom"] = "http://www.roblox.com/asset/?id=6035121916";
		["corporate_fare"] = "http://www.roblox.com/asset/?id=6035121908";
		["no_meeting_room"] = "http://www.roblox.com/asset/?id=6035153649";
		["do_not_touch"] = "http://www.roblox.com/asset/?id=6035121915";
		["ac_unit"] = "http://www.roblox.com/asset/?id=6035107929";
		["business_center"] = "http://www.roblox.com/asset/?id=6035107933";
		["spa"] = "http://www.roblox.com/asset/?id=6035153639";
		["no_flash"] = "http://www.roblox.com/asset/?id=6035145424";
		["no_cell"] = "http://www.roblox.com/asset/?id=6035145376";
		["room_service"] = "http://www.roblox.com/asset/?id=6035153648";
		["tapas"] = "http://www.roblox.com/asset/?id=6035161533";
		["microwave"] = "http://www.roblox.com/asset/?id=6035145367";
		["meeting_room"] = "http://www.roblox.com/asset/?id=6035145361";
		["wash"] = "http://www.roblox.com/asset/?id=6035161540";
		["escalator"] = "http://www.roblox.com/asset/?id=6035121939";
		["house_siding"] = "http://www.roblox.com/asset/?id=6035145393";
		["food_bank"] = "http://www.roblox.com/asset/?id=6035121921";
		["foundation"] = "http://www.roblox.com/asset/?id=6035121918";
		["elevator"] = "http://www.roblox.com/asset/?id=6035121912";
		["room_preferences"] = "http://www.roblox.com/asset/?id=6035153642";
		["do_not_step"] = "http://www.roblox.com/asset/?id=6035121910";
		["free_breakfast"] = "http://www.roblox.com/asset/?id=6035145363";
		["house"] = "http://www.roblox.com/asset/?id=6035145364";
		["child_care"] = "http://www.roblox.com/asset/?id=6035107927";
		["night_shelter"] = "http://www.roblox.com/asset/?id=6035145378";
		["child_friendly"] = "http://www.roblox.com/asset/?id=6035121942";
		["checkroom"] = "http://www.roblox.com/asset/?id=6035107931";
		["hot_tub"] = "http://www.roblox.com/asset/?id=6035145382";
		["dry"] = "http://www.roblox.com/asset/?id=6035121909";
		["charging_station"] = "http://www.roblox.com/asset/?id=6035107925";
		["all_inclusive"] = "http://www.roblox.com/asset/?id=6035107920";
		["bento"] = "http://www.roblox.com/asset/?id=6035107924";
		["no_backpack"] = "http://www.roblox.com/asset/?id=6035145368";
		["storefront"] = "http://www.roblox.com/asset/?id=6035161534";
		["no_food"] = "http://www.roblox.com/asset/?id=6035145372";
		["backpack"] = "http://www.roblox.com/asset/?id=6035107928";
		["stairs"] = "http://www.roblox.com/asset/?id=6035153637";
		["carpenter"] = "http://www.roblox.com/asset/?id=6035107955";
		["no_stroller"] = "http://www.roblox.com/asset/?id=6035153661";
		["roofing"] = "http://www.roblox.com/asset/?id=6035153656";
		["umbrella"] = "http://www.roblox.com/asset/?id=6035161550";
		["sports_bar"] = "http://www.roblox.com/asset/?id=6035153638";
		["apartment"] = "http://www.roblox.com/asset/?id=6035107922";
		["smoke_free"] = "http://www.roblox.com/asset/?id=6035153647";
		["pool"] = "http://www.roblox.com/asset/?id=6035153655";
		["bathtub"] = "http://www.roblox.com/asset/?id=6035107939";
		["no_drinks"] = "http://www.roblox.com/asset/?id=6035145390";
		["escalator_warning"] = "http://www.roblox.com/asset/?id=6035121930";
		["wheelchair_pickup"] = "http://www.roblox.com/asset/?id=6035161536";
		["smoking_rooms"] = "http://www.roblox.com/asset/?id=6035153636";
		["rice_bowl"] = "http://www.roblox.com/asset/?id=6035153662";
		["tty"] = "http://www.roblox.com/asset/?id=6035161541";
		["no_photography"] = "http://www.roblox.com/asset/?id=6035153664";
		["casino"] = "http://www.roblox.com/asset/?id=6035107936";
		["fence"] = "http://www.roblox.com/asset/?id=6035121923";
		["grass"] = "http://www.roblox.com/asset/?id=6035145359";
		["countertops"] = "http://www.roblox.com/asset/?id=6035121914";
		["kitchen"] = "http://www.roblox.com/asset/?id=6035145362";
		["golf_course"] = "http://www.roblox.com/asset/?id=6035145423";
		["soap"] = "http://www.roblox.com/asset/?id=6035153645";
		["water_damage"] = "http://www.roblox.com/asset/?id=6035161563";
		["airport_shuttle"] = "http://www.roblox.com/asset/?id=6035107921";
		["fitness_center"] = "http://www.roblox.com/asset/?id=6035121907";
		["baby_changing_station"] = "http://www.roblox.com/asset/?id=6035107930";
		["fire_extinguisher"] = "http://www.roblox.com/asset/?id=6035121913";
		["sparkle"] = "http://www.roblox.com/asset/?id=4483362748"
	}
}

-- Other Variables
local request = (syn and syn.request) or (http and http.request) or http_request or nil
local tweeninfo = TweenInfo.new(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
local PresetGradients = {
	["Nightlight (Classic)"] = {Color3.fromRGB(147, 255, 239), Color3.fromRGB(201,211,233), Color3.fromRGB(255, 167, 227)},
	["Nightlight (Neo)"] = {Color3.fromRGB(117, 164, 206), Color3.fromRGB(123, 201, 201), Color3.fromRGB(224, 138, 175)},
	Starlight = {Color3.fromRGB(147, 255, 239), Color3.fromRGB(181, 206, 241), Color3.fromRGB(214, 158, 243)},
	Solar = {Color3.fromRGB(242, 157, 76), Color3.fromRGB(240, 179, 81), Color3.fromRGB(238, 201, 86)},
	Sparkle = {Color3.fromRGB(199, 130, 242), Color3.fromRGB(221, 130, 238), Color3.fromRGB(243, 129, 233)},
	Lime = {Color3.fromRGB(170, 255, 127), Color3.fromRGB(163, 220, 138), Color3.fromRGB(155, 185, 149)},
	Vine = {Color3.fromRGB(0, 191, 143), Color3.fromRGB(0, 126, 94), Color3.fromRGB(0, 61, 46)},
	Cherry = {Color3.fromRGB(148, 54, 54), Color3.fromRGB(168, 67, 70), Color3.fromRGB(188, 80, 86)},
	Daylight = {Color3.fromRGB(51, 156, 255), Color3.fromRGB(89, 171, 237), Color3.fromRGB(127, 186, 218)},
	Blossom = {Color3.fromRGB(255, 165, 243), Color3.fromRGB(213, 129, 231), Color3.fromRGB(170, 92, 218)},
}

local function GetIcon(icon, source)
	if source == "Custom" then
		return "rbxassetid://" .. icon
	elseif source == "Lucide" then
		-- full credit to latte softworks :)
		local iconData = not isStudio and game:HttpGet("https://raw.githubusercontent.com/latte-soft/lucide-roblox/refs/heads/master/lib/Icons.luau")
		local icons = isStudio and IconModule.Lucide or loadstring(iconData)()
		if not isStudio then
			icon = string.match(string.lower(icon), "^%s*(.*)%s*$") :: string
			local sizedicons = icons['48px']

			local r = sizedicons[icon]
			if not r then
				error("Lucide Icons: Failed to find icon by the name of \"" .. icon .. "\.", 2)
			end

			local rirs = r[2]
			local riro = r[3]

			if type(r[1]) ~= "number" or type(rirs) ~= "table" or type(riro) ~= "table" then
				error("Lucide Icons: Internal error: Invalid auto-generated asset entry")
			end

			local irs = Vector2.new(rirs[1], rirs[2])
			local iro = Vector2.new(riro[1], riro[2])

			local asset = {
				id = r[1],
				imageRectSize = irs,
				imageRectOffset = iro,
			}

			return asset
		else
			return "rbxassetid://10723434557"
		end
	else	
		if icon ~= nil and IconModule[source] then
			local sourceicon = IconModule[source]
			return sourceicon[icon]
		else
			return nil
		end
	end
end

local function RemoveTable(tablre, value)
	for i,v in pairs(tablre) do
		if tostring(v) == tostring(value) then
			table.remove(tablre, i)
		end
	end
end

local function Kwargify(defaults, passed)
	for i, v in pairs(defaults) do
		if passed[i] == nil then
			passed[i] = v
		end
	end
	return passed
end

local function PackColor(Color)
	return {R = Color.R * 255, G = Color.G * 255, B = Color.B * 255}
end    

local function UnpackColor(Color)
	return Color3.fromRGB(Color.R, Color.G, Color.B)
end

function tween(object, goal, callback, tweenin)
	local tween = TweenService:Create(object,tweenin or tweeninfo, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

local function BlurModule(Frame)
	local RunService = game:GetService('RunService')
	local camera = workspace.CurrentCamera
	local MTREL = "Glass"
	local binds = {}
	local root = Instance.new('Folder', camera)
	root.Name = 'LunaBlur'

	local gTokenMH = 99999999
	local gToken = math.random(1, gTokenMH)

	local DepthOfField = Instance.new('DepthOfFieldEffect', game:GetService('Lighting'))
	DepthOfField.FarIntensity = 0
	DepthOfField.FocusDistance = 51.6
	DepthOfField.InFocusRadius = 50
	DepthOfField.NearIntensity = 6
	DepthOfField.Name = "DPT_"..gToken

	local frame = Instance.new('Frame')
	frame.Parent = Frame
	frame.Size = UDim2.new(0.95, 0, 0.95, 0)
	frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.BackgroundTransparency = 1

	local GenUid; do -- Generate unique names for RenderStepped bindings
		local id = 0
		function GenUid()
			id = id + 1
			return 'neon::'..tostring(id)
		end
	end

	do
		local function IsNotNaN(x)
			return x == x
		end
		local continue = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
		while not continue do
			RunService.RenderStepped:wait()
			continue = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
		end
	end

	local DrawQuad; do

		local acos, max, pi, sqrt = math.acos, math.max, math.pi, math.sqrt
		local sz = 0.22
		local function DrawTriangle(v1, v2, v3, p0, p1) -- I think Stravant wrote this function

			local s1 = (v1 - v2).magnitude
			local s2 = (v2 - v3).magnitude
			local s3 = (v3 - v1).magnitude
			local smax = max(s1, s2, s3)
			local A, B, C
			if s1 == smax then
				A, B, C = v1, v2, v3
			elseif s2 == smax then
				A, B, C = v2, v3, v1
			elseif s3 == smax then
				A, B, C = v3, v1, v2
			end

			local para = ( (B-A).x*(C-A).x + (B-A).y*(C-A).y + (B-A).z*(C-A).z ) / (A-B).magnitude
			local perp = sqrt((C-A).magnitude^2 - para*para)
			local dif_para = (A - B).magnitude - para

			local st = CFrame.new(B, A)
			local za = CFrame.Angles(pi/2,0,0)

			local cf0 = st

			local Top_Look = (cf0 * za).lookVector
			local Mid_Point = A + CFrame.new(A, B).lookVector * para
			local Needed_Look = CFrame.new(Mid_Point, C).lookVector
			local dot = Top_Look.x*Needed_Look.x + Top_Look.y*Needed_Look.y + Top_Look.z*Needed_Look.z

			local ac = CFrame.Angles(0, 0, acos(dot))

			cf0 = cf0 * ac
			if ((cf0 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf0 = cf0 * CFrame.Angles(0, 0, -2*acos(dot))
			end
			cf0 = cf0 * CFrame.new(0, perp/2, -(dif_para + para/2))

			local cf1 = st * ac * CFrame.Angles(0, pi, 0)
			if ((cf1 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf1 = cf1 * CFrame.Angles(0, 0, 2*acos(dot))
			end
			cf1 = cf1 * CFrame.new(0, perp/2, dif_para/2)

			if not p0 then
				p0 = Instance.new('Part')
				p0.FormFactor = 'Custom'
				p0.TopSurface = 0
				p0.BottomSurface = 0
				p0.Anchored = true
				p0.CanCollide = false
				p0.CastShadow = false
				p0.Material = MTREL
				p0.Size = Vector3.new(sz, sz, sz)
				local mesh = Instance.new('SpecialMesh', p0)
				mesh.MeshType = 2
				mesh.Name = 'WedgeMesh'
			end
			p0.WedgeMesh.Scale = Vector3.new(0, perp/sz, para/sz)
			p0.CFrame = cf0

			if not p1 then
				p1 = p0:clone()
			end
			p1.WedgeMesh.Scale = Vector3.new(0, perp/sz, dif_para/sz)
			p1.CFrame = cf1

			return p0, p1
		end

		function DrawQuad(v1, v2, v3, v4, parts)
			parts[1], parts[2] = DrawTriangle(v1, v2, v3, parts[1], parts[2])
			parts[3], parts[4] = DrawTriangle(v3, v2, v4, parts[3], parts[4])
		end
	end

	if binds[frame] then
		return binds[frame].parts
	end

	local uid = GenUid()
	local parts = {}
	local f = Instance.new('Folder', root)
	f.Name = frame.Name

	local parents = {}
	do
		local function add(child)
			if child:IsA'GuiObject' then
				parents[#parents + 1] = child
				add(child.Parent)
			end
		end
		add(frame)
	end

	local function UpdateOrientation(fetchProps)
		local properties = {
			Transparency = 0.98;
			BrickColor = BrickColor.new('Institutional white');
		}
		local zIndex = 1 - 0.05*frame.ZIndex

		local tl, br = frame.AbsolutePosition, frame.AbsolutePosition + frame.AbsoluteSize
		local tr, bl = Vector2.new(br.x, tl.y), Vector2.new(tl.x, br.y)
		do
			local rot = 0;
			for _, v in ipairs(parents) do
				rot = rot + v.Rotation
			end
			if rot ~= 0 and rot%180 ~= 0 then
				local mid = tl:lerp(br, 0.5)
				local s, c = math.sin(math.rad(rot)), math.cos(math.rad(rot))
				local vec = tl
				tl = Vector2.new(c*(tl.x - mid.x) - s*(tl.y - mid.y), s*(tl.x - mid.x) + c*(tl.y - mid.y)) + mid
				tr = Vector2.new(c*(tr.x - mid.x) - s*(tr.y - mid.y), s*(tr.x - mid.x) + c*(tr.y - mid.y)) + mid
				bl = Vector2.new(c*(bl.x - mid.x) - s*(bl.y - mid.y), s*(bl.x - mid.x) + c*(bl.y - mid.y)) + mid
				br = Vector2.new(c*(br.x - mid.x) - s*(br.y - mid.y), s*(br.x - mid.x) + c*(br.y - mid.y)) + mid
			end
		end
		DrawQuad(
			camera:ScreenPointToRay(tl.x, tl.y, zIndex).Origin, 
			camera:ScreenPointToRay(tr.x, tr.y, zIndex).Origin, 
			camera:ScreenPointToRay(bl.x, bl.y, zIndex).Origin, 
			camera:ScreenPointToRay(br.x, br.y, zIndex).Origin, 
			parts
		)
		if fetchProps then
			for _, pt in pairs(parts) do
				pt.Parent = f
			end
			for propName, propValue in pairs(properties) do
				for _, pt in pairs(parts) do
					pt[propName] = propValue
				end
			end
		end

	end

	UpdateOrientation(true)
	RunService:BindToRenderStep(uid, 2000, UpdateOrientation)
end

local function unpackt(array : table)

	local val = ""
	local i = 0
	for _,v in pairs(array) do
		if i < 3 then
			val = val .. v .. ", "
			i += 1
		else
			val = "Various"
			break
		end
	end

	return val
end

-- Interface Management
local LunaUI = isStudio and script.Parent:WaitForChild("Luna UI") or game:GetObjects("rbxassetid://86467455075715")[1]

local SizeBleh = nil

local function Hide(Window, bind, notif)
	SizeBleh = Window.Size
	bind = string.split(tostring(bind), "Enum.KeyCode.")
	bind = bind[2]
	if notif then
		Luna:Notification({Title = "Interface Hidden", Content = "The interface has been hidden, you may reopen the interface by Pressing the UI Bind In Settings ("..tostring(bind)..")", Icon = "visibility_off"})
	end
	tween(Window, {BackgroundTransparency = 1})
	tween(Window.Elements, {BackgroundTransparency = 1})
	tween(Window.Line, {BackgroundTransparency = 1})
	tween(Window.Title.Title, {TextTransparency = 1})
	tween(Window.Title.subtitle, {TextTransparency = 1})
	tween(Window.Logo, {ImageTransparency = 1})
	tween(Window.Navigation.Line, {BackgroundTransparency = 1})

	for _, TopbarButton in ipairs(Window.Controls:GetChildren()) do
		if TopbarButton.ClassName == "Frame" then
			tween(TopbarButton, {BackgroundTransparency = 1})
			tween(TopbarButton.UIStroke, {Transparency = 1})
			tween(TopbarButton.ImageLabel, {ImageTransparency = 1})
			TopbarButton.Visible = false
		end
	end
	for _, tabbtn in ipairs(Window.Navigation.Tabs:GetChildren()) do
		if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "InActive Template" then
			TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
			TweenService:Create(tabbtn.ImageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
			TweenService:Create(tabbtn.DropShadowHolder.DropShadow, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
			TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
		end
	end

	task.wait(0.28)
	Window.Size = UDim2.new(0,0,0,0)
	Window.Parent.ShadowHolder.Visible = false
	task.wait()
	Window.Elements.Parent.Visible = false
	Window.Visible = false
end


if gethui then
	LunaUI.Parent = gethui()
elseif syn and syn.protect_gui then 
	syn.protect_gui(LunaUI)
	LunaUI.Parent = CoreGui
elseif not isStudio and CoreGui:FindFirstChild("RobloxGui") then
	LunaUI.Parent = CoreGui:FindFirstChild("RobloxGui")
elseif not isStudio then
	LunaUI.Parent = CoreGui
end

if gethui then
	for _, Interface in ipairs(gethui():GetChildren()) do
		if Interface.Name == LunaUI.Name and Interface ~= LunaUI then
			Hide(Interface.SmartWindow)
			Interface.Enabled = false
			Interface.Name = "Luna-Old"
		end
	end
elseif not isStudio then
	for _, Interface in ipairs(CoreGui:GetChildren()) do
		if Interface.Name == LunaUI.Name and Interface ~= LunaUI then
			Hide(Interface.SmartWindow)
			Interface.Enabled = false
			Interface.Name = "Luna-Old"
		end
	end
end

LunaUI.Enabled = false
LunaUI.SmartWindow.Visible = false
LunaUI.Notifications.Template.Visible = false
LunaUI.DisplayOrder = 1000000000

local Main : Frame = LunaUI.SmartWindow
local Dragger = Main.Drag
local dragBar = LunaUI.Drag
local dragInteract = dragBar and dragBar.Interact or nil
local dragBarCosmetic = dragBar and dragBar.Drag or nil
local Elements = Main.Elements.Interactions
local LoadingFrame = Main.LoadingFrame
local Navigation = Main.Navigation
local Tabs = Navigation.Tabs
local Notifications = LunaUI.Notifications
local KeySystem : Frame = Main.KeySystem

-- local function LoadConfiguration(Configuration, autoload)
-- 	local Data = HttpService:JSONDecode(Configuration)
-- 	local changed
-- 	local notified = false

-- 	-- Iterate through current UI elements' flags
-- 	for FlagName, Flag in pairs(Luna.Flags) do
-- 		local FlagValue = Data[FlagName]

-- 		if FlagValue then
-- 			task.spawn(function()
-- 				if Flag.Type == "ColorPicker" then
-- 					changed = true
-- 					Flag:Set(UnpackColor(FlagValue))
-- 				else
-- 					if (Flag.CurrentValue or Flag.CurrentKeybind or Flag.CurrentOption or Flag.Color) ~= FlagValue then 
-- 						changed = true
-- 						Flag:Set(FlagValue) 	
-- 					end
-- 				end
-- 			end)
-- 		else
-- 			notified = true
-- 			Luna:Notification({Title = "Config Error", Content = "Luna was unable to load or find '"..FlagName.. "'' in the current script. Check ".. website .." for help.", Icon = "flag"})
-- 		end
-- 	end
-- 	if autoload and notified == false then
-- 		Luna:Notification({
-- 			Title = "Config Autoloaded",
-- 			Content = "The Configuration Has Been Automatically Loaded. Thank You For Using Luna Library",
-- 			Icon = "file-code-2",
-- 			ImageSource = "Lucide"
-- 		})
-- 	elseif notified == false then
-- 		Luna:Notification({
-- 			Title = "Config Loaded",
-- 			Content = "The Configuration Has Been Loaded. Thank You For Using Luna Library",
-- 			Icon = "file-code-2",
-- 			ImageSource = "Lucide"
-- 		})
-- 	end

-- 	return changed
-- end

-- local function SaveConfiguration(Configuration, ConfigFolder, hasRoot)
-- 	local Data = {}
-- 	for i,v in pairs(Luna.Flags) do
-- 		if v.Type == "ColorPicker" then
-- 			Data[i] = PackColor(v.Color)
-- 		else
-- 			Data[i] = v.CurrentValue or v.CurrentBind or v.CurrentOption or v.Color
-- 		end
-- 	end	
-- 	if hasRoot then
-- 		writefile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. Configuration .. ConfigurationExtension, tostring(HttpService:JSONEncode(Data)))
-- 	else
-- 		writefile(ConfigurationFolder .. "/" .. "/" .. ConfigFolder .. Configuration .. ConfigurationExtension, tostring(HttpService:JSONEncode(Data)))
-- 	end
-- end

-- local function SetAutoload(ConfigName, ConfigFolder, hasRoot)
-- 	if hasRoot then
-- 		writefile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. "autoload.txt", tostring(ConfigName) .. ConfigurationExtension)
-- 	else
-- 		writefile(ConfigurationFolder .. "/" .. "/" .. ConfigFolder .. "autoload.txt", tostring(ConfigName) .. ConfigurationExtension)
-- 	end
-- end

-- local function LoadAutoLoad(ConfigFolder, hasRoot)
-- 	local autoload = isfile(ConfigurationFolder .. "/" .. "/" .. ConfigFolder .. "autoload.txt")
-- 	if hasRoot then
-- 		autoload = isfile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. "autoload.txt")
-- 	end

-- 	if autoload then
-- 		if hasRoot then
-- 			LoadConfiguration(readfile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. readfile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. "autoload.txt")), true)
-- 		else
-- 			LoadConfiguration(readfile(ConfigurationFolder .. "/" .. ConfigFolder .. "/" .. readfile(ConfigurationFolder .. "/" .. ConfigFolder .. "/" .. "autoload.txt")), true)
-- 		end
-- 	end
-- end

local function Draggable(Bar, Window, enableTaptic, tapticOffset)
	pcall(function()
		local Dragging, DragInput, MousePos, FramePos

		local function connectFunctions()
			if dragBar and enableTaptic then
				dragBar.MouseEnter:Connect(function()
					if not Dragging then
						TweenService:Create(dragBarCosmetic, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {BackgroundTransparency = 0.5, Size = UDim2.new(0, 120, 0, 4)}):Play()
					end
				end)

				dragBar.MouseLeave:Connect(function()
					if not Dragging then
						TweenService:Create(dragBarCosmetic, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {BackgroundTransparency = 0.7, Size = UDim2.new(0, 100, 0, 4)}):Play()
					end
				end)
			end
		end

		connectFunctions()

		Bar.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				MousePos = Input.Position
				FramePos = Window.Position

				if enableTaptic then
					TweenService:Create(dragBarCosmetic, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 110, 0, 4), BackgroundTransparency = 0}):Play()
				end

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
						connectFunctions()

						if enableTaptic then
							TweenService:Create(dragBarCosmetic, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 4), BackgroundTransparency = 0.7}):Play()
						end
					end
				end)
			end
		end)

		Bar.InputChanged:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
				DragInput = Input
			end
		end)

		UserInputService.InputChanged:Connect(function(Input)
			if Input == DragInput and Dragging then
				local Delta = Input.Position - MousePos

				local newMainPosition = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + Delta.X, FramePos.Y.Scale, FramePos.Y.Offset + Delta.Y)
				TweenService:Create(Window, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = newMainPosition}):Play()

				if dragBar then
					local newDragBarPosition = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + Delta.X, FramePos.Y.Scale, FramePos.Y.Offset + Delta.Y + 240)
					dragBar.Position = newDragBarPosition
				end
			end
		end)

	end)
end

function Luna:Notification(data) -- action e.g open messages
	task.spawn(function()
		data = Kwargify({
			Title = "Missing Title",
			Content = "Missing or Unknown Content",
			Icon = "view_in_ar",
			ImageSource = "Material"
		}, data or {})

		-- Notification Object Creation
		local newNotification = Notifications.Template:Clone()
		newNotification.Name = data.Title
		newNotification.Parent = Notifications
		newNotification.LayoutOrder = #Notifications:GetChildren()
		newNotification.Visible = false
		BlurModule(newNotification)

		-- Set Data
		newNotification.Title.Text = data.Title
		newNotification.Description.Text = data.Content 
		newNotification.Icon.Image = GetIcon(data.Icon, data.ImageSource)

		-- Set initial transparency values
		newNotification.BackgroundTransparency = 1
		newNotification.Title.TextTransparency = 1
		newNotification.Description.TextTransparency = 1
		newNotification.UIStroke.Transparency = 1
		newNotification.Shadow.ImageTransparency = 1
		newNotification.Icon.ImageTransparency = 1
		newNotification.Icon.BackgroundTransparency = 1

		task.wait()

		-- Calculate textbounds and set initial values
		newNotification.Size = UDim2.new(1, 0, 0, -Notifications:FindFirstChild("UIListLayout").Padding.Offset)

		newNotification.Icon.Size = UDim2.new(0, 28, 0, 28)
		newNotification.Icon.Position = UDim2.new(0, 16, 0.5, -1)

		newNotification.Visible = true

		newNotification.Description.Size = UDim2.new(1, -65, 0, math.huge)
		local bounds = newNotification.Description.TextBounds.Y + 55
		newNotification.Description.Size = UDim2.new(1,-65,0, bounds - 35)
		newNotification.Size = UDim2.new(1, 0, 0, -Notifications:FindFirstChild("UIListLayout").Padding.Offset)
		TweenService:Create(newNotification, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, 0, 0, bounds)}):Play()

		task.wait(0.15)
		TweenService:Create(newNotification, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.45}):Play()
		TweenService:Create(newNotification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()

		task.wait(0.05)

		TweenService:Create(newNotification.Icon, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()

		task.wait(0.05)
		TweenService:Create(newNotification.Description, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0.35}):Play()
		TweenService:Create(newNotification.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.95}):Play()
		TweenService:Create(newNotification.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0.82}):Play()

		local waitDuration = math.min(math.max((#newNotification.Description.Text * 0.1) + 2.5, 3), 10)
		task.wait(data.Duration or waitDuration)

		newNotification.Icon.Visible = false
		TweenService:Create(newNotification, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
		TweenService:Create(newNotification.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
		TweenService:Create(newNotification.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
		TweenService:Create(newNotification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
		TweenService:Create(newNotification.Description, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()

		TweenService:Create(newNotification, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, -90, 0, 0)}):Play()

		task.wait(1)

		TweenService:Create(newNotification, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, -90, 0, -Notifications:FindFirstChild("UIListLayout").Padding.Offset)}):Play()

		newNotification.Visible = false
		newNotification:Destroy()
	end)
end

local function Unhide(Window, currentTab)
	Window.Size = SizeBleh
	Window.Elements.Visible = true
	Window.Visible = true
	task.wait()
	tween(Window, {BackgroundTransparency = 0.2})
	tween(Window.Elements, {BackgroundTransparency = 0.08})
	tween(Window.Line, {BackgroundTransparency = 0})
	tween(Window.Title.Title, {TextTransparency = 0})
	tween(Window.Title.subtitle, {TextTransparency = 0})
	tween(Window.Logo, {ImageTransparency = 0})
	tween(Window.Navigation.Line, {BackgroundTransparency = 0})

	for _, TopbarButton in ipairs(Window.Controls:GetChildren()) do
		if TopbarButton.ClassName == "Frame" and TopbarButton.Name ~= "Theme" then
			TopbarButton.Visible = true
			tween(TopbarButton, {BackgroundTransparency = 0.25})
			tween(TopbarButton.UIStroke, {Transparency = 0.5})
			tween(TopbarButton.ImageLabel, {ImageTransparency = 0.25})
		end
	end
	for _, tabbtn in ipairs(Window.Navigation.Tabs:GetChildren()) do
		if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "InActive Template" then
			if tabbtn.Name == currentTab then
				TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
				TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.41}):Play()
			end
			TweenService:Create(tabbtn.ImageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()
			TweenService:Create(tabbtn.DropShadowHolder.DropShadow, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
		end
	end

end

local MainSize
local MinSize 
if Camera.ViewportSize.X > 774 and Camera.ViewportSize.Y > 503 then
	MainSize = UDim2.fromOffset(675, 424)
	MinSize = UDim2.fromOffset(500, 42)
else
	MainSize = UDim2.fromOffset(Camera.ViewportSize.X - 100, Camera.ViewportSize.Y - 100)
	MinSize = UDim2.fromOffset(Camera.ViewportSize.X - 275, 42)
end

local function Maximise(Window)
	Window.Controls.ToggleSize.ImageLabel.Image = "rbxassetid://10137941941"
	tween(Window, {Size = MainSize})
	Window.Elements.Visible = true
	Window.Navigation.Visible = true
end

local function Minimize(Window)
	Window.Controls.ToggleSize.ImageLabel.Image = "rbxassetid://11036884234"
	Window.Elements.Visible = false
	Window.Navigation.Visible = false
	tween(Window, {Size = MinSize})
end


function Luna:CreateWindow(WindowSettings)

	WindowSettings = Kwargify({
		Name = "Luna UI Example Window",
		Subtitle = "",
		LogoID = "6031097225",
		LoadingEnabled = true,
		LoadingTitle = "Luna Interface Suite",
		LoadingSubtitle = "by Nebula Softworks",

		ConfigSettings = {},

		KeySystem = false,
		KeySettings = {}
	}, WindowSettings or {})

	WindowSettings.ConfigSettings = Kwargify({
		RootFolder = nil,
		ConfigFolder = "Big Hub"
	}, WindowSettings.ConfigSettings or {})

	WindowSettings.KeySettings = Kwargify({
		Title = WindowSettings.Name,
		Subtitle = "Key System",
		Note = "No Instructions",
		SaveInRoot = false, -- Enabling will save the key in your RootFolder (YOU MUST HAVE ONE BEFORE ENABLING THIS OPTION)
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		Key = {""}, -- List of keys that will be accepted by the system, please use a system like Pelican or Luarmor that provide key strings based on your HWID since putting a simple string is very easy to bypass
		SecondAction = {}	
	}, WindowSettings.KeySettings or {})

	WindowSettings.KeySettings.SecondAction = Kwargify({
		Enabled = false,
		Type = "Discord", -- Link/Discord
		Parameter = "" -- for discord, add the invite link like home tab. for link, type the link of ur key sys
	}, WindowSettings.KeySettings.SecondAction)

	local Passthrough = false

	local Window = { Bind = Enum.KeyCode.K, CurrentTab = nil, State = true, Size = false, Settings = nil }

	Main.Title.Title.Text = WindowSettings.Name
	Main.Title.subtitle.Text = WindowSettings.Subtitle
	Main.Logo.Image = "rbxassetid://" .. WindowSettings.LogoID
	Main.Visible = true
	Main.BackgroundTransparency = 1
	Main.Size = MainSize
	Main.Size = UDim2.fromOffset(Main.Size.X.Offset - 70, Main.Size.Y.Offset - 55)
	Main.Parent.ShadowHolder.Size = Main.Size
	LoadingFrame.Frame.Frame.Title.TextTransparency = 1
	LoadingFrame.Frame.Frame.Subtitle.TextTransparency = 1
	LoadingFrame.Version.TextTransparency = 1
	LoadingFrame.Frame.ImageLabel.ImageTransparency = 1

	tween(Elements.Parent, {BackgroundTransparency = 1})
	Elements.Parent.Visible = false

	LoadingFrame.Frame.Frame.Title.Text = WindowSettings.LoadingTitle
	LoadingFrame.Frame.Frame.Subtitle.Text = WindowSettings.LoadingSubtitle
	LoadingFrame.Version.Text = LoadingFrame.Frame.Frame.Title.Text == "Luna Interface Suite" and Release or "Luna UI"

	Navigation.Player.icon.ImageLabel.Image = Players:GetUserThumbnailAsync(Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
	Navigation.Player.Namez.Text = Players.LocalPlayer.DisplayName
	Navigation.Player.TextLabel.Text = Players.LocalPlayer.Name

	for i,v in pairs(Main.Controls:GetChildren()) do
		v.Visible = false
	end

	Main:GetPropertyChangedSignal("Position"):Connect(function()
		Main.Parent.ShadowHolder.Position = Main.Position
	end)
	Main:GetPropertyChangedSignal("Size"):Connect(function()
		Main.Parent.ShadowHolder.Size = Main.Size
	end)

	LoadingFrame.Visible = true

	-- pcall(function()
	-- 	if not isfolder(ConfigurationFolder) then
	-- 		makefolder(ConfigurationFolder)
	-- 	end
	-- 	if WindowSettings.ConfigSettings.RootFolder then
	-- 		if not isfolder(ConfigurationFolder .. WindowSettings.ConfigSettings.RootFolder) then
	-- 			makefolder(ConfigurationFolder .. WindowSettings.ConfigSettings.RootFolder)
	-- 			if not isfolder(ConfigurationFolder .. WindowSettings.ConfigSettings.RootFolder .. WindowSettings.ConfigSettings.ConfigFolder) then
	-- 				makefolder(ConfigurationFolder .. WindowSettings.ConfigSettings.RootFolder .. WindowSettings.ConfigSettings.ConfigFolder)
	-- 			end
	-- 		end
	-- 	else
	-- 		if not isfolder(ConfigurationFolder .. WindowSettings.ConfigSettings.ConfigFolder) then
	-- 			makefolder(ConfigurationFolder .. WindowSettings.ConfigSettings.ConfigFolder)
	-- 		end
	-- 	end

	-- 	LoadAutoLoad(WindowSettings.ConfigSettings.ConfigFolder, WindowSettings.ConfigSettings.RootFolder)
	-- end)

	LunaUI.Enabled = true

	BlurModule(Main)

	if WindowSettings.KeySystem then
		local KeySettings = WindowSettings.KeySettings
		
		Draggable(Dragger, Main)
		Draggable(LunaUI.MobileSupport, LunaUI.MobileSupport)
		if dragBar then Draggable(dragInteract, Main, true, 255) end

		if not WindowSettings.KeySettings then
			Passthrough = true
			return
		end
		
		WindowSettings.KeySettings.FileName = "key"

		if typeof(WindowSettings.KeySettings.Key) == "string" then WindowSettings.KeySettings.Key = {WindowSettings.KeySettings.Key} end

		local direc = WindowSettings.KeySettings.SaveInRoot and "Luna/Configurations/" .. WindowSettings.ConfigSettings.RootFolder .. "/" .. WindowSettings.ConfigSettings.ConfigFolder .. "/Key System/" or "Luna/Configurations/" ..  WindowSettings.ConfigSettings.ConfigFolder .. "/Key System/"

		if isfile and isfile(direc .. WindowSettings.KeySettings.FileName .. ".luna") then
			for i, Key in ipairs(WindowSettings.KeySettings.Key) do
				if string.find(readfile(direc .. WindowSettings.KeySettings.FileName .. ".luna"), Key) then
					Passthrough = true
					break
				end
			end
		end

		if not Passthrough then

			local Btn = KeySystem.Action.Copy
			local typesys = KeySettings.SecondAction.Type
			
			if typesys == "Discord" then
				Btn = KeySystem.Action.Discord
			end

			local AttemptsRemaining = math.random(2, 5)

			KeySystem.Visible = true
			KeySystem.Title.Text = WindowSettings.KeySettings.Title
			KeySystem.Subtitle.Text = WindowSettings.KeySettings.Subtitle
			KeySystem.textshit.Text = WindowSettings.KeySettings.Note

			if KeySettings.SecondAction.Enabled == true then
				Btn.Visible = true
			end
			
			Btn.Interact.MouseButton1Click:Connect(function()
				if typesys == "Discord" then
					setclipboard(tostring("https://discord.gg/"..KeySettings.SecondAction.Parameter)) -- Hunter if you see this I added copy also was too lazy to send u msg
					if request then
						request({
							Url = 'http://127.0.0.1:6463/rpc?v=1',
							Method = 'POST',
							Headers = {
								['Content-Type'] = 'application/json',
								Origin = 'https://discord.com'
							},
							Body = HttpService:JSONEncode({
								cmd = 'INVITE_BROWSER',
								nonce = HttpService:GenerateGUID(false),
								args = {code = KeySettings.SecondAction.Parameter}
							})
						})
					end
				else
					setclipboard(tostring(KeySettings.SecondAction.Parameter))
				end
			end)

			KeySystem.Action.Submit.Interact.MouseButton1Click:Connect(function()
				if #KeySystem.Input.InputBox.Text == 0 then return end
				local KeyFound = false
				local FoundKey = ''
				for _, Key in ipairs(WindowSettings.KeySettings.Key) do
					if KeySystem.Input.InputBox.Text == Key then
						KeyFound = true
						FoundKey = Key
						break
					end
				end
				if KeyFound then 
					for _, instance in pairs(KeySystem:GetDescendants()) do
						if instance.ClassName ~= "UICorner" and instance.ClassName ~= "UIPadding" then
							if instance.ClassName ~= "UIStroke" then
								tween(instance, {BackgroundTransparency = 1}, nil,TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
							end
							if instance.ClassName == "ImageButton" then
								tween(instance, {ImageTransparency = 1}, nil,TweenInfo.new(0.5, Enum.EasingStyle.Exponential))
							end
							if instance.ClassName == "TextLabel" then
								tween(instance, {TextTransparency = 1}, nil,TweenInfo.new(0.4, Enum.EasingStyle.Exponential))
							end
							if instance.ClassName == "UIStroke" then
								tween(instance, {Transparency = 1}, nil,TweenInfo.new(0.5, Enum.EasingStyle.Exponential))
							end
						end
					end
					tween(KeySystem, {BackgroundTransparency = 1}, nil,TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
					task.wait(0.51)
					Passthrough = true
					KeySystem.Visible = false
					if WindowSettings.KeySettings.SaveKey then
						if writefile then
							writefile(direc .. WindowSettings.KeySettings.FileName .. ".luna", FoundKey)
						end
						Luna:Notification({Title = "Key System", Content = "The key for this script has been saved successfully.", Icon = "lock_open"})
					end
				else
					if AttemptsRemaining == 0 then

						game.Players.LocalPlayer:Kick("No Attempts Remaining")
						game:Shutdown()
					end
					KeySystem.Input.InputBox.Text = "Incorrect Key"
					AttemptsRemaining = AttemptsRemaining - 1
					task.wait(0.4)
					KeySystem.Input.InputBox.Text = ""
				end
			end)

			KeySystem.Close.MouseButton1Click:Connect(function()
				
				Luna:Destroy()
			end)
		end
	end

	if WindowSettings.KeySystem then
		repeat task.wait() until Passthrough
	end

	if WindowSettings.LoadingEnabled then
		task.wait(0.3)
		TweenService:Create(LoadingFrame.Frame.Frame.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
		TweenService:Create(LoadingFrame.Frame.ImageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()
		task.wait(0.05)
		TweenService:Create(LoadingFrame.Frame.Frame.Subtitle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
		TweenService:Create(LoadingFrame.Version, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
		task.wait(0.29)
		TweenService:Create(LoadingFrame.Frame.ImageLabel, TweenInfo.new(1.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 2, false, 0.2), {Rotation = 450}):Play()

		task.wait(3.32)

		TweenService:Create(LoadingFrame.Frame.Frame.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
		TweenService:Create(LoadingFrame.Frame.ImageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
		task.wait(0.05)
		TweenService:Create(LoadingFrame.Frame.Frame.Subtitle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
		TweenService:Create(LoadingFrame.Version, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
		wait(0.3)
		TweenService:Create(LoadingFrame, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
	end

	TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 0.2, Size = MainSize}):Play()
	TweenService:Create(Main.Parent.ShadowHolder, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = MainSize}):Play()
	TweenService:Create(Main.Title.Title, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
	TweenService:Create(Main.Title.subtitle, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
	TweenService:Create(Main.Logo, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
	TweenService:Create(Navigation.Player.icon.ImageLabel, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
	TweenService:Create(Navigation.Player.icon.UIStroke, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 0}):Play()
	TweenService:Create(Main.Line, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
	wait(0.4)
	LoadingFrame.Visible = false

	Draggable(Dragger, Main)
	Draggable(LunaUI.MobileSupport, LunaUI.MobileSupport)
	if dragBar then Draggable(dragInteract, Main, true, 255) end

	Elements.Template.LayoutOrder = 1000000000
	Elements.Template.Visible = false
	Navigation.Tabs["InActive Template"].LayoutOrder = 1000000000
	Navigation.Tabs["InActive Template"].Visible = false

	local FirstTab = true

	function Window:CreateHomeTab(HomeTabSettings)

		HomeTabSettings = Kwargify({
			Icon = 1,
			SupportedExecutors = {"Vega X", "Delta", "Nihon", "Xeno"}, -- THESE DEFAULTS ARE PLACEHOLDERS!! I DO NOT ADVERTISE THESE, THEY ARE JUS THE FIRST THAT CAME TO MIND. I HAVE NO IDEA WHETHER THEYA RE RATS (they prob are) AND IM NOT RESPONSIBLE IF U GET VIRUSES FROM INSTALLING AFTER SEEING THIS LIST
			DiscordInvite = "noinvitelink" -- The disvord invite link. Do not include the link so for example if my invite was discord.gg/nebula I would put nebula
		}, HomeTabSettings or {})

		local HomeTab = {}

		local HomeTabButton = Navigation.Tabs.Home
		HomeTabButton.Visible = true
		if HomeTabSettings.Icon == 2 then
			HomeTabButton.ImageLabel.Image = GetIcon("dashboard", "Material")
		end

		local HomeTabPage = Elements.Home
		HomeTabPage.Visible = true

		function HomeTab:Activate()
			tween(HomeTabButton.ImageLabel, {ImageColor3 = Color3.fromRGB(255,255,255)})
			tween(HomeTabButton, {BackgroundTransparency = 0})
			tween(HomeTabButton.UIStroke, {Transparency = 0.41})

			Elements.UIPageLayout:JumpTo(HomeTabPage)

			task.wait(0.05)

			for _, OtherTabButton in ipairs(Navigation.Tabs:GetChildren()) do
				if OtherTabButton.Name ~= "InActive Template" and OtherTabButton.ClassName == "Frame" and OtherTabButton ~= HomeTabButton then
					tween(OtherTabButton.ImageLabel, {ImageColor3 = Color3.fromRGB(221,221,221)})
					tween(OtherTabButton, {BackgroundTransparency = 1})
					tween(OtherTabButton.UIStroke, {Transparency = 1})
				end

			end

			Window.CurrentTab = "Home"
		end

		HomeTab:Activate()
		FirstTab = false
		HomeTabButton.Interact.MouseButton1Click:Connect(function()
			HomeTab:Activate()
		end)


		HomeTabPage.icon.ImageLabel.Image = Players:GetUserThumbnailAsync(Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		HomeTabPage.player.Text.Text = "Hello, " .. Players.LocalPlayer.DisplayName
		HomeTabPage.player.user.Text = Players.LocalPlayer.Name .. " - ".. WindowSettings.Name

		HomeTabPage.detailsholder.dashboard.Client.Title.Text = (isStudio and "Debugging (Studio)" or identifyexecutor()) or "Your Executor Does Not Support identifyexecutor."
		for i,v in pairs(HomeTabSettings.SupportedExecutors) do
			if isStudio then HomeTabPage.detailsholder.dashboard.Client.Subtitle.Text = "Luna Interface Suite - Debugging Mode" break end
			if v == identifyexecutor() then
				HomeTabPage.detailsholder.dashboard.Client.Subtitle.Text = "Your Executor Supports This Script."
				break
			else
				HomeTabPage.detailsholder.dashboard.Client.Subtitle.Text = "Your Executor Isn't Officialy Supported By This Script."
				break
			end
		end

		-- Stolen From Sirius Stuff Begins Here

		HomeTabPage.detailsholder.dashboard.Discord.Interact.MouseButton1Click:Connect(function()
			setclipboard(tostring("https://discord.gg/"..HomeTabSettings.DiscordInvite)) -- Hunter if you see this I added copy also was too lazy to send u msg
			if request then
				request({
					Url = 'http://127.0.0.1:6463/rpc?v=1',
					Method = 'POST',
					Headers = {
						['Content-Type'] = 'application/json',
						Origin = 'https://discord.com'
					},
					Body = HttpService:JSONEncode({
						cmd = 'INVITE_BROWSER',
						nonce = HttpService:GenerateGUID(false),
						args = {code = HomeTabSettings.DiscordInvite}
					})
				})
			end
		end)

		local friendsCooldown = 0
		local function getPing() return math.clamp(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue(), 10, 700) end

		local function checkFriends()
			if friendsCooldown == 0 then

				friendsCooldown = 25

				local playersFriends = {}
				local friendsInTotal = 0
				local onlineFriends = 0 
				local friendsInGame = 0 

				local list = Players:GetFriendsAsync(Player.UserId)
				while true do -- loop through all the pages
					for _, data in list:GetCurrentPage() do
						friendsInTotal +=1
						table.insert(playersFriends, Data)
					end

					if list.IsFinished then
						-- stop the loop since this is the last page
						break
					else 
						-- go to the next page
						list:AdvanceToNextPageAsync()
					end
				end
				for i, v in pairs(Player:GetFriendsOnline()) do
					onlineFriends += 1
				end

				for i,v in pairs(playersFriends) do
					if Players:FindFirstChild(v.Username) then
						friendsInGame = friendsInGame + 1
					end
				end

				HomeTabPage.detailsholder.dashboard.Friends.All.Value.Text = tostring(friendsInTotal).." friends"
				HomeTabPage.detailsholder.dashboard.Friends.Offline.Value.Text = tostring(friendsInTotal - onlineFriends).." friends"
				HomeTabPage.detailsholder.dashboard.Friends.Online.Value.Text = tostring(onlineFriends).." friends"
				HomeTabPage.detailsholder.dashboard.Friends.InGame.Value.Text = tostring(friendsInGame).." friends"

			else
				friendsCooldown -= 1
			end
		end

		local function format(Int)
			return string.format("%02i", Int)
		end

		local function convertToHMS(Seconds)
			local Minutes = (Seconds - Seconds%60)/60
			Seconds = Seconds - Minutes*60
			local Hours = (Minutes - Minutes%60)/60
			Minutes = Minutes - Hours*60
			return format(Hours)..":"..format(Minutes)..":"..format(Seconds)
		end

		coroutine.wrap(function()
			while task.wait() do


				-- Players
				HomeTabPage.detailsholder.dashboard.Server.Players.Value.Text = #Players:GetPlayers().." playing"
				HomeTabPage.detailsholder.dashboard.Server.MaxPlayers.Value.Text = Players.MaxPlayers.." players can join this server"

				-- Ping
				HomeTabPage.detailsholder.dashboard.Server.Latency.Value.Text = isStudio and tostring(math.round((Players.LocalPlayer:GetNetworkPing() * 2 ) / 0.01)) .."ms" or tostring(math.floor(getPing()) .."ms")

				-- Time
				HomeTabPage.detailsholder.dashboard.Server.Time.Value.Text = convertToHMS(time())

				-- Region
				HomeTabPage.detailsholder.dashboard.Server.Region.Value.Text = Localization:GetCountryRegionForPlayerAsync(Players.LocalPlayer)

				checkFriends()
			end
		end)()

		-- Stolen From Sirius Stuff ends here

	end

	function Window:CreateTab(TabSettings)

		local Tab = {}

		TabSettings = Kwargify({
			Name = "Tab",
			ShowTitle = true,
			Icon = "view_in_ar",
			ImageSource = "Material" 
		}, TabSettings or {})

		local TabButton = Navigation.Tabs["InActive Template"]:Clone()

		TabButton.Name = TabSettings.Name
		TabButton.TextLabel.Text = TabSettings.Name
		TabButton.Parent = Navigation.Tabs
		TabButton.ImageLabel.Image = GetIcon(TabSettings.Icon, TabSettings.ImageSource)

		TabButton.Visible = true

		local TabPage = Elements.Template:Clone()
		TabPage.Name = TabSettings.Name
		TabPage.Title.Visible = TabSettings.ShowTitle
		TabPage.Title.Text = TabSettings.Name
		TabPage.Visible = true

		Tab.Page = TabPage

		if TabSettings.ShowTitle == false then
			TabPage.UIPadding.PaddingTop = UDim.new(0,10)
		end

		TabPage.LayoutOrder = #Elements:GetChildren() - 3

		for _, TemplateElement in ipairs(TabPage:GetChildren()) do
			if TemplateElement.ClassName == "Frame" or TemplateElement.ClassName == "TextLabel" and TemplateElement.Name ~= "Title" then
				TemplateElement:Destroy()
			end
		end
		TabPage.Parent = Elements

		function Tab:Activate()
			tween(TabButton.ImageLabel, {ImageColor3 = Color3.fromRGB(255,255,255)})
			tween(TabButton, {BackgroundTransparency = 0})
			tween(TabButton.UIStroke, {Transparency = 0.41})

			Elements.UIPageLayout:JumpTo(TabPage)

			task.wait(0.05)

			for _, OtherTabButton in ipairs(Navigation.Tabs:GetChildren()) do
				if OtherTabButton.Name ~= "InActive Template" and OtherTabButton.ClassName == "Frame" and OtherTabButton ~= TabButton then
					tween(OtherTabButton.ImageLabel, {ImageColor3 = Color3.fromRGB(221,221,221)})
					tween(OtherTabButton, {BackgroundTransparency = 1})
					tween(OtherTabButton.UIStroke, {Transparency = 1})
				end

			end

			Window.CurrentTab = TabSettings.Name
		end

		if FirstTab then
			Tab:Activate()
		end

		task.wait(0.01)

		TabButton.Interact.MouseButton1Click:Connect(function()
			Tab:Activate()
		end)

		FirstTab = false

		-- Section
		function Tab:CreateSection(name : string)

			local Section = {}

			if name == nil then name = "Section" end

			Section.Name = name

			local Sectiont = Elements.Template.Section:Clone()
			Sectiont.Text = name
			Sectiont.Visible = true
			Sectiont.Parent = TabPage
			local TabPage = Sectiont.Frame

			Sectiont.TextTransparency = 1
			tween(Sectiont, {TextTransparency = 0})

			function Section:Set(NewSection)
				Sectiont.Text = NewSection
			end

			function Section:Destroy()
				Sectiont:Destroy()
			end

			-- Divider
			function Section:CreateDivider()
				TabPage.Position = UDim2.new(0,0,0,28)
				local b = Elements.Template.Divider:Clone()
				b.Parent = TabPage
				b.Size = UDim2.new(1,0,0,18)
				b.Line.BackgroundTransparency = 1
				tween(b.Line, {BackgroundTransparency = 0})
			end

			-- Button
			function Section:CreateButton(ButtonSettings)
				TabPage.Position = UDim2.new(0,0,0,28)

				ButtonSettings = Kwargify({
					Name = "Button",
					Description = nil,
					Callback = function()

					end,
				}, ButtonSettings or {})

				local ButtonV = {
					Hover = false,
					Settings = ButtonSettings
				}


				local Button
				if ButtonSettings.Description == nil and ButtonSettings.Description ~= "" then
					Button = Elements.Template.Button:Clone()
				else
					Button = Elements.Template.ButtonDesc:Clone()
				end
				Button.Name = ButtonSettings.Name
				Button.Title.Text = ButtonSettings.Name
				if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
					Button.Desc.Text = ButtonSettings.Description
				end
				Button.Visible = true
				Button.Parent = TabPage

				Button.UIStroke.Transparency = 1
				Button.Title.TextTransparency = 1
				if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
					Button.Desc.TextTransparency = 1
				end

				TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Button.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
				if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
					TweenService:Create(Button.Desc, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
				end

				Button.Interact["MouseButton1Click"]:Connect(function()
					local Success,Response = pcall(ButtonSettings.Callback)

					if not Success then
						TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Button.Title.Text = "Callback Error"
						print("Luna Interface Suite | "..ButtonSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Button.Title.Text = ButtonSettings.Name
						TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					else
						tween(Button.UIStroke, {Color = Color3.fromRGB(136, 131, 163)})
						wait(0.2)
						if ButtonV.Hover then
							tween(Button.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
						else
							tween(Button.UIStroke, {Color = Color3.fromRGB(64,61,76)})
						end
					end
				end)

				Button["MouseEnter"]:Connect(function()
					ButtonV.Hover = true
					tween(Button.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Button["MouseLeave"]:Connect(function()
					ButtonV.Hover = false
					tween(Button.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				function ButtonV:Set(ButtonSettings2)
					ButtonSettings2 = Kwargify({
						Name = ButtonSettings.Name,
						Description = ButtonSettings.Description,
						Callback = ButtonSettings.Callback
					}, ButtonSettings2 or {})

					ButtonSettings = ButtonSettings2
					ButtonV.Settings = ButtonSettings2

					Button.Name = ButtonSettings.Name
					Button.Title.Text = ButtonSettings.Name
					if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" and Button.Desc ~= nil then
						Button.Desc.Text = ButtonSettings.Description
					end
				end

				function ButtonV:Destroy()
					Button.Visible = false
					Button:Destroy()
				end

				return ButtonV
			end

			-- Label
			function Section:CreateLabel(LabelSettings)
				TabPage.Position = UDim2.new(0,0,0,28)

				local LabelV = {}

				LabelSettings = Kwargify({
					Text = "Label",
					Style = 1
				}, LabelSettings or {}) 

				LabelV.Settings = LabelSettings

				local Label
				if LabelSettings.Style == 1 then
					Label = Elements.Template.Label:Clone()
				elseif LabelSettings.Style == 2 then
					Label = Elements.Template.Info:Clone()
				elseif LabelSettings.Style == 3 then
					Label = Elements.Template.Warn:Clone()
				end

				Label.Text.Text = LabelSettings.Text
				Label.Visible = true
				Label.Parent = TabPage

				Label.BackgroundTransparency = 1
				Label.UIStroke.Transparency = 1
				Label.Text.TextTransparency = 1

				if LabelSettings.Style ~= 1 then
					TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.8}):Play()
				else
					TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
				end
				TweenService:Create(Label.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Label.Text, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

				function LabelV:Set(NewLabel)
					LabelSettings.Text = NewLabel
					LabelV.Settings = LabelSettings
					Label.Text.Text = NewLabel
				end

				function LabelV:Destroy()
					Label.Visible = false
					Label:Destroy()
				end

				return LabelV
			end

			-- Paragraph
			function Section:CreateParagraph(ParagraphSettings)
				TabPage.Position = UDim2.new(0,0,0,28)

				ParagraphSettings = Kwargify({
					Title = "Paragraph",
					Text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus venenatis lacus sed tempus eleifend. Mauris interdum bibendum felis, in tempor augue egestas vel. Praesent tristique consectetur ex, eu pretium sem placerat non. Vestibulum a nisi sit amet augue facilisis consectetur sit amet et nunc. Integer fermentum ornare cursus. Pellentesque sed ultricies metus, ut egestas metus. Vivamus auctor erat ac sapien vulputate, nec ultricies sem tempor. Quisque leo lorem, faucibus nec pulvinar nec, congue eu velit. Duis sodales massa efficitur imperdiet ultrices. Donec eros ipsum, ornare pharetra purus aliquam, tincidunt elementum nisi. Ut mi tortor, feugiat eget nunc vitae, facilisis interdum dui. Vivamus ullamcorper nunc dui, a dapibus nisi pretium ac. Integer eleifend placerat nibh, maximus malesuada tellus. Cras in justo in ligula scelerisque suscipit vel vitae quam."
				}, ParagraphSettings or {})

				local ParagraphV = {
					Settings = ParagraphSettings
				}

				local Paragraph = Elements.Template.Paragraph:Clone()
				Paragraph.Title.Text = ParagraphSettings.Title
				Paragraph.Text.Text = ParagraphSettings.Text
				Paragraph.Visible = true
				Paragraph.Parent = TabPage

				Paragraph.BackgroundTransparency = 1
				Paragraph.UIStroke.Transparency = 1
				Paragraph.Title.TextTransparency = 1
				Paragraph.Text.TextTransparency = 1

				TweenService:Create(Paragraph, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
				TweenService:Create(Paragraph.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Paragraph.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
				TweenService:Create(Paragraph.Text, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

				function ParagraphV:Update()
					Paragraph.Text.Size = UDim2.new(Paragraph.Text.Size.X.Scale, Paragraph.Text.Size.X.Offset, 0, math.huge)
					Paragraph.Text.Size = UDim2.new(Paragraph.Text.Size.X.Scale, Paragraph.Text.Size.X.Offset, 0, Paragraph.Text.TextBounds.Y)
					tween(Paragraph, {Size = UDim2.new(Paragraph.Size.X.Scale, Paragraph.Size.X.Offset, 0, Paragraph.Text.TextBounds.Y + 40)})
				end

				function ParagraphV:Set(NewParagraphSettings)

					NewParagraphSettings = Kwargify({
						Title = ParagraphSettings.Title,
						Text = ParagraphSettings.Text
					}, NewParagraphSettings or {})

					ParagraphV.Settings = NewParagraphSettings

					Paragraph.Title.Text = NewParagraphSettings.Title
					Paragraph.Text.Text = NewParagraphSettings.Text

					ParagraphV:Update()

				end

				function ParagraphV:Destroy()
					Paragraph.Visible = false
					Paragraph:Destroy()
				end

				ParagraphV:Update()

				return ParagraphV
			end

			-- Slider
			function Section:CreateSlider(SliderSettings, Flag)
				TabPage.Position = UDim2.new(0,0,0,28)
				local SliderV = { IgnoreConfig = false, Class = "Slider", Settings = SliderSettings }

				SliderSettings = Kwargify({
					Name = "Slider",
					Range = {0, 200},
					Increment = 1,
					CurrentValue = 100,
					Callback = function(Value)

					end,
				}, SliderSettings or {})

				local SLDragging = false
				local Slider = Elements.Template.Slider:Clone()
				Slider.Name = SliderSettings.Name .. " - Slider"
				Slider.Title.Text = SliderSettings.Name
				Slider.Visible = true
				Slider.Parent = TabPage

				Slider.BackgroundTransparency = 1
				Slider.UIStroke.Transparency = 1
				Slider.Title.TextTransparency = 1

				TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Slider.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

				Slider.Main.Progress.Size =	UDim2.new(0, Slider.Main.AbsoluteSize.X * ((SliderSettings.CurrentValue + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (SliderSettings.CurrentValue / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)

				Slider.Value.Text = tostring(SliderSettings.CurrentValue)
				SliderV.CurrentValue = Slider.Value.Text

				SliderSettings.Callback(SliderSettings.CurrentValue)

				Slider["MouseEnter"]:Connect(function()
					tween(Slider.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Slider["MouseLeave"]:Connect(function()
					tween(Slider.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				Slider.Interact.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
						SLDragging = true 
					end 
				end)

				Slider.Interact.InputEnded:Connect(function(Input) 
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
						SLDragging = false 
					end 
				end)

				Slider.Interact.MouseButton1Down:Connect(function()
					local Current = Slider.Main.Progress.AbsolutePosition.X + Slider.Main.Progress.AbsoluteSize.X
					local Start = Current
					local Location
					local Loop; Loop = RunService.Stepped:Connect(function()
						if SLDragging then
							Location = UserInputService:GetMouseLocation().X
							Current = Current + 0.025 * (Location - Start)

							if Location < Slider.Main.AbsolutePosition.X then
								Location = Slider.Main.AbsolutePosition.X
							elseif Location > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
								Location = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
							end

							if Current < Slider.Main.AbsolutePosition.X + 5 then
								Current = Slider.Main.AbsolutePosition.X + 5
							elseif Current > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
								Current = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
							end

							if Current <= Location and (Location - Start) < 0 then
								Start = Location
							elseif Current >= Location and (Location - Start) > 0 then
								Start = Location
							end
							Slider.Main.Progress.Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X, 1, 0)
							local NewValue = SliderSettings.Range[1] + (Location - Slider.Main.AbsolutePosition.X) / Slider.Main.AbsoluteSize.X * (SliderSettings.Range[2] - SliderSettings.Range[1])

							NewValue = math.floor(NewValue / SliderSettings.Increment + 0.5) * (SliderSettings.Increment * 10000000) / 10000000

							Slider.Value.Text = tostring(NewValue)

							if SliderSettings.CurrentValue ~= NewValue then
								local Success, Response = pcall(function()
									SliderSettings.Callback(NewValue)
								end)
								if not Success then
									TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
									TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
									TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
									Slider.Title.Text = "Callback Error"
									print("Luna Interface Suite | "..SliderSettings.Name.." Callback Error " ..tostring(Response))
									wait(0.5)
									Slider.Title.Text = SliderSettings.Name
									TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
									TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
									TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
								end

								SliderSettings.CurrentValue = NewValue
								SliderV.CurrentValue = SliderSettings.CurrentValue
								-- Luna.Flags[SliderSettings.Flag] = SliderSettings
							end
						else
							TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.In, 0, false), {Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X > 5 and Location - Slider.Main.AbsolutePosition.X or 5, 1, 0)}):Play()
							Loop:Disconnect()
						end
					end)
				end)

				local function Set(NewVal, bleh)

					NewVal = NewVal or SliderSettings.CurrentValue

					TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Size = UDim2.new(0, Slider.Main.AbsoluteSize.X * ((NewVal + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (NewVal / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)}):Play()
					if not bleh then Slider.Value.Text = tostring(NewVal) end
					local Success, Response = pcall(function()
						SliderSettings.Callback(NewVal)
					end)
					if not Success then
						TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Slider.Title.Text = "Callback Error"
						print("Luna Interface Suite | "..SliderSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Slider.Title.Text = SliderSettings.Name
						TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(30, 33, 40)}):Play()
						TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end

					SliderSettings.CurrentValue = NewVal
					SliderV.CurrentValue = SliderSettings.CurrentValue
					-- Luna.Flags[SliderSettings.Flag] = SliderSettings

				end

				function SliderV:UpdateValue(Value)
					Set(tonumber(Value))
				end 

				Slider.Value:GetPropertyChangedSignal("Text"):Connect(function()
					local text = Slider.Value.Text
					if not tonumber(text) and text ~= "." then
						Slider.Value.Text = text:match("[0-9.]*") or ""
					end
					if SliderSettings.Range[2] < (tonumber(Slider.Value.Text) or 0) then Slider.Value.Text = SliderSettings.Range[2] end
					Slider.Value.Size = UDim2.fromOffset(Slider.Value.TextBounds.X, 23)
					Set(tonumber(Slider.Value.Text), true)
				end)

				function SliderV:Set(NewSliderSettings)
					NewSliderSettings = Kwargify({
						Name = SliderSettings.Name,
						Range = SliderSettings.Range,
						Increment = SliderSettings.Increment,
						CurrentValue = SliderSettings.CurrentValue,
						Callback = SliderSettings.Callback
					}, NewSliderSettings or {})

					SliderSettings = NewSliderSettings
					SliderV.Settings = NewSliderSettings

					Slider.Name = SliderSettings.Name .. " - Slider"
					Slider.Title.Text = SliderSettings.Name

					Set()

					-- Luna.Flags[SliderSettings.Flag] = SliderSettings
				end

				function SliderV:Destroy()
					Slider.Visible = false
					Slider:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = SliderV
				end

				LunaUI.ThemeRemote:GetPropertyChangedSignal("Value"):Connect(function()
					Slider.Main.color.Color = Luna.ThemeGradient
					Slider.Main.UIStroke.color.Color = Luna.ThemeGradient
				end)

				return SliderV

			end

			-- Toggle
			function Section:CreateToggle(ToggleSettings, Flag)    
				TabPage.Position = UDim2.new(0,0,0,28)
				local ToggleV = { IgnoreConfig = false, Class = "Toggle" }

				ToggleSettings = Kwargify({
					Name = "Toggle",
					Description = nil,
					CurrentValue = false,
					Callback = function(Value)
					end,
				}, ToggleSettings or {})


				local Toggle

				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
					Toggle = Elements.Template.ToggleDesc:Clone()
				else
					Toggle = Elements.Template.Toggle:Clone()
				end

				Toggle.Visible = true
				Toggle.Parent = TabPage

				Toggle.Name = ToggleSettings.Name .. " - Toggle"
				Toggle.Title.Text = ToggleSettings.Name
				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
					Toggle.Desc.Text = ToggleSettings.Description
				end

				Toggle.UIStroke.Transparency = 1
				Toggle.Title.TextTransparency = 1
				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
					Toggle.Desc.TextTransparency = 1
				end

				TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
					TweenService:Create(Toggle.Desc, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
				end
				TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Toggle.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

				local function Set(bool)
					if bool then
						Toggle.toggle.color.Enabled = true
						tween(Toggle.toggle, {BackgroundTransparency = 0})

						Toggle.toggle.UIStroke.color.Enabled = true
						tween(Toggle.toggle.UIStroke, {Color = Color3.new(255,255,255)})

						tween(Toggle.toggle.val, {BackgroundColor3 = Color3.fromRGB(255,255,255), Position = UDim2.new(1,-23,0.5,0), BackgroundTransparency = 0.45})
					else
						Toggle.toggle.color.Enabled = false
						Toggle.toggle.UIStroke.color.Enabled = false

						Toggle.toggle.UIStroke.Color = Color3.fromRGB(97,97,97)

						tween(Toggle.toggle, {BackgroundTransparency = 1})

						tween(Toggle.toggle.val, {BackgroundColor3 = Color3.fromRGB(97,97,97), Position = UDim2.new(0,5,0.5,0), BackgroundTransparency = 0})
					end

					ToggleV.CurrentValue = bool
				end

				Toggle.Interact.MouseButton1Click:Connect(function()
					ToggleSettings.CurrentValue = not ToggleSettings.CurrentValue
					Set(ToggleSettings.CurrentValue)

					local Success, Response = pcall(function()
						ToggleSettings.Callback(ToggleSettings.CurrentValue)
					end)
					if not Success then
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Toggle.Title.Text = "Callback Error"
						print("Luna Interface Suite | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Toggle.Title.Text = ToggleSettings.Name
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
				end)

				Toggle["MouseEnter"]:Connect(function()
					tween(Toggle.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Toggle["MouseLeave"]:Connect(function()
					tween(Toggle.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				if ToggleSettings.CurrentValue then
					Set(ToggleSettings.CurrentValue)
					local Success, Response = pcall(function()
						ToggleSettings.Callback(ToggleSettings.CurrentValue)
					end)
					if not Success then
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Toggle.Title.Text = "Callback Error"
						print("Luna Interface Suite | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Toggle.Title.Text = ToggleSettings.Name
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
				end

				function ToggleV:UpdateState(State)
					ToggleSettings.CurrentValue = State
					Set(ToggleSettings.CurrentValue)
				end

				function ToggleV:Set(NewToggleSettings)

					NewToggleSettings = Kwargify({
						Name = ToggleSettings.Name,
						Description = ToggleSettings.Description,
						CurrentValue = ToggleSettings.CurrentValue,
						Callback = ToggleSettings.Callback
					}, NewToggleSettings or {})

					ToggleV.Settings = NewToggleSettings
					ToggleSettings = NewToggleSettings

					Toggle.Name = ToggleSettings.Name .. " - Toggle"
					Toggle.Title.Text = ToggleSettings.Name
					if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" and Toggle.Desc ~= nil then
						Toggle.Desc.Text = ToggleSettings.Description
					end

					Set(ToggleSettings.CurrentValue)

					ToggleV.CurrentValue = ToggleSettings.CurrentValue

					local Success, Response = pcall(function()
						ToggleSettings.Callback(ToggleSettings.CurrentValue)
					end)
					if not Success then
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0}):Play()
						Toggle.Title.Text = "Callback Error"
						print("Luna Interface Suite | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Toggle.Title.Text = ToggleSettings.Name
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
				end

				function ToggleV:Destroy()
					Toggle.Visible = false
					Toggle:Destroy()
				end

				LunaUI.ThemeRemote:GetPropertyChangedSignal("Value"):Connect(function()
					Toggle.toggle.color.Color = Luna.ThemeGradient
					Toggle.toggle.UIStroke.color.Color = Luna.ThemeGradient
				end)

				if Flag then
					Luna.Options[Flag] = ToggleV
				end

				return ToggleV

			end

			-- Bind
			function Section:CreateBind(BindSettings, Flag)
				TabPage.Position = UDim2.new(0,0,0,28)
				local BindV = { Class = "Keybind", IgnoreConfig = false, Settings = BindSettings, Active = false }

				BindSettings = Kwargify({
					Name = "Bind",
					Description = nil,
					CurrentBind = "Q",
					HoldToInteract = false, -- setting this makes the Bind in toggle mode
					Callback = function(Bind)
						-- The function that takes place when the Bind is pressed
						-- The variable (Bind) is a boolean for whether the Bind is being held or not (HoldToInteract needs to be true) or whether the Bind is currently active
					end,

					OnChangedCallback = function(Bind)
						-- The function that takes place when the binded key changes
						-- The variable (Bind) is a Enum.KeyCode for the new Binded Key
					end,
				}, BindSettings or {})

				local CheckingForKey = false

				local Bind
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
					Bind = Elements.Template.BindDesc:Clone()
				else
					Bind = Elements.Template.Bind:Clone()
				end

				Bind.Visible = true
				Bind.Parent = TabPage

				Bind.Name = BindSettings.Name
				Bind.Title.Text = BindSettings.Name
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
					Bind.Desc.Text = BindSettings.Description
				end

				Bind.Title.TextTransparency = 1
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
					Bind.Desc.TextTransparency = 1
				end
				Bind.BindFrame.BackgroundTransparency = 1
				Bind.BindFrame.UIStroke.Transparency = 1
				Bind.BindFrame.BindBox.TextTransparency = 1

				TweenService:Create(Bind, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				TweenService:Create(Bind.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
					TweenService:Create(Bind.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
				end
				TweenService:Create(Bind.BindFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
				TweenService:Create(Bind.BindFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
				TweenService:Create(Bind.BindFrame.BindBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()


				Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				Bind.BindFrame.BindBox.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 42)

				Bind.BindFrame.BindBox.Focused:Connect(function()
					CheckingForKey = true
					Bind.BindFrame.BindBox.Text = ""
				end)

				Bind.BindFrame.BindBox.FocusLost:Connect(function()
					CheckingForKey = false
					if Bind.BindFrame.BindBox.Text == (nil or "") then
						Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
					end
				end)

				Bind["MouseEnter"]:Connect(function()
					tween(Bind.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Bind["MouseLeave"]:Connect(function()
					tween(Bind.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)
				UserInputService.InputBegan:Connect(function(input, processed)

					if CheckingForKey then
						if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Window.Bind then
							local SplitMessage = string.split(tostring(input.KeyCode), ".")
							local NewKeyNoEnum = SplitMessage[3]
							Bind.BindFrame.BindBox.Text = tostring(NewKeyNoEnum)
							BindSettings.CurrentBind = tostring(NewKeyNoEnum)
							local Success, Response = pcall(function()
								BindSettings.Callback(BindSettings.CurrentBind)
							end)
							if not Success then
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
								Bind.Title.Text = "Callback Error"
								print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
								wait(0.5)
								Bind.Title.Text = BindSettings.Name
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
								TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
							end
							Bind.BindFrame.BindBox:ReleaseFocus()
						end
					elseif BindSettings.CurrentBind ~= nil and (input.KeyCode == Enum.KeyCode[BindSettings.CurrentBind] and not processed) then -- Test
						local Held = true
						local Connection
						Connection = input.Changed:Connect(function(prop)
							if prop == "UserInputState" then
								Connection:Disconnect()
								Held = false
							end
						end)

						if not BindSettings.HoldToInteract then
							BindV.Active = not BindV.Active
							local Success, Response = pcall(function()
								BindSettings.Callback(BindV.Active)
							end)
							if not Success then
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
								Bind.Title.Text = "Callback Error"
								print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
								wait(0.5)
								Bind.Title.Text = BindSettings.Name
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
								TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
							end
						else
							wait(0.1)
							if Held then
								local Loop; Loop = RunService.Stepped:Connect(function()
									if not Held then
										local Success, Response = pcall(function()
											BindSettings.Callback(false)
										end)
										if not Success then
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
											TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
											Bind.Title.Text = "Callback Error"
											print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
											wait(0.5)
											Bind.Title.Text = BindSettings.Name
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
											TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
										end 
										Loop:Disconnect()
									else
										local Success, Response = pcall(function()
											BindSettings.Callback(true)
										end)
										if not Success then
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
											TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
											Bind.Title.Text = "Callback Error"
											print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
											wait(0.5)
											Bind.Title.Text = BindSettings.Name
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
											TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
										end
									end
								end)	
							end
						end
					end
				end)

				Bind.BindFrame.BindBox:GetPropertyChangedSignal("Text"):Connect(function()
					TweenService:Create(Bind.BindFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 30)}):Play()
				end)

				function BindV:Set(NewBindSettings)

					NewBindSettings = Kwargify({
						Name = BindSettings.Name,
						Description = BindSettings.Description,
						CurrentBind =  BindSettings.CurrentBind,
						HoldToInteract = BindSettings.HoldToInteract,
						Callback = BindSettings.Callback
					}, NewBindSettings or {})

					BindV.Settings = NewBindSettings
					BindSettings = NewBindSettings

					Bind.Name = BindSettings.Name
					Bind.Title.Text = BindSettings.Name
					if BindSettings.Description ~= nil and BindSettings.Description ~= "" and Bind.Desc ~= nil then
						Bind.Desc.Text = BindSettings.Description
					end

					Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
					Bind.BindFrame.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 42)


					BindV.CurrentBind = BindSettings.CurrentBind
				end

				function BindV:Destroy()
					Bind.Visible = false
					Bind:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = BindV
				end

				-- Luna.Flags[BindSettings.Flag] = BindSettings

				return BindV

			end

			-- Dynamic Input
			function Section:CreateInput(InputSettings, Flag)
				TabPage.Position = UDim2.new(0,0,0,28)
				local InputV = { IgnoreConfig = false, Class = "Input", Settings = InputSettings }

				InputSettings = Kwargify({
					Name = "Dynamic Input",
					Description = nil,
					CurrentValue = "",
					PlaceholderText = "Input Placeholder",
					RemoveTextAfterFocusLost = false,
					Numeric = false,
					Enter = false,
					MaxCharacters = nil,
					Callback = function(Text)

					end, -- 52
				}, InputSettings or {})

				InputV.CurrentValue = InputSettings.CurrentValue

				local descriptionbool
				if InputSettings.Description ~= nil and InputSettings.Description ~= "" then
					descriptionbool = true
				end

				local Input 
				if descriptionbool then
					Input = Elements.Template.InputDesc:Clone()
				else
					Input = Elements.Template.Input:Clone()
				end

				Input.Name = InputSettings.Name
				Input.Title.Text = InputSettings.Name
				if descriptionbool then Input.Desc.Text = InputSettings.Description end
				Input.Visible = true
				Input.Parent = TabPage

				Input.BackgroundTransparency = 1
				Input.UIStroke.Transparency = 1
				Input.Title.TextTransparency = 1
				if descriptionbool then Input.Desc.TextTransparency = 1 end
				Input.InputFrame.BackgroundTransparency = 1
				Input.InputFrame.UIStroke.Transparency = 1
				Input.InputFrame.InputBox.TextTransparency = 1

				TweenService:Create(Input, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				TweenService:Create(Input.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Input.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
				if descriptionbool then TweenService:Create(Input.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play() end
				TweenService:Create(Input.InputFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
				TweenService:Create(Input.InputFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
				TweenService:Create(Input.InputFrame.InputBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()

				Input.InputFrame.InputBox.PlaceholderText = InputSettings.PlaceholderText
				Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 30)

				Input.InputFrame.InputBox.FocusLost:Connect(function(bleh)

					if InputSettings.Enter then
						if bleh then
							local Success, Response = pcall(function()
								InputSettings.Callback(Input.InputFrame.InputBox.Text)
								InputV.CurrentValue = Input.InputFrame.InputBox.Text
							end)
							if not Success then
								TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
								TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
								Input.Title.Text = "Callback Error"
								print("Luna Interface Suite | "..InputSettings.Name.." Callback Error " ..tostring(Response))
								wait(0.5)
								Input.Title.Text = InputSettings.Name
								TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
								TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
								TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
							end
						end
					end

					if InputSettings.RemoveTextAfterFocusLost then
						Input.InputFrame.InputBox.Text = ""
					end

				end)

				if InputSettings.Numeric then
					Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
						local text = Input.InputFrame.InputBox.Text
						if not tonumber(text) and text ~= "." then
							Input.InputFrame.InputBox.Text = text:match("[0-9.]*") or ""
						end
					end)
				end

				Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
					if tonumber(InputSettings.MaxCharacters) then
						if (#Input.InputFrame.InputBox.Text - 1) == InputSettings.MaxCharacters then
							Input.InputFrame.InputBox.Text = Input.InputFrame.InputBox.Text:sub(1, InputSettings.MaxCharacters)
						end
					end
					TweenService:Create(Input.InputFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 30)}):Play()
					if not InputSettings.Enter then
						local Success, Response = pcall(function()
							InputSettings.Callback(Input.InputFrame.InputBox.Text)
						end)
						if not Success then
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Input.Title.Text = "Callback Error"
							print("Luna Interface Suite | "..InputSettings.Name.." Callback Error " ..tostring(Response))
							wait(0.5)
							Input.Title.Text = InputSettings.Name
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
					end
					InputV.CurrentValue = Input.InputFrame.InputBox.Text				
				end)

				Input["MouseEnter"]:Connect(function()
					tween(Input.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Input["MouseLeave"]:Connect(function()
					tween(Input.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)


				function InputV:Set(NewInputSettings)

					NewInputSettings = Kwargify(InputSettings, NewInputSettings or {})

					InputV.Settings = NewInputSettings
					InputSettings = NewInputSettings

					Input.Name = InputSettings.Name
					Input.Title.Text = InputSettings.Name
					if InputSettings.Description ~= nil and InputSettings.Description ~= "" and Input.Desc ~= nil then
						Input.Desc.Text = InputSettings.Description
					end

					Input.InputFrame.InputBox:CaptureFocus()
					Input.InputFrame.InputBox.Text = tostring(InputSettings.CurrentValue)
					Input.InputFrame.InputBox:ReleaseFocus()
					Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 42)

					InputV.CurrentValue = InputSettings.CurrentValue
				end

				function InputV:Destroy()
					Input.Visible = false
					Input:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = InputV
				end


				return InputV

			end

			-- Dropdown
			function Section:CreateDropdown(DropdownSettings, Flag)
				TabPage.Position = UDim2.new(0,0,0,28)
				local DropdownV = { IgnoreConfig = false, Class = "Dropdown", Settings = DropdownSettings}

				DropdownSettings = Kwargify({
					Name = "Dropdown",
					Description = nil,
					Options = {"Option 1", "Option 2"},
					CurrentOption = {"Option 1"},
					MultipleOptions = false,
					SpecialType = nil, -- currently onl player, might add more soon
					Callback = function(Options)
						-- The function that takes place when the selected option is changed
						-- The variable (Options) is a table of strings for the current selected options or a string if multioptions is false
					end,
				}, DropdownSettings or {})

				DropdownV.CurrentOption = DropdownSettings.CurrentOption

				local descriptionbool = false
				if DropdownSettings.Description ~= nil and DropdownSettings.Description ~= "" then
					descriptionbool = true
				end
				local closedsize
				local openedsize
				if descriptionbool then
					closedsize = 48
					openedsize = 170
				elseif not descriptionbool then
					closedsize = 38
					openedsize = 160
				end
				local opened = false

				local Dropdown
				if descriptionbool then Dropdown = Elements.Template.DropdownDesc:Clone() else Dropdown = Elements.Template.Dropdown:Clone() end

				Dropdown.Name = DropdownSettings.Name
				Dropdown.Title.Text = DropdownSettings.Name
				if descriptionbool then Dropdown.Desc.Text = DropdownSettings.Description end

				Dropdown.Parent = TabPage
				Dropdown.Visible = true

				local function Toggle()
					opened = not opened
					if opened then
						tween(Dropdown.icon, {Rotation = 180})
						tween(Dropdown, {Size = UDim2.new(1, -25, 0, openedsize)})
					else
						tween(Dropdown.icon, {Rotation = 0})
						tween(Dropdown, {Size = UDim2.new(1, -25, 0, closedsize)})
					end
				end

				local function SafeCallback(param, c2)
					local Success, Response = pcall(function()
						DropdownSettings.Callback(param)
					end)
					if not Success then
						TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Dropdown.Title.Text = "Callback Error"
						print("Luna Interface Suite | "..DropdownSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Dropdown.Title.Text = DropdownSettings.Name
						TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
					if Success and c2 then
						c2()
					end
				end

				-- fixed by justhey
				Dropdown.Selected:GetPropertyChangedSignal("Text"):Connect(function()
					local text = Dropdown.Selected.Text:lower()
					for _, Item in ipairs(Dropdown.List:GetChildren()) do
						if Item:IsA("TextLabel") and Item.Name ~= "Template" then
							Item.Visible = text == "" or string.find(Item.Name:lower(), text, 1, true) ~= nil
						end
					end
				end)


				local function Clear()
					for _, option in ipairs(Dropdown.List:GetChildren()) do
						if option.ClassName == "TextLabel" and option.Name ~= "Template" then
							option:Destroy()
						end
					end
				end

				local function ActivateColorSingle(name)
					for _, Option in pairs(Dropdown.List:GetChildren()) do
						if Option.ClassName == "TextLabel" and Option.Name ~= "Template" then
							tween(Option, {BackgroundTransparency = 0.98})
						end
					end

					Toggle()
					tween(Dropdown.List[name], {BackgroundTransparency = 0.95, TextColor3 = Color3.fromRGB(240,240,240)})
				end

				local function Refresh()
					Clear()
					for i,v in pairs(DropdownSettings.Options) do
						local Option = Dropdown.List.Template:Clone()
						local optionhover = false
						Option.Text = v
						if v == "Template" then v = "Template (Name)" end
						Option.Name = v
						Option.Interact.MouseButton1Click:Connect(function()
							local bleh
							if DropdownSettings.MultipleOptions then
								if table.find(DropdownSettings.CurrentOption, v) then
									RemoveTable(DropdownSettings.CurrentOption, v)
									DropdownV.CurrentOption = DropdownSettings.CurrentOption
									if not optionhover then
										tween(Option, {TextColor3 = Color3.fromRGB(200,200,200)})
									end
									tween(Option, {BackgroundTransparency = 0.98})
								else
									table.insert(DropdownSettings.CurrentOption, v)
									DropdownV.CurrentOption = DropdownSettings.CurrentOption
									tween(Option, {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
								end
								bleh = DropdownSettings.CurrentOption
							else
								DropdownSettings.CurrentOption = {v}
								bleh = v
								DropdownV.CurrentOption = bleh
								ActivateColorSingle(v)
							end

							SafeCallback(bleh, function()
								if DropdownSettings.MultipleOptions then
									if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
										if #DropdownSettings.CurrentOption == 1 then
											Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
										elseif #DropdownSettings.CurrentOption == 0 then
											Dropdown.Selected.PlaceholderText = "None"
										else
											Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
										end
									else
										DropdownSettings.CurrentOption = {}
										Dropdown.Selected.PlaceholderText = "None"
									end
								end
								if not DropdownSettings.MultipleOptions then
									Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
								end
								Dropdown.Selected.Text = ""
							end)
						end)
						Option.Visible = true
						Option.Parent = Dropdown.List
						Option.MouseEnter:Connect(function()
							optionhover = true
							if Option.BackgroundTransparency == 0.95 then
								return
							else
								tween(Option, {TextColor3 = Color3.fromRGB(240,240,240)})
							end
						end)
						Option.MouseLeave:Connect(function()
							optionhover = false
							if Option.BackgroundTransparency == 0.95 then
								return
							else
								tween(Option, {TextColor3 = Color3.fromRGB(200,200,200)})
							end
						end)	
					end
				end

				local function PlayerTableRefresh()
					for i,v in pairs(DropdownSettings.Options) do
						table.remove(DropdownSettings.Options, i)
					end

					for i,v in pairs(Players:GetChildren()) do
						table.insert(DropdownSettings.Options, v.Name)
					end
				end

				Dropdown.Interact.MouseButton1Click:Connect(function()
					Toggle()
				end)

				Dropdown["MouseEnter"]:Connect(function()
					tween(Dropdown.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Dropdown["MouseLeave"]:Connect(function()
					tween(Dropdown.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				if DropdownSettings.SpecialType == "Player" then

					for i,v in pairs(DropdownSettings.Options) do
						table.remove(DropdownSettings.Options, i)
					end
					PlayerTableRefresh()
					DropdownSettings.CurrentOption = DropdownSettings.Options[1]

					Players.PlayerAdded:Connect(function() PlayerTableRefresh() end)
					Players.PlayerRemoving:Connect(function() PlayerTableRefresh() end)

				end

				Refresh()

				if DropdownSettings.CurrentOption then
					if type(DropdownSettings.CurrentOption) == "string" then
						DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption}
					end
					if not DropdownSettings.MultipleOptions and type(DropdownSettings.CurrentOption) == "table" then
						DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption[1]}
					end
				else
					DropdownSettings.CurrentOption = {}
				end

				local bleh, ind = nil,0
				for i,v in pairs(DropdownSettings.CurrentOption) do
					ind = ind + 1
				end
				if ind == 1 then bleh = DropdownSettings.CurrentOption[1] else bleh = DropdownSettings.CurrentOption end
				SafeCallback(bleh)
				if type(bleh) == "string" then 
					tween(Dropdown.List[bleh], {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
				else
					for i,v in pairs(bleh) do
						tween(Dropdown.List[v], {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
					end
				end

				if DropdownSettings.MultipleOptions then
					if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
						if #DropdownSettings.CurrentOption == 1 then
							Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
						elseif #DropdownSettings.CurrentOption == 0 then
							Dropdown.Selected.PlaceholderText = "None"
						else
							Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
						end
					else
						DropdownSettings.CurrentOption = {}
						Dropdown.Selected.PlaceholderText = "None"
					end
					for _, name in pairs(DropdownSettings.CurrentOption) do
						tween(Dropdown.List[name], {TextColor3 = Color3.fromRGB(227,227,227), BackgroundTransparency = 0.95})
					end
				else
					Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
				end
				Dropdown.Selected.Text = ""

				function DropdownV:Set(NewDropdownSettings)
					NewDropdownSettings = Kwargify(DropdownSettings, NewDropdownSettings or {})

					DropdownV.Settings = NewDropdownSettings
					DropdownSettings = NewDropdownSettings

					Dropdown.Name = DropdownSettings.Name
					Dropdown.Title.Text = DropdownSettings.Name
					if DropdownSettings.Description ~= nil and DropdownSettings.Description ~= "" and Dropdown.Desc ~= nil then
						Dropdown.Desc.Text = DropdownSettings.Description
					end

					if DropdownSettings.SpecialType == "Player" then

						for i,v in pairs(DropdownSettings.Options) do
							table.remove(DropdownSettings.Options, i)
						end
						PlayerTableRefresh()
						DropdownSettings.CurrentOption = DropdownSettings.Options[1]                    
						Players.PlayerAdded:Connect(function() PlayerTableRefresh() end)
						Players.PlayerRemoving:Connect(function() PlayerTableRefresh() end)

					end

					Refresh()

					if DropdownSettings.CurrentOption then
						if type(DropdownSettings.CurrentOption) == "string" then
							DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption}
						end
						if not DropdownSettings.MultipleOptions and type(DropdownSettings.CurrentOption) == "table" then
							DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption[1]}
						end
					else
						DropdownSettings.CurrentOption = {}
					end

					local bleh, ind = nil,0
					for i,v in pairs(DropdownSettings.CurrentOption) do
						ind = ind + 1
					end
					if ind == 1 then bleh = DropdownSettings.CurrentOption[1] else bleh = DropdownSettings.CurrentOption end
					SafeCallback(bleh)
					for _, Option in pairs(Dropdown.List:GetChildren()) do
						if Option.ClassName == "TextLabel" then
							tween(Option, {TextColor3 = Color3.fromRGB(200,200,200), BackgroundTransparency = 0.98})
						end
					end
					tween(Dropdown.List[bleh], {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})

					if DropdownSettings.MultipleOptions then
						if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
							if #DropdownSettings.CurrentOption == 1 then
								Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
							elseif #DropdownSettings.CurrentOption == 0 then
								Dropdown.Selected.PlaceholderText = "None"
							else
								Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
							end
						else
							DropdownSettings.CurrentOption = {}
							Dropdown.Selected.PlaceholderText = "None"
						end
						for _, name in pairs(DropdownSettings.CurrentOption) do
							tween(Dropdown.List[name], {TextColor3 = Color3.fromRGB(227,227,227), BackgroundTransparency = 0.95})
						end
					else
						Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
					end
					Dropdown.Selected.Text = ""

					-- Luna.Flags[DropdownSettings.Flag] = DropdownSettings

				end

				function DropdownV:Destroy()
					Dropdown.Visible = false
					Dropdown:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = DropdownV
				end

				-- Luna.Flags[DropdownSettings.Flag] = DropdownSettings

				return DropdownV

			end

			-- Color Picker
			function Section:CreateColorPicker(ColorPickerSettings, Flag) -- by Rayfield/Throit
				TabPage.Position = UDim2.new(0,0,0,28)
				local ColorPickerV = {IgnoreClass = false, Class = "Colorpicker", Settings = ColorPickerSettings}

				ColorPickerSettings = Kwargify({
					Name = "Color Picker",
					Color = Color3.fromRGB(255,255,255),
					Callback = function(Value)
						-- The function that takes place every time the color picker is moved/changed
						-- The variable (Value) is a Color3fromRGB value based on which color is selected
					end
				}, ColorPickerSettings or {})

				local function Color3ToHex(color)
					return string.format("#%02X%02X%02X", math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255))
				end

				ColorPickerV.Color = Color3ToHex(ColorPickerSettings.Color)

				local closedsize = UDim2.new(0, 75, 0, 22)
				local openedsize = UDim2.new(0, 219, 0, 129)

				local ColorPicker = Elements.Template.ColorPicker:Clone()
				local Background = ColorPicker.CPBackground
				local Display = Background.Display
				local Main = Background.MainCP
				local Slider = ColorPicker.ColorSlider

				ColorPicker.Name = ColorPickerSettings.Name
				ColorPicker.Title.Text = ColorPickerSettings.Name
				ColorPicker.Visible = true
				ColorPicker.Parent = TabPage
				ColorPicker.Size = UDim2.new(1.042, -25,0, 38)
				Background.Size = closedsize
				Display.BackgroundTransparency = 0

				ColorPicker["MouseEnter"]:Connect(function()
					tween(ColorPicker.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)
				ColorPicker["MouseLeave"]:Connect(function()
					tween(ColorPicker.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				local function SafeCallback(param, c2)
					local Success, Response = pcall(function()
						ColorPickerSettings.Callback(param)
					end)
					if not Success then
						TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						ColorPicker.Title.Text = "Callback Error"
						print("Luna Interface Suite | "..ColorPickerSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						ColorPicker.Title.Text = ColorPickerSettings.Name
						TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
					if Success and c2 then
						c2()
					end
				end

				local opened = false

				local mouse = game.Players.LocalPlayer:GetMouse()
				Main.Image = "http://www.roblox.com/asset/?id=11415645739"
				local mainDragging = false 
				local sliderDragging = false 
				ColorPicker.Interact.MouseButton1Down:Connect(function()
					if not opened then
						opened = true 
						tween(ColorPicker, {Size = UDim2.new( 1.042, -25,0, 165)}, nil, TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
						tween(Background, {Size = openedsize})
						tween(Display, {BackgroundTransparency = 1})
					else
						opened = false
						tween(ColorPicker, {Size = UDim2.new(1.042, -25,0, 38)}, nil, TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
						tween(Background, {Size = closedsize})
						tween(Display, {BackgroundTransparency = 0})
					end
				end)
				UserInputService.InputEnded:Connect(function(input, gameProcessed) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
						mainDragging = false
						sliderDragging = false
					end end)
				Main.MouseButton1Down:Connect(function()
					if opened then
						mainDragging = true 
					end
				end)
				Main.MainPoint.MouseButton1Down:Connect(function()
					if opened then
						mainDragging = true 
					end
				end)
				Slider.MouseButton1Down:Connect(function()
					sliderDragging = true 
				end)
				Slider.SliderPoint.MouseButton1Down:Connect(function()
					sliderDragging = true 
				end)
				local h,s,v = ColorPickerSettings.Color:ToHSV()
				local color = Color3.fromHSV(h,s,v) 
				local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
				local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
				ColorPicker.HexInput.InputBox.Text = hex
				local function setDisplay(hp,sp,vp)
					--Main
					Main.MainPoint.Position = UDim2.new(s,-Main.MainPoint.AbsoluteSize.X/2,1-v,-Main.MainPoint.AbsoluteSize.Y/2)
					Main.MainPoint.ImageColor3 = Color3.fromHSV(hp,sp,vp)
					Background.BackgroundColor3 = Color3.fromHSV(hp,1,1)
					Display.BackgroundColor3 = Color3.fromHSV(hp,sp,vp)
					--Slider 
					local x = hp * Slider.AbsoluteSize.X
					Slider.SliderPoint.Position = UDim2.new(0,x-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
					Slider.SliderPoint.ImageColor3 = Color3.fromHSV(hp,1,1)
					local color = Color3.fromHSV(hp,sp,vp) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPicker.RInput.InputBox.Text = tostring(r)
					ColorPicker.GInput.InputBox.Text = tostring(g)
					ColorPicker.BInput.InputBox.Text = tostring(b)
					hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					ColorPicker.HexInput.InputBox.Text = hex
				end
				setDisplay(h,s,v)
				ColorPicker.HexInput.InputBox.FocusLost:Connect(function()
					if not pcall(function()
							local r, g, b = string.match(ColorPicker.HexInput.InputBox.Text, "^#?(%w%w)(%w%w)(%w%w)$")
							local rgbColor = Color3.fromRGB(tonumber(r, 16),tonumber(g, 16), tonumber(b, 16))
							h,s,v = rgbColor:ToHSV()
							hex = ColorPicker.HexInput.InputBox.Text
							setDisplay()
							ColorPickerSettings.Color = rgbColor
						end) 
					then 
						ColorPicker.HexInput.InputBox.Text = hex 
					end
					local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					SafeCallback( Color3.fromRGB(r,g,b))
				end)
				--RGB
				local function rgbBoxes(box,toChange)
					local value = tonumber(box.Text) 
					local color = Color3.fromHSV(h,s,v) 
					local oldR,oldG,oldB = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					local save 
					if toChange == "R" then save = oldR;oldR = value elseif toChange == "G" then save = oldG;oldG = value else save = oldB;oldB = value end
					if value then 
						value = math.clamp(value,0,255)
						h,s,v = Color3.fromRGB(oldR,oldG,oldB):ToHSV()
						setDisplay()
					else 
						box.Text = tostring(save)
					end
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
				end
				ColorPicker.RInput.InputBox.FocusLost:connect(function()
					rgbBoxes(ColorPicker.RInput.InputBox,"R")
					SafeCallback(Color3.fromRGB(r,g,b))
				end)
				ColorPicker.GInput.InputBox.FocusLost:connect(function()
					rgbBoxes(ColorPicker.GInput.InputBox,"G")
					SafeCallback(Color3.fromRGB(r,g,b))
				end)
				ColorPicker.BInput.InputBox.FocusLost:connect(function()
					rgbBoxes(ColorPicker.BInput.InputBox,"B")
					SafeCallback(Color3.fromRGB(r,g,b))
				end)
				RunService.RenderStepped:connect(function()
					if mainDragging then 
						local localX = math.clamp(mouse.X-Main.AbsolutePosition.X,0,Main.AbsoluteSize.X)
						local localY = math.clamp(mouse.Y-Main.AbsolutePosition.Y,0,Main.AbsoluteSize.Y)
						Main.MainPoint.Position = UDim2.new(0,localX-Main.MainPoint.AbsoluteSize.X/2,0,localY-Main.MainPoint.AbsoluteSize.Y/2)
						s = localX / Main.AbsoluteSize.X
						v = 1 - (localY / Main.AbsoluteSize.Y)
						Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
						Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
						Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
						local color = Color3.fromHSV(h,s,v) 
						local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
						ColorPicker.RInput.InputBox.Text = tostring(r)
						ColorPicker.GInput.InputBox.Text = tostring(g)
						ColorPicker.BInput.InputBox.Text = tostring(b)
						ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
						SafeCallback(Color3.fromRGB(r,g,b))
						ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
						ColorPickerV.Color = ColorPickerSettings.Color
					end
					if sliderDragging then 
						local localX = math.clamp(mouse.X-Slider.AbsolutePosition.X,0,Slider.AbsoluteSize.X)
						h = localX / Slider.AbsoluteSize.X
						Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
						Slider.SliderPoint.Position = UDim2.new(0,localX-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
						Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
						Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
						Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
						local color = Color3.fromHSV(h,s,v) 
						local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
						ColorPicker.RInput.InputBox.Text = tostring(r)
						ColorPicker.GInput.InputBox.Text = tostring(g)
						ColorPicker.BInput.InputBox.Text = tostring(b)
						ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
						SafeCallback(Color3.fromRGB(r,g,b))
						ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
						ColorPickerV.Color = ColorPickerSettings.Color
					end
				end)

				function ColorPickerV:Set(NewColorPickerSettings)

					NewColorPickerSettings = Kwargify(ColorPickerSettings, NewColorPickerSettings or {})

					ColorPickerV.Settings = NewColorPickerSettings
					ColorPickerSettings = NewColorPickerSettings

					ColorPicker.Name = ColorPickerSettings.Name
					ColorPicker.Title.Text = ColorPickerSettings.Name
					ColorPicker.Visible = true

					local h,s,v = ColorPickerSettings.Color:ToHSV()
					local color = Color3.fromHSV(h,s,v) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					ColorPicker.HexInput.InputBox.Text = hex
					setDisplay(h,s,v)
					SafeCallback(Color3.fromRGB(r,g,b))

					ColorPickerV.Color = ColorPickerSettings.Color
				end

				function ColorPickerV:Destroy()
					ColorPicker:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = ColorPickerV
				end

				SafeCallback(ColorPickerSettings.Color)

				return ColorPickerV
			end

			return Section

		end

		-- Divider
		function Tab:CreateDivider()
			local b = Elements.Template.Divider:Clone()
			b.Parent = TabPage
			b.Line.BackgroundTransparency = 1
			tween(b.Line, {BackgroundTransparency = 0})
		end

		-- Button
		function Tab:CreateButton(ButtonSettings)

			ButtonSettings = Kwargify({
				Name = "Button",
				Description = nil,
				Callback = function()

				end,
			}, ButtonSettings or {})

			local ButtonV = {
				Hover = false,
				Settings = ButtonSettings
			}


			local Button
			if ButtonSettings.Description == nil and ButtonSettings.Description ~= "" then
				Button = Elements.Template.Button:Clone()
			else
				Button = Elements.Template.ButtonDesc:Clone()
			end
			Button.Name = ButtonSettings.Name
			Button.Title.Text = ButtonSettings.Name
			if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
				Button.Desc.Text = ButtonSettings.Description
			end
			Button.Visible = true
			Button.Parent = TabPage

			Button.UIStroke.Transparency = 1
			Button.Title.TextTransparency = 1
			if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
				Button.Desc.TextTransparency = 1
			end

			TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Button.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
			if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
				TweenService:Create(Button.Desc, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
			end

			Button.Interact["MouseButton1Click"]:Connect(function()
				local Success,Response = pcall(ButtonSettings.Callback)

				if not Success then
					TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					Button.Title.Text = "Callback Error"
					print("Luna Interface Suite | "..ButtonSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Button.Title.Text = ButtonSettings.Name
					TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				else
					tween(Button.UIStroke, {Color = Color3.fromRGB(136, 131, 163)})
					wait(0.2)
					if ButtonV.Hover then
						tween(Button.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
					else
						tween(Button.UIStroke, {Color = Color3.fromRGB(64,61,76)})
					end
				end
			end)

			Button["MouseEnter"]:Connect(function()
				ButtonV.Hover = true
				tween(Button.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Button["MouseLeave"]:Connect(function()
				ButtonV.Hover = false
				tween(Button.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			function ButtonV:Set(ButtonSettings2)
				ButtonSettings2 = Kwargify({
					Name = ButtonSettings.Name,
					Description = ButtonSettings.Description,
					Callback = ButtonSettings.Callback
				}, ButtonSettings2 or {})

				ButtonSettings = ButtonSettings2
				ButtonV.Settings = ButtonSettings2

				Button.Name = ButtonSettings.Name
				Button.Title.Text = ButtonSettings.Name
				if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" and Button.Desc ~= nil then
					Button.Desc.Text = ButtonSettings.Description
				end
			end

			function ButtonV:Destroy()
				Button.Visible = false
				Button:Destroy()
			end

			return ButtonV
		end

		-- Label
		function Tab:CreateLabel(LabelSettings)

			local LabelV = {}

			LabelSettings = Kwargify({
				Text = "Label",
				Style = 1
			}, LabelSettings or {}) 

			LabelV.Settings = LabelSettings

			local Label
			if LabelSettings.Style == 1 then
				Label = Elements.Template.Label:Clone()
			elseif LabelSettings.Style == 2 then
				Label = Elements.Template.Info:Clone()
			elseif LabelSettings.Style == 3 then
				Label = Elements.Template.Warn:Clone()
			end

			Label.Text.Text = LabelSettings.Text
			Label.Visible = true
			Label.Parent = TabPage

			Label.BackgroundTransparency = 1
			Label.UIStroke.Transparency = 1
			Label.Text.TextTransparency = 1

			if LabelSettings.Style ~= 1 then
				TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.8}):Play()
			else
				TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
			end
			TweenService:Create(Label.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Label.Text, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

			function LabelV:Set(NewLabel)
				LabelSettings.Text = NewLabel
				LabelV.Settings = LabelSettings
				Label.Text.Text = NewLabel
			end

			function LabelV:Destroy()
				Label.Visible = false
				Label:Destroy()
			end

			return LabelV
		end

		-- Paragraph
		function Tab:CreateParagraph(ParagraphSettings)

			ParagraphSettings = Kwargify({
				Title = "Paragraph",
				Text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus venenatis lacus sed tempus eleifend. Mauris interdum bibendum felis, in tempor augue egestas vel. Praesent tristique consectetur ex, eu pretium sem placerat non. Vestibulum a nisi sit amet augue facilisis consectetur sit amet et nunc. Integer fermentum ornare cursus. Pellentesque sed ultricies metus, ut egestas metus. Vivamus auctor erat ac sapien vulputate, nec ultricies sem tempor. Quisque leo lorem, faucibus nec pulvinar nec, congue eu velit. Duis sodales massa efficitur imperdiet ultrices. Donec eros ipsum, ornare pharetra purus aliquam, tincidunt elementum nisi. Ut mi tortor, feugiat eget nunc vitae, facilisis interdum dui. Vivamus ullamcorper nunc dui, a dapibus nisi pretium ac. Integer eleifend placerat nibh, maximus malesuada tellus. Cras in justo in ligula scelerisque suscipit vel vitae quam."
			}, ParagraphSettings or {})

			local ParagraphV = {
				Settings = ParagraphSettings
			}

			local Paragraph = Elements.Template.Paragraph:Clone()
			Paragraph.Title.Text = ParagraphSettings.Title
			Paragraph.Text.Text = ParagraphSettings.Text
			Paragraph.Visible = true
			Paragraph.Parent = TabPage

			Paragraph.BackgroundTransparency = 1
			Paragraph.UIStroke.Transparency = 1
			Paragraph.Title.TextTransparency = 1
			Paragraph.Text.TextTransparency = 1

			TweenService:Create(Paragraph, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
			TweenService:Create(Paragraph.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Paragraph.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
			TweenService:Create(Paragraph.Text, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

			function ParagraphV:Update()
				Paragraph.Text.Size = UDim2.new(Paragraph.Text.Size.X.Scale, Paragraph.Text.Size.X.Offset, 0, math.huge)
				Paragraph.Text.Size = UDim2.new(Paragraph.Text.Size.X.Scale, Paragraph.Text.Size.X.Offset, 0, Paragraph.Text.TextBounds.Y)
				tween(Paragraph, {Size = UDim2.new(Paragraph.Size.X.Scale, Paragraph.Size.X.Offset, 0, Paragraph.Text.TextBounds.Y + 40)})
			end

			function ParagraphV:Set(NewParagraphSettings)

				NewParagraphSettings = Kwargify({
					Title = ParagraphSettings.Title,
					Text = ParagraphSettings.Text
				}, NewParagraphSettings or {})

				ParagraphV.Settings = NewParagraphSettings

				Paragraph.Title.Text = NewParagraphSettings.Title
				Paragraph.Text.Text = NewParagraphSettings.Text

				ParagraphV:Update()

			end

			function ParagraphV:Destroy()
				Paragraph.Visible = false
				Paragraph:Destroy()
			end

			ParagraphV:Update()

			return ParagraphV
		end

		-- Slider
		function Tab:CreateSlider(SliderSettings, Flag)
			local SliderV = { IgnoreConfig = false, Class = "Slider", Settings = SliderSettings }

			SliderSettings = Kwargify({
				Name = "Slider",
				Range = {0, 200},
				Increment = 1,
				CurrentValue = 100,
				Callback = function(Value)

				end,
			}, SliderSettings or {})

			local SLDragging = false
			local Slider = Elements.Template.Slider:Clone()
			Slider.Name = SliderSettings.Name .. " - Slider"
			Slider.Title.Text = SliderSettings.Name
			Slider.Visible = true
			Slider.Parent = TabPage

			Slider.BackgroundTransparency = 1
			Slider.UIStroke.Transparency = 1
			Slider.Title.TextTransparency = 1

			TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Slider.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

			Slider.Main.Progress.Size =	UDim2.new(0, Slider.Main.AbsoluteSize.X * ((SliderSettings.CurrentValue + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (SliderSettings.CurrentValue / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)

			Slider.Value.Text = tostring(SliderSettings.CurrentValue)
			SliderV.CurrentValue = Slider.Value.Text

			SliderSettings.Callback(SliderSettings.CurrentValue)

			Slider["MouseEnter"]:Connect(function()
				tween(Slider.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Slider["MouseLeave"]:Connect(function()
				tween(Slider.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			Slider.Interact.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
					SLDragging = true 
				end 
			end)

			Slider.Interact.InputEnded:Connect(function(Input) 
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
					SLDragging = false 
				end 
			end)

			Slider.Interact.MouseButton1Down:Connect(function()
				local Current = Slider.Main.Progress.AbsolutePosition.X + Slider.Main.Progress.AbsoluteSize.X
				local Start = Current
				local Location
				local Loop; Loop = RunService.Stepped:Connect(function()
					if SLDragging then
						Location = UserInputService:GetMouseLocation().X
						Current = Current + 0.025 * (Location - Start)

						if Location < Slider.Main.AbsolutePosition.X then
							Location = Slider.Main.AbsolutePosition.X
						elseif Location > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
							Location = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
						end

						if Current < Slider.Main.AbsolutePosition.X + 5 then
							Current = Slider.Main.AbsolutePosition.X + 5
						elseif Current > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
							Current = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
						end

						if Current <= Location and (Location - Start) < 0 then
							Start = Location
						elseif Current >= Location and (Location - Start) > 0 then
							Start = Location
						end
						Slider.Main.Progress.Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X, 1, 0)
						local NewValue = SliderSettings.Range[1] + (Location - Slider.Main.AbsolutePosition.X) / Slider.Main.AbsoluteSize.X * (SliderSettings.Range[2] - SliderSettings.Range[1])

						NewValue = math.floor(NewValue / SliderSettings.Increment + 0.5) * (SliderSettings.Increment * 10000000) / 10000000

						Slider.Value.Text = tostring(NewValue)

						if SliderSettings.CurrentValue ~= NewValue then
							local Success, Response = pcall(function()
								SliderSettings.Callback(NewValue)
							end)
							if not Success then
								TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
								TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
								Slider.Title.Text = "Callback Error"
								print("Luna Interface Suite | "..SliderSettings.Name.." Callback Error " ..tostring(Response))
								wait(0.5)
								Slider.Title.Text = SliderSettings.Name
								TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
								TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
								TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
							end

							SliderSettings.CurrentValue = NewValue
							SliderV.CurrentValue = SliderSettings.CurrentValue
							-- Luna.Flags[SliderSettings.Flag] = SliderSettings
						end
					else
						TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.In, 0, false), {Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X > 5 and Location - Slider.Main.AbsolutePosition.X or 5, 1, 0)}):Play()
						Loop:Disconnect()
					end
				end)
			end)

			local function Set(NewVal, bleh)

				NewVal = NewVal or SliderSettings.CurrentValue

				TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Size = UDim2.new(0, Slider.Main.AbsoluteSize.X * ((NewVal + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (NewVal / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)}):Play()
				if not bleh then Slider.Value.Text = tostring(NewVal) end
				local Success, Response = pcall(function()
					SliderSettings.Callback(NewVal)
				end)
				if not Success then
					TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					Slider.Title.Text = "Callback Error"
					print("Luna Interface Suite | "..SliderSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Slider.Title.Text = SliderSettings.Name
					TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(30, 33, 40)}):Play()
					TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end

				SliderSettings.CurrentValue = NewVal
				SliderV.CurrentValue = SliderSettings.CurrentValue
				-- Luna.Flags[SliderSettings.Flag] = SliderSettings

			end

			function SliderV:UpdateValue(Value)
				Set(tonumber(Value))
			end 

			Slider.Value:GetPropertyChangedSignal("Text"):Connect(function()
				local text = Slider.Value.Text
				if not tonumber(text) and text ~= "." then
					Slider.Value.Text = text:match("[0-9.]*") or ""
				end
				if SliderSettings.Range[2] < (tonumber(Slider.Value.Text) or 0) then Slider.Value.Text = SliderSettings.Range[2] end
				Slider.Value.Size = UDim2.fromOffset(Slider.Value.TextBounds.X, 23)
				Set(tonumber(Slider.Value.Text), true)
			end)

			function SliderV:Set(NewSliderSettings)
				NewSliderSettings = Kwargify({
					Name = SliderSettings.Name,
					Range = SliderSettings.Range,
					Increment = SliderSettings.Increment,
					CurrentValue = SliderSettings.CurrentValue,
					Callback = SliderSettings.Callback
				}, NewSliderSettings or {})

				SliderSettings = NewSliderSettings
				SliderV.Settings = NewSliderSettings

				Slider.Name = SliderSettings.Name .. " - Slider"
				Slider.Title.Text = SliderSettings.Name

				Set()

				-- Luna.Flags[SliderSettings.Flag] = SliderSettings
			end

			function SliderV:Destroy()
				Slider.Visible = false
				Slider:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = SliderV
			end

			LunaUI.ThemeRemote:GetPropertyChangedSignal("Value"):Connect(function()
				Slider.Main.color.Color = Luna.ThemeGradient
				Slider.Main.UIStroke.color.Color = Luna.ThemeGradient
			end)

			return SliderV

		end

		-- Toggle
		function Tab:CreateToggle(ToggleSettings, Flag)    
			local ToggleV = { IgnoreConfig = false, Class = "Toggle" }

			ToggleSettings = Kwargify({
				Name = "Toggle",
				Description = nil,
				CurrentValue = false,
				Callback = function(Value)
				end,
			}, ToggleSettings or {})


			local Toggle

			if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
				Toggle = Elements.Template.ToggleDesc:Clone()
			else
				Toggle = Elements.Template.Toggle:Clone()
			end

			Toggle.Visible = true
			Toggle.Parent = TabPage

			Toggle.Name = ToggleSettings.Name .. " - Toggle"
			Toggle.Title.Text = ToggleSettings.Name
			if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
				Toggle.Desc.Text = ToggleSettings.Description
			end

			Toggle.UIStroke.Transparency = 1
			Toggle.Title.TextTransparency = 1
			if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
				Toggle.Desc.TextTransparency = 1
			end

			TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
				TweenService:Create(Toggle.Desc, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			end
			TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Toggle.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

			local function Set(bool)
				if bool then
					Toggle.toggle.color.Enabled = true
					tween(Toggle.toggle, {BackgroundTransparency = 0})

					Toggle.toggle.UIStroke.color.Enabled = true
					tween(Toggle.toggle.UIStroke, {Color = Color3.new(255,255,255)})

					tween(Toggle.toggle.val, {BackgroundColor3 = Color3.fromRGB(255,255,255), Position = UDim2.new(1,-23,0.5,0), BackgroundTransparency = 0.45})
				else
					Toggle.toggle.color.Enabled = false
					Toggle.toggle.UIStroke.color.Enabled = false

					Toggle.toggle.UIStroke.Color = Color3.fromRGB(97,97,97)

					tween(Toggle.toggle, {BackgroundTransparency = 1})

					tween(Toggle.toggle.val, {BackgroundColor3 = Color3.fromRGB(97,97,97), Position = UDim2.new(0,5,0.5,0), BackgroundTransparency = 0})
				end

				ToggleV.CurrentValue = bool
			end

			Toggle.Interact.MouseButton1Click:Connect(function()
				ToggleSettings.CurrentValue = not ToggleSettings.CurrentValue
				Set(ToggleSettings.CurrentValue)

				local Success, Response = pcall(function()
					ToggleSettings.Callback(ToggleSettings.CurrentValue)
				end)
				if not Success then
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					Toggle.Title.Text = "Callback Error"
					print("Luna Interface Suite | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Toggle.Title.Text = ToggleSettings.Name
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
			end)

			Toggle["MouseEnter"]:Connect(function()
				tween(Toggle.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Toggle["MouseLeave"]:Connect(function()
				tween(Toggle.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			if ToggleSettings.CurrentValue then
				Set(ToggleSettings.CurrentValue)
				local Success, Response = pcall(function()
					ToggleSettings.Callback(ToggleSettings.CurrentValue)
				end)
				if not Success then
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					Toggle.Title.Text = "Callback Error"
					print("Luna Interface Suite | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Toggle.Title.Text = ToggleSettings.Name
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
			end

			function ToggleV:UpdateState(State)
				ToggleSettings.CurrentValue = State
				Set(ToggleSettings.CurrentValue)
			end

			function ToggleV:Set(NewToggleSettings)

				NewToggleSettings = Kwargify({
					Name = ToggleSettings.Name,
					Description = ToggleSettings.Description,
					CurrentValue = ToggleSettings.CurrentValue,
					Callback = ToggleSettings.Callback
				}, NewToggleSettings or {})

				ToggleV.Settings = NewToggleSettings
				ToggleSettings = NewToggleSettings

				Toggle.Name = ToggleSettings.Name .. " - Toggle"
				Toggle.Title.Text = ToggleSettings.Name
				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" and Toggle.Desc ~= nil then
					Toggle.Desc.Text = ToggleSettings.Description
				end

				Set(ToggleSettings.CurrentValue)

				ToggleV.CurrentValue = ToggleSettings.CurrentValue

				local Success, Response = pcall(function()
					ToggleSettings.Callback(ToggleSettings.CurrentValue)
				end)
				if not Success then
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0}):Play()
					Toggle.Title.Text = "Callback Error"
					print("Luna Interface Suite | "..ToggleSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Toggle.Title.Text = ToggleSettings.Name
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
			end

			function ToggleV:Destroy()
				Toggle.Visible = false
				Toggle:Destroy()
			end

			LunaUI.ThemeRemote:GetPropertyChangedSignal("Value"):Connect(function()
				Toggle.toggle.color.Color = Luna.ThemeGradient
				Toggle.toggle.UIStroke.color.Color = Luna.ThemeGradient
			end)

			if Flag then
				Luna.Options[Flag] = ToggleV
			end

			return ToggleV

		end

		-- Bind
		function Tab:CreateBind(BindSettings, Flag)
			local BindV = { Class = "Keybind", IgnoreConfig = false, Settings = BindSettings, Active = false }

			BindSettings = Kwargify({
				Name = "Bind",
				Description = nil,
				CurrentBind = "Q",
				HoldToInteract = false, -- setting this makes the Bind in toggle mode
				Callback = function(Bind)
					-- The function that takes place when the Bind is pressed
					-- The variable (Bind) is a boolean for whether the Bind is being held or not (HoldToInteract needs to be true) or whether the Bind is currently active
				end,

				OnChangedCallback = function(Bind)
					-- The function that takes place when the binded key changes
					-- The variable (Bind) is a Enum.KeyCode for the new Binded Key
				end,
			}, BindSettings or {})

			local CheckingForKey = false

			local Bind
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind = Elements.Template.BindDesc:Clone()
			else
				Bind = Elements.Template.Bind:Clone()
			end

			Bind.Visible = true
			Bind.Parent = TabPage

			Bind.Name = BindSettings.Name
			Bind.Title.Text = BindSettings.Name
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind.Desc.Text = BindSettings.Description
			end

			Bind.Title.TextTransparency = 1
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind.Desc.TextTransparency = 1
			end
			Bind.BindFrame.BackgroundTransparency = 1
			Bind.BindFrame.UIStroke.Transparency = 1
			Bind.BindFrame.BindBox.TextTransparency = 1

			TweenService:Create(Bind, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(Bind.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				TweenService:Create(Bind.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			end
			TweenService:Create(Bind.BindFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
			TweenService:Create(Bind.BindFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
			TweenService:Create(Bind.BindFrame.BindBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()


			Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
			Bind.BindFrame.BindBox.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 42)

			Bind.BindFrame.BindBox.Focused:Connect(function()
				CheckingForKey = true
				Bind.BindFrame.BindBox.Text = ""
			end)

			Bind.BindFrame.BindBox.FocusLost:Connect(function()
				CheckingForKey = false
				if Bind.BindFrame.BindBox.Text == (nil or "") then
					Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				end
			end)

			Bind["MouseEnter"]:Connect(function()
				tween(Bind.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Bind["MouseLeave"]:Connect(function()
				tween(Bind.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)
			UserInputService.InputBegan:Connect(function(input, processed)

				if CheckingForKey then
					if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Window.Bind then
						local SplitMessage = string.split(tostring(input.KeyCode), ".")
						local NewKeyNoEnum = SplitMessage[3]
						Bind.BindFrame.BindBox.Text = tostring(NewKeyNoEnum)
						BindSettings.CurrentBind = tostring(NewKeyNoEnum)
						local Success, Response = pcall(function()
							BindSettings.Callback(BindSettings.CurrentBind)
						end)
						if not Success then
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Bind.Title.Text = "Callback Error"
							print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
							wait(0.5)
							Bind.Title.Text = BindSettings.Name
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
						Bind.BindFrame.BindBox:ReleaseFocus()
					end
				elseif BindSettings.CurrentBind ~= nil and (input.KeyCode == Enum.KeyCode[BindSettings.CurrentBind] and not processed) then -- Test
					local Held = true
					local Connection
					Connection = input.Changed:Connect(function(prop)
						if prop == "UserInputState" then
							Connection:Disconnect()
							Held = false
						end
					end)

					if not BindSettings.HoldToInteract then
						BindV.Active = not BindV.Active
						local Success, Response = pcall(function()
							BindSettings.Callback(BindV.Active)
						end)
						if not Success then
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Bind.Title.Text = "Callback Error"
							print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
							wait(0.5)
							Bind.Title.Text = BindSettings.Name
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
					else
						wait(0.1)
						if Held then
							local Loop; Loop = RunService.Stepped:Connect(function()
								if not Held then
									local Success, Response = pcall(function()
										BindSettings.Callback(false)
									end)
									if not Success then
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
										Bind.Title.Text = "Callback Error"
										print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
										wait(0.5)
										Bind.Title.Text = BindSettings.Name
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
									end 
									Loop:Disconnect()
								else
									local Success, Response = pcall(function()
										BindSettings.Callback(true)
									end)
									if not Success then
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
										Bind.Title.Text = "Callback Error"
										print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
										wait(0.5)
										Bind.Title.Text = BindSettings.Name
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
									end
								end
							end)	
						end
					end
				end
			end)

			Bind.BindFrame.BindBox:GetPropertyChangedSignal("Text"):Connect(function()
				TweenService:Create(Bind.BindFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 30)}):Play()
			end)

			function BindV:Set(NewBindSettings)

				NewBindSettings = Kwargify({
					Name = BindSettings.Name,
					Description = BindSettings.Description,
					CurrentBind =  BindSettings.CurrentBind,
					HoldToInteract = BindSettings.HoldToInteract,
					Callback = BindSettings.Callback
				}, NewBindSettings or {})

				BindV.Settings = NewBindSettings
				BindSettings = NewBindSettings

				Bind.Name = BindSettings.Name
				Bind.Title.Text = BindSettings.Name
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" and Bind.Desc ~= nil then
					Bind.Desc.Text = BindSettings.Description
				end

				Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				Bind.BindFrame.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 42)


				BindV.CurrentBind = BindSettings.CurrentBind
			end

			function BindV:Destroy()
				Bind.Visible = false
				Bind:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = BindV
			end

			-- Luna.Flags[BindSettings.Flag] = BindSettings

			return BindV

		end

		function Tab:CreateKeybind(BindSettings)

			BindSettings = Kwargify({
				Name = "Bind",
				Description = nil,
				CurrentBind = "Q",
				HoldToInteract = false, -- setting this makes the Bind in toggle mode
				Callback = function(Bind)
					-- The function that takes place when the Bind is pressed
					-- The variable (Bind) is a boolean for whether the Bind is being held or not (HoldToInteract needs to be true) or whether the Bind is currently active
				end
			}, BindSettings or {})

			local BindV = { Settings = BindSettings, Active = false }
			local CheckingForKey = false

			local Bind
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind = Elements.Template.BindDesc:Clone()
			else
				Bind = Elements.Template.Bind:Clone()
			end

			Bind.Visible = true
			Bind.Parent = TabPage

			Bind.Name = BindSettings.Name
			Bind.Title.Text = BindSettings.Name
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind.Desc.Text = BindSettings.Description
			end

			Bind.Title.TextTransparency = 1
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind.Desc.TextTransparency = 1
			end
			Bind.BindFrame.BackgroundTransparency = 1
			Bind.BindFrame.UIStroke.Transparency = 1
			Bind.BindFrame.BindBox.TextTransparency = 1

			TweenService:Create(Bind, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(Bind.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				TweenService:Create(Bind.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			end
			TweenService:Create(Bind.BindFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
			TweenService:Create(Bind.BindFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
			TweenService:Create(Bind.BindFrame.BindBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()


			Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
			Bind.BindFrame.BindBox.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 16, 0, 42)

			Bind.BindFrame.BindBox.Focused:Connect(function()
				CheckingForKey = true
				Bind.BindFrame.BindBox.Text = ""
			end)

			Bind.BindFrame.BindBox.FocusLost:Connect(function()
				CheckingForKey = false
				if Bind.BindFrame.BindBox.Text == (nil or "") then
					Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				end
			end)

			Bind["MouseEnter"]:Connect(function()
				tween(Bind.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Bind["MouseLeave"]:Connect(function()
				tween(Bind.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)
			UserInputService.InputBegan:Connect(function(input, processed)

				if CheckingForKey then
					if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Enum.KeyCode.K then
						local SplitMessage = string.split(tostring(input.KeyCode), ".")
						local NewKeyNoEnum = SplitMessage[3]
						Bind.BindFrame.BindBox.Text = tostring(NewKeyNoEnum)
						BindSettings.CurrentBind = tostring(NewKeyNoEnum)
						Bind.BindFrame.BindBox:ReleaseFocus()
					end
				elseif BindSettings.CurrentBind ~= nil and (input.KeyCode == Enum.KeyCode[BindSettings.CurrentBind] and not processed) then -- Test
					local Held = true
					local Connection
					Connection = input.Changed:Connect(function(prop)
						if prop == "UserInputState" then
							Connection:Disconnect()
							Held = false
						end
					end)

					if not BindSettings.HoldToInteract then
						BindV.Active = not BindV.Active
						local Success, Response = pcall(function()
							BindSettings.Callback(BindV.Active)
						end)
						if not Success then
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Bind.Title.Text = "Callback Error"
							print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
							wait(0.5)
							Bind.Title.Text = BindSettings.Name
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
					else
						wait(0.1)
						if Held then
							local Loop; Loop = RunService.Stepped:Connect(function()
								if not Held then
									local Success, Response = pcall(function()
										BindSettings.Callback(false)
									end)
									if not Success then
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
										Bind.Title.Text = "Callback Error"
										print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
										wait(0.5)
										Bind.Title.Text = BindSettings.Name
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
									end 
									Loop:Disconnect()
								else
									local Success, Response = pcall(function()
										BindSettings.Callback(true)
									end)
									if not Success then
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
										Bind.Title.Text = "Callback Error"
										print("Luna Interface Suite | "..BindSettings.Name.." Callback Error " ..tostring(Response))
										wait(0.5)
										Bind.Title.Text = BindSettings.Name
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
									end
								end
							end)	
						end
					end
				end
			end)

			Bind.BindFrame.BindBox:GetPropertyChangedSignal("Text"):Connect(function()
				TweenService:Create(Bind.BindFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 16, 0, 30)}):Play()
			end)

			function BindV:Set(NewBindSettings)

				NewBindSettings = Kwargify({
					Name = BindSettings.Name,
					Description = BindSettings.Description,
					CurrentBind =  BindSettings.CurrentBind,
					HoldToInteract = BindSettings.HoldToInteract,
					Callback = BindSettings.Callback
				}, NewBindSettings or {})

				BindV.Settings = NewBindSettings
				BindSettings = NewBindSettings

				Bind.Name = BindSettings.Name
				Bind.Title.Text = BindSettings.Name
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" and Bind.Desc ~= nil then
					Bind.Desc.Text = BindSettings.Description
				end

				Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				Bind.BindFrame.BindBox.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 16, 0, 42)

				-- Luna.Flags[BindSettings.Flag] = BindSettings

			end

			function BindV:Destroy()
				Bind.Visible = false
				Bind:Destroy()
			end

			-- Luna.Flags[BindSettings.Flag] = BindSettings

			return BindV

		end

		-- Dynamic Input
		function Tab:CreateInput(InputSettings, Flag)
			local InputV = { IgnoreConfig = false, Class = "Input", Settings = InputSettings }

			InputSettings = Kwargify({
				Name = "Dynamic Input",
				Description = nil,
				CurrentValue = "",
				PlaceholderText = "Input Placeholder",
				RemoveTextAfterFocusLost = false,
				Numeric = false,
				Enter = false,
				MaxCharacters = nil,
				Callback = function(Text)

				end, -- 52
			}, InputSettings or {})

			InputV.CurrentValue = InputSettings.CurrentValue

			local descriptionbool
			if InputSettings.Description ~= nil and InputSettings.Description ~= "" then
				descriptionbool = true
			end

			local Input 
			if descriptionbool then
				Input = Elements.Template.InputDesc:Clone()
			else
				Input = Elements.Template.Input:Clone()
			end

			Input.Name = InputSettings.Name
			Input.Title.Text = InputSettings.Name
			if descriptionbool then Input.Desc.Text = InputSettings.Description end
			Input.Visible = true
			Input.Parent = TabPage

			Input.BackgroundTransparency = 1
			Input.UIStroke.Transparency = 1
			Input.Title.TextTransparency = 1
			if descriptionbool then Input.Desc.TextTransparency = 1 end
			Input.InputFrame.BackgroundTransparency = 1
			Input.InputFrame.UIStroke.Transparency = 1
			Input.InputFrame.InputBox.TextTransparency = 1

			TweenService:Create(Input, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(Input.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Input.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
			if descriptionbool then TweenService:Create(Input.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play() end
			TweenService:Create(Input.InputFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
			TweenService:Create(Input.InputFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
			TweenService:Create(Input.InputFrame.InputBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()

			Input.InputFrame.InputBox.PlaceholderText = InputSettings.PlaceholderText
			Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 30)

			Input.InputFrame.InputBox.FocusLost:Connect(function(bleh)

				if InputSettings.Enter then
					if bleh then
						local Success, Response = pcall(function()
							InputSettings.Callback(Input.InputFrame.InputBox.Text)
							InputV.CurrentValue = Input.InputFrame.InputBox.Text
						end)
						if not Success then
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Input.Title.Text = "Callback Error"
							print("Luna Interface Suite | "..InputSettings.Name.." Callback Error " ..tostring(Response))
							wait(0.5)
							Input.Title.Text = InputSettings.Name
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
					end
				end

				if InputSettings.RemoveTextAfterFocusLost then
					Input.InputFrame.InputBox.Text = ""
				end

			end)

			if InputSettings.Numeric then
				Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
					local text = Input.InputFrame.InputBox.Text
					if not tonumber(text) and text ~= "." then
						Input.InputFrame.InputBox.Text = text:match("[0-9.]*") or ""
					end
				end)
			end

			Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
				if tonumber(InputSettings.MaxCharacters) then
					if (#Input.InputFrame.InputBox.Text - 1) == InputSettings.MaxCharacters then
						Input.InputFrame.InputBox.Text = Input.InputFrame.InputBox.Text:sub(1, InputSettings.MaxCharacters)
					end
				end
				TweenService:Create(Input.InputFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 30)}):Play()
				if not InputSettings.Enter then
					local Success, Response = pcall(function()
						InputSettings.Callback(Input.InputFrame.InputBox.Text)
					end)
					if not Success then
						TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Input.Title.Text = "Callback Error"
						print("Luna Interface Suite | "..InputSettings.Name.." Callback Error " ..tostring(Response))
						wait(0.5)
						Input.Title.Text = InputSettings.Name
						TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
				end
				InputV.CurrentValue = Input.InputFrame.InputBox.Text				
			end)

			Input["MouseEnter"]:Connect(function()
				tween(Input.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Input["MouseLeave"]:Connect(function()
				tween(Input.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)


			function InputV:Set(NewInputSettings)

				NewInputSettings = Kwargify(InputSettings, NewInputSettings or {})

				InputV.Settings = NewInputSettings
				InputSettings = NewInputSettings

				Input.Name = InputSettings.Name
				Input.Title.Text = InputSettings.Name
				if InputSettings.Description ~= nil and InputSettings.Description ~= "" and Input.Desc ~= nil then
					Input.Desc.Text = InputSettings.Description
				end

				Input.InputFrame.InputBox:CaptureFocus()
				Input.InputFrame.InputBox.Text = tostring(InputSettings.CurrentValue)
				Input.InputFrame.InputBox:ReleaseFocus()
				Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 42)

				InputV.CurrentValue = InputSettings.CurrentValue
			end

			function InputV:Destroy()
				Input.Visible = false
				Input:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = InputV
			end


			return InputV

		end

		-- Dropdown
		function Tab:CreateDropdown(DropdownSettings, Flag)
			local DropdownV = { IgnoreConfig = false, Class = "Dropdown", Settings = DropdownSettings}

			DropdownSettings = Kwargify({
				Name = "Dropdown",
				Description = nil,
				Options = {"Option 1", "Option 2"},
				CurrentOption = {"Option 1"},
				MultipleOptions = false,
				SpecialType = nil, -- currently onl player, might add more soon
				Callback = function(Options)
					-- The function that takes place when the selected option is changed
					-- The variable (Options) is a table of strings for the current selected options or a string if multioptions is false
				end,
			}, DropdownSettings or {})

			DropdownV.CurrentOption = DropdownSettings.CurrentOption

			local descriptionbool = false
			if DropdownSettings.Description ~= nil and DropdownSettings.Description ~= "" then
				descriptionbool = true
			end
			local closedsize
			local openedsize
			if descriptionbool then
				closedsize = 48
				openedsize = 170
			elseif not descriptionbool then
				closedsize = 38
				openedsize = 160
			end
			local opened = false

			local Dropdown
			if descriptionbool then Dropdown = Elements.Template.DropdownDesc:Clone() else Dropdown = Elements.Template.Dropdown:Clone() end

			Dropdown.Name = DropdownSettings.Name
			Dropdown.Title.Text = DropdownSettings.Name
			if descriptionbool then Dropdown.Desc.Text = DropdownSettings.Description end

			Dropdown.Parent = TabPage
			Dropdown.Visible = true

			local function Toggle()
				opened = not opened
				if opened then
					tween(Dropdown.icon, {Rotation = 180})
					tween(Dropdown, {Size = UDim2.new(1, -25, 0, openedsize)})
				else
					tween(Dropdown.icon, {Rotation = 0})
					tween(Dropdown, {Size = UDim2.new(1, -25, 0, closedsize)})
				end
			end

			local function SafeCallback(param, c2)
				local Success, Response = pcall(function()
					DropdownSettings.Callback(param)
				end)
				if not Success then
					TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					Dropdown.Title.Text = "Callback Error"
					print("Luna Interface Suite | "..DropdownSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					Dropdown.Title.Text = DropdownSettings.Name
					TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
				if Success and c2 then
					c2()
				end
			end

			-- fixed by justhey
			Dropdown.Selected:GetPropertyChangedSignal("Text"):Connect(function()
				local text = Dropdown.Selected.Text:lower()
				for _, Item in ipairs(Dropdown.List:GetChildren()) do
					if Item:IsA("TextLabel") and Item.Name ~= "Template" then
						Item.Visible = text == "" or string.find(Item.Name:lower(), text, 1, true) ~= nil
					end
				end
			end)


			local function Clear()
				for _, option in ipairs(Dropdown.List:GetChildren()) do
					if option.ClassName == "TextLabel" and option.Name ~= "Template" then
						option:Destroy()
					end
				end
			end

			local function ActivateColorSingle(name)
				for _, Option in pairs(Dropdown.List:GetChildren()) do
					if Option.ClassName == "TextLabel" and Option.Name ~= "Template" then
						tween(Option, {BackgroundTransparency = 0.98})
					end
				end

				Toggle()
				tween(Dropdown.List[name], {BackgroundTransparency = 0.95, TextColor3 = Color3.fromRGB(240,240,240)})
			end

			local function Refresh()
				Clear()
				for i,v in pairs(DropdownSettings.Options) do
					local Option = Dropdown.List.Template:Clone()
					local optionhover = false
					Option.Text = v
					if v == "Template" then v = "Template (Name)" end
					Option.Name = v
					Option.Interact.MouseButton1Click:Connect(function()
						local bleh
						if DropdownSettings.MultipleOptions then
							if table.find(DropdownSettings.CurrentOption, v) then
								RemoveTable(DropdownSettings.CurrentOption, v)
								DropdownV.CurrentOption = DropdownSettings.CurrentOption
								if not optionhover then
									tween(Option, {TextColor3 = Color3.fromRGB(200,200,200)})
								end
								tween(Option, {BackgroundTransparency = 0.98})
							else
								table.insert(DropdownSettings.CurrentOption, v)
								DropdownV.CurrentOption = DropdownSettings.CurrentOption
								tween(Option, {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
							end
							bleh = DropdownSettings.CurrentOption
						else
							DropdownSettings.CurrentOption = {v}
							bleh = v
							DropdownV.CurrentOption = bleh
							ActivateColorSingle(v)
						end

						SafeCallback(bleh, function()
							if DropdownSettings.MultipleOptions then
								if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
									if #DropdownSettings.CurrentOption == 1 then
										Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
									elseif #DropdownSettings.CurrentOption == 0 then
										Dropdown.Selected.PlaceholderText = "None"
									else
										Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
									end
								else
									DropdownSettings.CurrentOption = {}
									Dropdown.Selected.PlaceholderText = "None"
								end
							end
							if not DropdownSettings.MultipleOptions then
								Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
							end
							Dropdown.Selected.Text = ""
						end)
					end)
					Option.Visible = true
					Option.Parent = Dropdown.List
					Option.MouseEnter:Connect(function()
						optionhover = true
						if Option.BackgroundTransparency == 0.95 then
							return
						else
							tween(Option, {TextColor3 = Color3.fromRGB(240,240,240)})
						end
					end)
					Option.MouseLeave:Connect(function()
						optionhover = false
						if Option.BackgroundTransparency == 0.95 then
							return
						else
							tween(Option, {TextColor3 = Color3.fromRGB(200,200,200)})
						end
					end)	
				end
			end

			local function PlayerTableRefresh()
				for i,v in pairs(DropdownSettings.Options) do
					table.remove(DropdownSettings.Options, i)
				end

				for i,v in pairs(Players:GetChildren()) do
					table.insert(DropdownSettings.Options, v.Name)
				end
			end

			Dropdown.Interact.MouseButton1Click:Connect(function()
				Toggle()
			end)

			Dropdown["MouseEnter"]:Connect(function()
				tween(Dropdown.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Dropdown["MouseLeave"]:Connect(function()
				tween(Dropdown.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			if DropdownSettings.SpecialType == "Player" then

				for i,v in pairs(DropdownSettings.Options) do
					table.remove(DropdownSettings.Options, i)
				end
				PlayerTableRefresh()
				DropdownSettings.CurrentOption = DropdownSettings.Options[1]

				Players.PlayerAdded:Connect(function() PlayerTableRefresh() end)
				Players.PlayerRemoving:Connect(function() PlayerTableRefresh() end)

			end

			Refresh()

			if DropdownSettings.CurrentOption then
				if type(DropdownSettings.CurrentOption) == "string" then
					DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption}
				end
				if not DropdownSettings.MultipleOptions and type(DropdownSettings.CurrentOption) == "table" then
					DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption[1]}
				end
			else
				DropdownSettings.CurrentOption = {}
			end

			local bleh, ind = nil,0
			for i,v in pairs(DropdownSettings.CurrentOption) do
				ind = ind + 1
			end
			if ind == 1 then bleh = DropdownSettings.CurrentOption[1] else bleh = DropdownSettings.CurrentOption end
			SafeCallback(bleh)
			if type(bleh) == "string" then 
				tween(Dropdown.List[bleh], {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
			else
				for i,v in pairs(bleh) do
					tween(Dropdown.List[v], {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
				end
			end

			if DropdownSettings.MultipleOptions then
				if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
					if #DropdownSettings.CurrentOption == 1 then
						Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
					elseif #DropdownSettings.CurrentOption == 0 then
						Dropdown.Selected.PlaceholderText = "None"
					else
						Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
					end
				else
					DropdownSettings.CurrentOption = {}
					Dropdown.Selected.PlaceholderText = "None"
				end
				for _, name in pairs(DropdownSettings.CurrentOption) do
					tween(Dropdown.List[name], {TextColor3 = Color3.fromRGB(227,227,227), BackgroundTransparency = 0.95})
				end
			else
				Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
			end
			Dropdown.Selected.Text = ""

			function DropdownV:Set(NewDropdownSettings)
				NewDropdownSettings = Kwargify(DropdownSettings, NewDropdownSettings or {})

				DropdownV.Settings = NewDropdownSettings
				DropdownSettings = NewDropdownSettings

				Dropdown.Name = DropdownSettings.Name
				Dropdown.Title.Text = DropdownSettings.Name
				if DropdownSettings.Description ~= nil and DropdownSettings.Description ~= "" and Dropdown.Desc ~= nil then
					Dropdown.Desc.Text = DropdownSettings.Description
				end

				if DropdownSettings.SpecialType == "Player" then

					for i,v in pairs(DropdownSettings.Options) do
						table.remove(DropdownSettings.Options, i)
					end
					PlayerTableRefresh()
					DropdownSettings.CurrentOption = DropdownSettings.Options[1]                    
					Players.PlayerAdded:Connect(function() PlayerTableRefresh() end)
					Players.PlayerRemoving:Connect(function() PlayerTableRefresh() end)

				end

				Refresh()

				if DropdownSettings.CurrentOption then
					if type(DropdownSettings.CurrentOption) == "string" then
						DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption}
					end
					if not DropdownSettings.MultipleOptions and type(DropdownSettings.CurrentOption) == "table" then
						DropdownSettings.CurrentOption = {DropdownSettings.CurrentOption[1]}
					end
				else
					DropdownSettings.CurrentOption = {}
				end

				local bleh, ind = nil,0
				for i,v in pairs(DropdownSettings.CurrentOption) do
					ind = ind + 1
				end
				if ind == 1 then bleh = DropdownSettings.CurrentOption[1] else bleh = DropdownSettings.CurrentOption end
				SafeCallback(bleh)
				for _, Option in pairs(Dropdown.List:GetChildren()) do
					if Option.ClassName == "TextLabel" then
						tween(Option, {TextColor3 = Color3.fromRGB(200,200,200), BackgroundTransparency = 0.98})
					end
				end
				tween(Dropdown.List[bleh], {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})

				if DropdownSettings.MultipleOptions then
					if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
						if #DropdownSettings.CurrentOption == 1 then
							Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
						elseif #DropdownSettings.CurrentOption == 0 then
							Dropdown.Selected.PlaceholderText = "None"
						else
							Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
						end
					else
						DropdownSettings.CurrentOption = {}
						Dropdown.Selected.PlaceholderText = "None"
					end
					for _, name in pairs(DropdownSettings.CurrentOption) do
						tween(Dropdown.List[name], {TextColor3 = Color3.fromRGB(227,227,227), BackgroundTransparency = 0.95})
					end
				else
					Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
				end
				Dropdown.Selected.Text = ""

				-- Luna.Flags[DropdownSettings.Flag] = DropdownSettings

			end

			function DropdownV:Destroy()
				Dropdown.Visible = false
				Dropdown:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = DropdownV
			end

			-- Luna.Flags[DropdownSettings.Flag] = DropdownSettings

			return DropdownV

		end

		-- Color Picker
		function Tab:CreateColorPicker(ColorPickerSettings, Flag) -- by Rayfield/Throit
			local ColorPickerV = {IgnoreClass = false, Class = "Colorpicker", Settings = ColorPickerSettings}

			ColorPickerSettings = Kwargify({
				Name = "Color Picker",
				Color = Color3.fromRGB(255,255,255),
				Callback = function(Value)
					-- The function that takes place every time the color picker is moved/changed
					-- The variable (Value) is a Color3fromRGB value based on which color is selected
				end
			}, ColorPickerSettings or {})

			local function Color3ToHex(color)
				return string.format("#%02X%02X%02X", math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255))
			end

			ColorPickerV.Color = Color3ToHex(ColorPickerSettings.Color)

			local closedsize = UDim2.new(0, 75, 0, 22)
			local openedsize = UDim2.new(0, 219, 0, 129)

			local ColorPicker = Elements.Template.ColorPicker:Clone()
			local Background = ColorPicker.CPBackground
			local Display = Background.Display
			local Main = Background.MainCP
			local Slider = ColorPicker.ColorSlider

			ColorPicker.Name = ColorPickerSettings.Name
			ColorPicker.Title.Text = ColorPickerSettings.Name
			ColorPicker.Visible = true
			ColorPicker.Parent = TabPage
			ColorPicker.Size = UDim2.new(1.042, -25,0, 38)
			Background.Size = closedsize
			Display.BackgroundTransparency = 0

			ColorPicker["MouseEnter"]:Connect(function()
				tween(ColorPicker.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)
			ColorPicker["MouseLeave"]:Connect(function()
				tween(ColorPicker.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			local function SafeCallback(param, c2)
				local Success, Response = pcall(function()
					ColorPickerSettings.Callback(param)
				end)
				if not Success then
					TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					ColorPicker.Title.Text = "Callback Error"
					print("Luna Interface Suite | "..ColorPickerSettings.Name.." Callback Error " ..tostring(Response))
					wait(0.5)
					ColorPicker.Title.Text = ColorPickerSettings.Name
					TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
				if Success and c2 then
					c2()
				end
			end

			local opened = false

			local mouse = game.Players.LocalPlayer:GetMouse()
			Main.Image = "http://www.roblox.com/asset/?id=11415645739"
			local mainDragging = false 
			local sliderDragging = false 
			ColorPicker.Interact.MouseButton1Down:Connect(function()
				if not opened then
					opened = true 
					tween(ColorPicker, {Size = UDim2.new( 1.042, -25,0, 165)}, nil, TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
					tween(Background, {Size = openedsize})
					tween(Display, {BackgroundTransparency = 1})
				else
					opened = false
					tween(ColorPicker, {Size = UDim2.new(1.042, -25,0, 38)}, nil, TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
					tween(Background, {Size = closedsize})
					tween(Display, {BackgroundTransparency = 0})
				end
			end)
			UserInputService.InputEnded:Connect(function(input, gameProcessed) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
					mainDragging = false
					sliderDragging = false
				end end)
			Main.MouseButton1Down:Connect(function()
				if opened then
					mainDragging = true 
				end
			end)
			Main.MainPoint.MouseButton1Down:Connect(function()
				if opened then
					mainDragging = true 
				end
			end)
			Slider.MouseButton1Down:Connect(function()
				sliderDragging = true 
			end)
			Slider.SliderPoint.MouseButton1Down:Connect(function()
				sliderDragging = true 
			end)
			local h,s,v = ColorPickerSettings.Color:ToHSV()
			local color = Color3.fromHSV(h,s,v) 
			local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
			local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
			ColorPicker.HexInput.InputBox.Text = hex
			local function setDisplay(hp,sp,vp)
				--Main
				Main.MainPoint.Position = UDim2.new(s,-Main.MainPoint.AbsoluteSize.X/2,1-v,-Main.MainPoint.AbsoluteSize.Y/2)
				Main.MainPoint.ImageColor3 = Color3.fromHSV(hp,sp,vp)
				Background.BackgroundColor3 = Color3.fromHSV(hp,1,1)
				Display.BackgroundColor3 = Color3.fromHSV(hp,sp,vp)
				--Slider 
				local x = hp * Slider.AbsoluteSize.X
				Slider.SliderPoint.Position = UDim2.new(0,x-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
				Slider.SliderPoint.ImageColor3 = Color3.fromHSV(hp,1,1)
				local color = Color3.fromHSV(hp,sp,vp) 
				local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				ColorPicker.RInput.InputBox.Text = tostring(r)
				ColorPicker.GInput.InputBox.Text = tostring(g)
				ColorPicker.BInput.InputBox.Text = tostring(b)
				hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
				ColorPicker.HexInput.InputBox.Text = hex
			end
			setDisplay(h,s,v)
			ColorPicker.HexInput.InputBox.FocusLost:Connect(function()
				if not pcall(function()
						local r, g, b = string.match(ColorPicker.HexInput.InputBox.Text, "^#?(%w%w)(%w%w)(%w%w)$")
						local rgbColor = Color3.fromRGB(tonumber(r, 16),tonumber(g, 16), tonumber(b, 16))
						h,s,v = rgbColor:ToHSV()
						hex = ColorPicker.HexInput.InputBox.Text
						setDisplay()
						ColorPickerSettings.Color = rgbColor
					end) 
				then 
					ColorPicker.HexInput.InputBox.Text = hex 
				end
				local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
				ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
				SafeCallback( Color3.fromRGB(r,g,b))
			end)
			--RGB
			local function rgbBoxes(box,toChange)
				local value = tonumber(box.Text) 
				local color = Color3.fromHSV(h,s,v) 
				local oldR,oldG,oldB = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				local save 
				if toChange == "R" then save = oldR;oldR = value elseif toChange == "G" then save = oldG;oldG = value else save = oldB;oldB = value end
				if value then 
					value = math.clamp(value,0,255)
					h,s,v = Color3.fromRGB(oldR,oldG,oldB):ToHSV()
					setDisplay()
				else 
					box.Text = tostring(save)
				end
				local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
			end
			ColorPicker.RInput.InputBox.FocusLost:connect(function()
				rgbBoxes(ColorPicker.RInput.InputBox,"R")
				SafeCallback(Color3.fromRGB(r,g,b))
			end)
			ColorPicker.GInput.InputBox.FocusLost:connect(function()
				rgbBoxes(ColorPicker.GInput.InputBox,"G")
				SafeCallback(Color3.fromRGB(r,g,b))
			end)
			ColorPicker.BInput.InputBox.FocusLost:connect(function()
				rgbBoxes(ColorPicker.BInput.InputBox,"B")
				SafeCallback(Color3.fromRGB(r,g,b))
			end)
			RunService.RenderStepped:connect(function()
				if mainDragging then 
					local localX = math.clamp(mouse.X-Main.AbsolutePosition.X,0,Main.AbsoluteSize.X)
					local localY = math.clamp(mouse.Y-Main.AbsolutePosition.Y,0,Main.AbsoluteSize.Y)
					Main.MainPoint.Position = UDim2.new(0,localX-Main.MainPoint.AbsoluteSize.X/2,0,localY-Main.MainPoint.AbsoluteSize.Y/2)
					s = localX / Main.AbsoluteSize.X
					v = 1 - (localY / Main.AbsoluteSize.Y)
					Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
					Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
					Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
					local color = Color3.fromHSV(h,s,v) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPicker.RInput.InputBox.Text = tostring(r)
					ColorPicker.GInput.InputBox.Text = tostring(g)
					ColorPicker.BInput.InputBox.Text = tostring(b)
					ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					SafeCallback(Color3.fromRGB(r,g,b))
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					ColorPickerV.Color = ColorPickerSettings.Color
				end
				if sliderDragging then 
					local localX = math.clamp(mouse.X-Slider.AbsolutePosition.X,0,Slider.AbsoluteSize.X)
					h = localX / Slider.AbsoluteSize.X
					Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
					Slider.SliderPoint.Position = UDim2.new(0,localX-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
					Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
					Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
					Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
					local color = Color3.fromHSV(h,s,v) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPicker.RInput.InputBox.Text = tostring(r)
					ColorPicker.GInput.InputBox.Text = tostring(g)
					ColorPicker.BInput.InputBox.Text = tostring(b)
					ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					SafeCallback(Color3.fromRGB(r,g,b))
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					ColorPickerV.Color = ColorPickerSettings.Color
				end
			end)

			function ColorPickerV:Set(NewColorPickerSettings)

				NewColorPickerSettings = Kwargify(ColorPickerSettings, NewColorPickerSettings or {})

				ColorPickerV.Settings = NewColorPickerSettings
				ColorPickerSettings = NewColorPickerSettings

				ColorPicker.Name = ColorPickerSettings.Name
				ColorPicker.Title.Text = ColorPickerSettings.Name
				ColorPicker.Visible = true

				local h,s,v = ColorPickerSettings.Color:ToHSV()
				local color = Color3.fromHSV(h,s,v) 
				local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
				ColorPicker.HexInput.InputBox.Text = hex
				setDisplay(h,s,v)
				SafeCallback(Color3.fromRGB(r,g,b))

				ColorPickerV.Color = ColorPickerSettings.Color
			end

			function ColorPickerV:Destroy()
				ColorPicker:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = ColorPickerV
			end

			SafeCallback(ColorPickerSettings.Color)

			return ColorPickerV
		end


		function Tab:BuildConfigSection()
			if isStudio then
				Tab:CreateLabel({Text = "Config system unavailable. (Environment isStudio)", Style = 3})
				return "Config system unavailable." 
			end

			local inputPath = nil
			local selectedConfig = nil

			local Title = Elements.Template.Title:Clone()
			Title.Text = "Configurations"
			Title.Visible = true
			Title.Parent = TabPage
			Title.TextTransparency = 1
			TweenService:Create(Title, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()

			Tab:CreateSection("Config Creator")

			Tab:CreateInput({
				Name = "Config Name",
				Description = "Insert a name for your to be created config.",
				PlaceholderText = "Name",
				CurrentValue = "",
				Numeric = false,
				MaxCharacters = nil,
				Enter = false,
				Callback = function(input)
					inputPath = input
				end,
			})

			local configSelection

			Tab:CreateButton({
				Name = "Create Config",
				Description = "Create a config with all of your current settings.",
				Callback = function()
					if not inputPath or string.gsub(inputPath, " ", "") == "" then
						Luna:Notification({
							Title = "Interface",
							Icon = "warning",
							ImageSource = "Material",
							Content = "Config name cannot be empty."
						})
						return
					end

					local success, returned = Luna:SaveConfig(inputPath)
					if not success then
						Luna:Notification({
							Title = "Interface",
							Icon = "error",
							ImageSource = "Material",
							Content = "Unable to save config, return error: " .. returned
						})
					end

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = string.format("Created config %q", inputPath),
					})

					configSelection:Set({ Options = Luna:RefreshConfigList() })
				end
			})

			Tab:CreateSection("Config Load/Settings")


			configSelection = Tab:CreateDropdown({
				Name = "Select Config",
				Description = "Select a config to load your settings on.",
				Options = Luna:RefreshConfigList(),
				CurrentOption = {},
				MultipleOptions = false,
				SpecialType = nil,
				Callback = function(Value)
					selectedConfig = Value
				end,
			})

			Tab:CreateButton({
				Name = "Load Config",
				Description = "Load your saved config settings.",
				Callback = function()
					local success, returned = Luna:LoadConfig(selectedConfig)
					if not success then
						Luna:Notification({
							Title = "Interface",
							Icon = "error",
							ImageSource = "Material",
							Content = "Unable to load config, return error: " .. returned
						})
						return
					end

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = string.format("Loaded config %q", selectedConfig),
					})
				end
			})

			Tab:CreateButton({
				Name = "Overwrite Config",
				Description = "Overwrite your current config settings.",
				Callback = function()
					local success, returned = Luna:SaveConfig(selectedConfig)
					if not success then
						Luna:Notification({
							Title = "Interface",
							Icon = "error",
							ImageSource = "Material",
							Content = "Unable to overwrite config, return error: " .. returned
						})
						return
					end

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = string.format("Overwrote config %q", selectedConfig),
					})
				end
			})

			Tab:CreateButton({
				Name = "Refresh Config List",
				Description = "Refresh the current config list.",
				Callback = function()
					configSelection:Set({ Options = Luna:RefreshConfigList() })
				end,
			})

			local loadlabel
			Tab:CreateButton({
				Name = "Set as autoload",
				Description = "Set a config to auto load setting in your next session.",
				Callback = function()
					local name = selectedConfig
					writefile(Luna.Folder .. "/settings/autoload.txt", name)
					loadlabel:Set({ Text = "Current autoload config: " .. name })

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = string.format("Set %q to auto load", name),
					})
				end,
			})

			loadlabel = Tab:CreateParagraph({
				Title = "Current Auto Load",
				Text = "None"
			})

			Tab:CreateButton({
				Name = "Delete Autoload",
				Description = "Delete The Autoload File",
				Callback = function()
					local name = selectedConfig
					delfile(Luna.Folder .. "/settings/autoload.txt")
					loadlabel:Set({ Text = "None" })

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = "Deleted Autoload",
					})
				end,
			})

			if isfile(Luna.Folder .. "/settings/autoload.txt") then
				local name = readfile(Luna.Folder .. "/settings/autoload.txt")
				loadlabel:Set( { Text = "Current autoload config: " .. name })
			end     
		end

		local ClassParser = {
			["Toggle"] = {
				Save = function(Flag, data)
					return {
						type = "Toggle", 
						flag = Flag, 
						state = data.CurrentValue or false
					}
				end,
				Load = function(Flag, data)
					if Luna.Options[Flag] then
						Luna.Options[Flag]:Set({ CurrentValue = data.state })
					end
				end
			},
			["Slider"] = {
				Save = function(Flag, data)
					return {
						type = "Slider", 
						flag = Flag, 
						value = (data.CurrentValue and tostring(data.CurrentValue)),
					}
				end,
				Load = function(Flag, data)
					if Luna.Options[Flag] and data.value then
						Luna.Options[Flag]:Set({ CurrentValue = data.value })
					end
				end
			},
			["Input"] = {
				Save = function(Flag, data)
					return {
						type = "Input", 
						flag = Flag, 
						text = data.CurrentValue
					}
				end,
				Load = function(Flag, data)
					if Luna.Options[Flag] and data.text and type(data.text) == "string" then
						Luna.Options[Flag]:Set({ CurrentValue = data.text })
					end
				end
			},
			["Dropdown"] = {
				Save = function(Flag, data)
					return {
						type = "Dropdown", 
						flag = Flag, 
						value = data.CurrentOption
					}
				end,
				Load = function(Flag, data)
					if Luna.Options[Flag] and data.value then
						Luna.Options[Flag]:Set({ CurrentOption = data.value })
					end
				end
			},
			-- buggy as hell stil
			["Colorpicker"] = {
				Save = function(Flag, data)
					local function Color3ToHex(color)
						return string.format("#%02X%02X%02X", math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255))
					end

					return {
						type = "Colorpicker", 
						flag = Flag, 
						color = Color3ToHex(data.Color) or nil,
						alpha = data.Alpha
					}
				end,
				Load = function(Flag, data)
					local function HexToColor3(hex)
						local r = tonumber(hex:sub(2, 3), 16) / 255
						local g = tonumber(hex:sub(4, 5), 16) / 255
						local b = tonumber(hex:sub(6, 7), 16) / 255
						return Color3.new(r, g, b)
					end

					if Luna.Options[Flag] and data.color then
						Luna.Options[Flag]:Set({Color = HexToColor3(data.color)})
					end
				end
			}
		}


		function Tab:BuildThemeSection()

			local Title = Elements.Template.Title:Clone()
			Title.Text = "Theming"
			Title.Visible = true
			Title.Parent = TabPage
			Title.TextTransparency = 1
			TweenService:Create(Title, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()

			Tab:CreateSection("Custom Editor")

			local c1cp = Tab:CreateColorPicker({
				Name = "Color 1",
				Color = Color3.fromRGB(117, 164, 206),
			}, "LunaInterfaceSuitePrebuiltCPC1") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps

			local c2cp = Tab:CreateColorPicker({
				Name = "Color 2",
				Color = Color3.fromRGB(123, 201, 201),
			}, "LunaInterfaceSuitePrebuiltCPC2")

			local c3cp = Tab:CreateColorPicker({
				Name = "Color 3",
				Color = Color3.fromRGB(224, 138, 184),
			}, "LunaInterfaceSuitePrebuiltCPC3") 

			task.wait(1)

			c1cp:Set({
				Callback = function(Value)
					if c2cp and c3cp then
						Luna.ThemeGradient = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Value or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(0.50, c2cp.Color or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1.00, c3cp.Color or Color3.fromRGB(255,255,255))}
						LunaUI.ThemeRemote.Value = not LunaUI.ThemeRemote.Value
					end
				end
			})

			c2cp:Set({
				Callback = function(Value)
					if c1cp and c3cp then
						Luna.ThemeGradient = ColorSequence.new{ColorSequenceKeypoint.new(0.00, c1cp.Color or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(0.50, Value or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1.00, c3cp.Color or Color3.fromRGB(255,255,255))}
						LunaUI.ThemeRemote.Value = not LunaUI.ThemeRemote.Value
					end
				end
			})

			c3cp:Set({
				Callback = function(Valuex)
					if c2cp and c1cp then
						Luna.ThemeGradient = ColorSequence.new{ColorSequenceKeypoint.new(0.00, c1cp.Color or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(0.50, c2cp.Color or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1.00, Valuex or Color3.fromRGB(255,255,255))}
						LunaUI.ThemeRemote.Value = not LunaUI.ThemeRemote.Value
					end
				end
			})

			Tab:CreateSection("Preset Gradients")

			for i,v in pairs(PresetGradients) do
				Tab:CreateButton({
					Name = tostring(i),
					Callback = function()
						c1cp:Set({ Color = v[1] })
						c2cp:Set({ Color = v[2] })
						c3cp:Set({ Color = v[3] })
					end,
				})
			end

		end


		local function BuildFolderTree()
			if isStudio then return "Config system unavailable." end
			local paths = {
				Luna.Folder,
				Luna.Folder .. "/settings"
			}

			for i = 1, #paths do
				local str = paths[i]
				if not isfolder(str) then
					makefolder(str)
				end
			end
		end

		local function SetFolder()

			if isStudio then return "Config system unavailable." end

			if WindowSettings.ConfigSettings.RootFolder ~= nil and WindowSettings.ConfigSettings.RootFolder ~= "" then
				Luna.Folder = WindowSettings.ConfigSettings.RootFolder .. "/" .. WindowSettings.ConfigSettings.ConfigFolder
			else
				Luna.Folder = WindowSettings.ConfigSettings.ConfigFolder
			end

			BuildFolderTree()
		end

		SetFolder()

		function Luna:SaveConfig(Path)
			if isStudio then return "Config system unavailable." end

			if (not Path) then
				return false, "Please select a config file."
			end

			local fullPath = Luna.Folder .. "/settings/" .. Path .. ".luna"

			local data = {
				objects = {}
			}

			for flag, option in next, Luna.Options do
				if not ClassParser[option.Class] then continue end
				if option.IgnoreConfig then continue end

				table.insert(data.objects, ClassParser[option.Class].Save(flag, option))
			end	

			local success, encoded = pcall(HttpService.JSONEncode, HttpService, data)
			if not success then
				return false, "Unable to encode into JSON data"
			end

			writefile(fullPath, encoded)
			return true
		end

		function Luna:LoadConfig(Path)
			if isStudio then return "Config system unavailable." end

			if (not Path) then
				return false, "Please select a config file."
			end

			local file = Luna.Folder .. "/settings/" .. Path .. ".luna"
			if not isfile(file) then return false, "Invalid file" end

			local success, decoded = pcall(HttpService.JSONDecode, HttpService, readfile(file))
			if not success then return false, "Unable to decode JSON data." end

			for _, option in next, decoded.objects do
				if ClassParser[option.type] then
					task.spawn(function() 
						ClassParser[option.type].Load(option.flag, option) 
					end)
				end
			end

			return true
		end

		function Luna:LoadAutoloadConfig()
			if isfile(Luna.Folder .. "/settings/autoload.txt") then

				if isStudio then return "Config system unavailable." end

				local name = readfile(Luna.Folder .. "/settings/autoload.txt")

				local success, err = Luna:LoadConfig(name)
				if not success then
					return Luna:Notification({
						Title = "Interface",
						Icon = "sparkle",
						ImageSource = "Material",
						Content = "Failed to load autoload config: " .. err,
					})
				end

				Luna:Notification({
					Title = "Interface",
					Icon = "sparkle",
					ImageSource = "Material",
					Content = string.format("Auto loaded config %q", name),
				})

			end 
		end

		function Luna:RefreshConfigList()
			if isStudio then return "Config system unavailable." end

			local list = listfiles(Luna.Folder .. "/settings")

			local out = {}
			for i = 1, #list do
				local file = list[i]
				if file:sub(-5) == ".luna" then
					local pos = file:find(".luna", 1, true)
					local start = pos

					local char = file:sub(pos, pos)
					while char ~= "/" and char ~= "\\" and char ~= "" do
						pos = pos - 1
						char = file:sub(pos, pos)
					end

					if char == "/" or char == "\\" then
						local name = file:sub(pos + 1, start - 1)
						if name ~= "options" then
							table.insert(out, name)
						end
					end
				end
			end

			return out
		end
		return Tab
	end


	Elements.Parent.Visible = true
	tween(Elements.Parent, {BackgroundTransparency = 0.1})
	Navigation.Visible = true
	tween(Navigation.Line, {BackgroundTransparency = 0})

	for _, TopbarButton in ipairs(Main.Controls:GetChildren()) do
		if TopbarButton.ClassName == "Frame" and TopbarButton.Name ~= "Theme" then
			TopbarButton.Visible = true
			tween(TopbarButton, {BackgroundTransparency = 0.25})
			tween(TopbarButton.UIStroke, {Transparency = 0.5})
			tween(TopbarButton.ImageLabel, {ImageTransparency = 0.25})
		end
	end

	Main.Controls.Close.ImageLabel.MouseButton1Click:Connect(function()
		Hide(Main, Window.Bind, true)
		dragBar.Visible = false
		Window.State = false
		if UserInputService.KeyboardEnabled == false then
			LunaUI.MobileSupport.Visible = true
		end
	end)
	Main.Controls.Close["MouseEnter"]:Connect(function()
		tween(Main.Controls.Close.ImageLabel, {ImageColor3 = Color3.new(1,1,1)})
	end)
	Main.Controls.Close["MouseLeave"]:Connect(function()
		tween(Main.Controls.Close.ImageLabel, {ImageColor3 = Color3.fromRGB(195,195,195)})
	end)

	UserInputService.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if Window.State then return end
		if input.KeyCode == Window.Bind then
			Unhide(Main, Window.CurrentTab)
			LunaUI.MobileSupport.Visible = false
			dragBar.Visible = true
			Window.State = true
		end
	end)

	Main.Logo.MouseButton1Click:Connect(function()
		if Navigation.Size.X.Offset == 205 then
			tween(Elements.Parent, {Size = UDim2.new(1, -55, Elements.Parent.Size.Y.Scale, Elements.Parent.Size.Y.Offset)})
			tween(Navigation, {Size = UDim2.new(Navigation.Size.X.Scale, 55, Navigation.Size.Y.Scale, Navigation.Size.Y.Offset)})
		else
			tween(Elements.Parent, {Size = UDim2.new(1, -205, Elements.Parent.Size.Y.Scale, Elements.Parent.Size.Y.Offset)})
			tween(Navigation, {Size = UDim2.new(Navigation.Size.X.Scale, 205, Navigation.Size.Y.Scale, Navigation.Size.Y.Offset)})
		end
	end)

	Main.Controls.ToggleSize.ImageLabel.MouseButton1Click:Connect(function()
		Window.Size = not Window.Size
		if Window.Size then
			Minimize(Main)
			dragBar.Visible = false
		else
			Maximise(Main)
			dragBar.Visible = true
		end
	end)
	Main.Controls.ToggleSize["MouseEnter"]:Connect(function()
		tween(Main.Controls.ToggleSize.ImageLabel, {ImageColor3 = Color3.new(1,1,1)})
	end)
	Main.Controls.ToggleSize["MouseLeave"]:Connect(function()
		tween(Main.Controls.ToggleSize.ImageLabel, {ImageColor3 = Color3.fromRGB(195,195,195)})
	end)

	Main.Controls.Theme.ImageLabel.MouseButton1Click:Connect(function()
		if Window.Settings then
			Window.Settings:Activate()
			Elements.Settings.CanvasPosition = Vector2.new(0,698)
		end
	end)
	Main.Controls.Theme["MouseEnter"]:Connect(function()
		tween(Main.Controls.Theme.ImageLabel, {ImageColor3 = Color3.new(1,1,1)})
	end)
	Main.Controls.Theme["MouseLeave"]:Connect(function()
		tween(Main.Controls.Theme.ImageLabel, {ImageColor3 = Color3.fromRGB(195,195,195)})
	end)	


	LunaUI.MobileSupport.Interact.MouseButton1Click:Connect(function()
		Unhide(Main, Window.CurrentTab)
		dragBar.Visible = true
		Window.State = true
		LunaUI.MobileSupport.Visible = false
	end)

	return Window
end

function Luna:Destroy()
	Main.Visible = false
	for _, Notification in ipairs(Notifications:GetChildren()) do
		if Notification.ClassName == "Frame" then
			Notification.Visible = false
			Notification:Destroy()
		end
	end
	LunaUI:Destroy()
end

if isStudio then
	local Window = Luna:CreateWindow({
		Name = "Nebula Client - Luna Hub | Blade Ball",
		Subtitle = "by Nebula Softworks",
		LogoID = "123795201100198",
		LoadingEnabled = true,
		LoadingTitle = "Nebula Client (Luna Hub)",
		LoadingSubtitle = "Loading script for Blade Ball",
		KeySystem = true,
		KeySettings = {
			Title = "Nebula Client | Key System",
			Subtitle = "Blade Ball",
			Note = "Please Enter Your Key To Use Nebula Client",
			FileName = "Key", -- the name of the key file. this will be saved in ur RootFolder. However, if you don't have one, it'll save in ur config folder instead
			SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
			Key = {"Example Key"}, -- List of keys that will be accepted by the system, please use a system like Pelican or Luarmor that provide key strings based on your HWID since putting a simple string is very easy to bypass
			SecondAction = {
				Enabled = true,
				Type = "Link", -- Link/Discord
				Parameter = "" -- for discord, add the invite link like home tab. for link, type the link of ur key sys
			}
		}
	})
	
	--[[local Window = Luna:CreateWindow({
		Name = "Luna Example Window",
		Subtitle = "Test",
		LogoID = "6031097225",
		LoadingEnabled = true,
		LoadingTitle = "Luna Interface Suite",
		LoadingSubtitle = "by Nebula Softworks",
		KeySystem = true,
		KeySettings = {
			Title = "Luna Example Key",
			Subtitle = "Key System",
			Note = "Please Enter Your Key To Use Example Hub",
			FileName = "Key", -- the name of the key file. this will be saved in ur RootFolder. However, if you don't have one, it'll save in ur config folder instead
			SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
			Key = {"Example Key"} -- List of keys that will be accepted by the system, please use a system like Pelican or Luarmor that provide key strings based on your HWID since putting a simple string is very easy to bypass
		}
	})

	Luna:Notification({ 
		Title = "Welcome to Luna",
		Icon = "sparkle",
		ImageSource = "Material",
		Content = "Welcome to the Luna Interface Suite. This Is an Amazing Quality Freemium UI Library For Roblox Exploiting Made By Nebula Softworks. Luna was Created in hopes of improving the standard of UI Library designs by being the golden standard for it. Luna Has Amazing Features like a key system, notification and perfection in aesthetics and design. So, What Are You Waiting For? Start Using Luna Today at " .. website
	})

	local Tabs = {
		Main = Window:CreateTab({
			Name = "Tab Example 1",
			Icon = "view_in_ar",
			ImageSource = "Material",
			ShowTitle = true
		}),
		Main2 = Window:CreateTab({
			Name = "Tab Example 2",
			Icon = "location_searching",
			ImageSource = "Material",
			ShowTitle = false
		}),
		Premium = Window:CreateTab({
			Name = "Premium Tab",
			Icon = "sparkle",
			ImageSource = "Material",
			ShowTitle = true
		}),
		Debug = Window:CreateTab({
			Name = "Debug",
			Icon = "settings"
		})
	}


	Window:CreateHomeTab()
	local bleh =Tabs.Debug:CreateColorPicker()
	Tabs.Debug:CreateButton({
		Callback = function()
			bleh:Set({
				Color = Color3.fromRGB(0,0,0)
			})
		end,
	})

	Tabs.Main:CreateSection("Section Example")
	Tabs.Main:CreateButton({
		Name = "Button Example!",
		Description = "Every Element Except For Sliders Can Have a description like this"
	})
	Tabs.Main:CreateLabel({
		Text = "Label Example",
		Style = 1
	})
	Tabs.Main:CreateLabel({
		Text = "Information Example",
		Style = 2
	})
	Tabs.Main:CreateLabel({
		Text = "Warning Example",
		Style = 3
	})
	Tabs.Main:CreateParagraph({
		Title = "Paragraph Example ",
		Text = "This Is A Paragraph. You Can Type Very Long Strings Here And They'll Automatically Fit! This Counts As A Description Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text?"
	})
	Tabs.Main:CreateSlider({
		Name = "Slider Example",
		Range = {0, 200},
		Increment = 0.1,
		CurrentValue = 100,
		Flag = "Slider",
	})
	Tabs.Main:CreateToggle({
		Name = "Toggle Example",
		Description = "This Is A Toggle. See I Was Right? Sliders Don't Have Descriptions!",
		CurrentValue = false,
	})

	Tabs.Main:CreateBind({
		Name = "Bind Example",
		Description = "Btw Using CreateKeybind is deprecated, use CreateBind For Future Binds :)",
		CurrentKeybind = "Q",
		HoldToInteract = false,
	})
	Tabs.Main:CreateInput({
		Name = "Dynamic Input Example",
		Description = "Every Element has :Set(). Sadly this one is broken;the text wont update :(",
		PlaceholderText = "Input Placeholder",
		CurrentValue = "",
		Numeric = false,
		MaxCharacters = nil,
		Enter = false
	})
	Tabs.Main:CreateDropdown({
		Name = "Dropdown Example",
		Description = "U can access a element's values using .Settings!",
		Options = {"Option 1","Option 2","Option 3","Option 4","Option 5","Option 6"},
		CurrentOption = "Option 1",
		MultipleOptions = false,
		SpecialType = nil
	})

	Tabs.Main:CreateColorPicker({
		Name = "Color Picker Example",
		Color = Color3.fromRGB(86, 171, 128),
		Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			-- The function that takes place every time the color picker is moved/changed
			-- The variable (Value) is a Color3fromRGB value based on which color is selected
		end
	})

	Tabs.Main2:CreateSection("The Elements Here Are To Show Unique Features")
	Tabs.Main2:CreateToggle({
		Name = "Toggle - Default On",
		Description = "Toggles Can be Onned By Default!",
		CurrentValue = true
	})
	Tabs.Main2:CreateBind({
		Name = "Hold To Interact - Walkspeed Example",
		Description = "Binds Can Be Made to only Callback when held",
		HoldToInteract = true,
		CurrentBind = "E",
		Callback = function(v)
			if v then 
				Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
			else
				Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
			end
		end,
	})
	Tabs.Main2:CreateInput({
		Name = "Numeric And 12 Max Characters",
		Description = "You Can Limit The Max Characters or Allow Only Numbers",
		Numeric = true,
		MaxCharacters = 12
	})
	Tabs.Main2:CreateInput({
		Name = "Require Enter",
		Description = "You Can Only make the callback happen after user hits enter",
		Enter = true
	})
	Tabs.Main2:CreateLabel({
		Text = "Every Element Can be Destroyed as well!"
	})
	Tabs.Main2:CreateDropdown({
		Name = "Dropdown - Multi Options",
		Description = "Multiple Special Features can be used on the same element!",
		Options = {"Option 1","Option 2","Option 3","Option 4","Option 5","Option 6"},
		CurrentOption = {"Option 1","Option 3","Option 6"},
		MultipleOptions = true
	})
	Tabs.Main2:CreateDropdown({
		Name = "Dropdown - Players",
		Description = "Luna's Dropdowns Has a built in Player Dropdown!",
		Options = {"u can put anything here, it wont be shown anyway"},
		CurrentOption = {"same here, itll be the first option"},
		MultipleOptions = false,
		SpecialType = "Player"
	})

	local s = Tabs.Premium:CreateSection("You can add elements inside section too")
	s:CreateButton()
	s:CreateLabel()
	s:CreateDivider()
	s:CreateDropdown()

	Tabs.Premium:BuildConfigSection()
	Tabs.Premium:BuildThemeSection()]]
end

-- THIS IS THE DEBUG DEMO, ONLY USED WHEN TESTING NEW ELEMENTS AND CODE
--[[if isStudio then
    window = Luna:CreateWindow({LoadingEnabled = false})
    t1 = window:CreateTab()
    t2 = window:CreateTab({ Name = "Tab 2", Icon = "location_searching"})
    Luna:Notification({ 
        Title = "Welcome to Luna",
        Icon = "sparkle",
        ImageSource = "Material",
        Content = "Welcome to the Luna Interface Suite. This Is an Amazing Quality Freemium UI Library For Roblox Exploiting Made By Nebula Softworks. Luna was Created in hopes of improving the standard of UI Library designs by being the golden standard for it. Luna Has Amazing Features like a key system, notification and perfection in aesthetics and design. So, What Are You Waiting For? Start Using Luna Today at " .. website
    })
    t1:CreateSection()
    local btn = t1:CreateButton({Callback = "", Description = "This Is A Description"})
    local l = t1:CreateLabel({ Style = 2})
    local l2 = t1:CreateLabel({ Text = "Another Label" })
    t2:CreateButton({ Callback = function() 
        l:Destroy()
        l2:Set("New Text")
    end})
    t2:CreateLabel({Style = 3})
    t1:CreateParagraph({Text = "Single String"})
    t1:CreateParagraph({Text = "Welcome to the Luna Interface Suite. This Is an Amazing Quality Freemium UI Library For Roblox Exploiting Made By Nebula Softworks. Luna was Created in hopes of improving the standard of UI Library designs by being the golden standard for it. Luna Has Amazing Features like a key system, notification and perfection in aesthetics and design. So, What Are You Waiting For? Start Using Luna Today at " .. website})
    s = t2:CreateSlider({ Callback = function(v) print(v) end })	
    t1:CreateButton({ Callback = function()
        s:Set({Name = "new name", Callback = ""})
        wait(5)
        s:Destroy()
    end})
    t1:CreateColorPicker()
    local toggle = t1:CreateToggle({Name = "test", Description = "test", CurrentValue = true, Callback = ""}, "toggle2")
    t1:CreateToggle({Callback = function(Value) toggle:Destroy() print(Value) end})
    local bind = t2:CreateBind({Name = "test", Description = "test", CurrentBind = "E", HoldToInteract = false, Callback = ""})
    t2:CreateKeybind({HoldToInteract = true, Callback = function(v)
        if v then
            Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        else
            Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end,})
    local input = t2:CreateInput({Name = "test",ClearTextAfterFocusLost = false, Description = "Numbers only, 8 max characters and enter required.",MaxCharacters = 8 ,Numeric = true, Enter = true, Callback = ""})
    t2:CreateInput({Callback = function(text) print(text) end})
    local d = t1:CreateDropdown({Name = "test", Options = {"Apples", "Bananas", "Strawberries", "Elixir"}, Description = "MultiOptions", MultipleOptions = true, Callback = function(t) print(t) end, CurrentOption = {"Apples", "Elixir"}})
    t1:CreateDropdown({Callback = function(t) print(unpack(t)) end})
    t1:CreateDropdown({Description = "Special Type - Player", Callback = "", SpecialType = "Player"})
end]]--
return Luna
