//
//  IonIconViewController.m
//  ionIconsSample
//
//  Created by Safx Developer on 2013/11/12.
//  Copyright (c) 2013年 Safx Developers. All rights reserved.
//

#import "IonIconViewController.h"
#import "IconFlowLayout.h"
#import "IconViewCell.h"

static NSString* CellIdentifier = @"cell";


@interface IonIconViewController ()
@property(nonatomic,strong) NSArray* iconArray;
@property(nonatomic,strong) NSArray* nameArray;
@end

@implementation IonIconViewController

- (id)init
{
    IconFlowLayout* layout = [[IconFlowLayout alloc] init];
    self = [self initWithCollectionViewLayout:layout];
    if (self) {
        self.iconArray =
        @[icon_ios7_folder,
          icon_ios7_flag,
          icon_ios7_partlysunny,
          icon_ios7_personadd_outline,
          icon_ios7_filing,
          icon_ios7_heart_outline,
          icon_ios7_film_outline,
          icon_ios7_fastforward,
          icon_ios7_cloud_download,
          icon_ios7_plus_empty,
          icon_ios7_plus,
          icon_ios7_plus_outline,
          icon_ios7_checkmark_empty,
          icon_ios7_checkmark,
          icon_ios7_checkmark_outline,
          icon_ios7_help_empty,
          icon_ios7_help,
          icon_ios7_help_outline,
          icon_ios7_information_empty,
          icon_ios7_information,
          icon_ios7_information_outline,
          icon_ios7_circle_filled,
          icon_ios7_circle_outline,
          icon_ios7_trash_outline,
          icon_ios7_more,
          icon_ios7_more_outline,
          icon_ios7_upload,
          icon_ios7_upload_outline,
          icon_ios7_download,
          icon_ios7_download_outline,
          icon_ios7_search_strong,
          icon_ios7_search,
          icon_ios7_navigate,
          icon_ios7_navigate_outline,
          icon_ios7_copy,
          icon_ios7_copy_outline,
          icon_ios7_photos,
          icon_ios7_photos_outline,
          icon_ios7_albums,
          icon_ios7_albums_outline,
          icon_ios7_world,
          icon_ios7_world_outline,
          icon_ios7_recording,
          icon_ios7_recording_outline,
          icon_ios7_keypad,
          icon_ios7_keypad_outline,
          icon_ios7_contact,
          icon_ios7_contact_outline,
          icon_ios7_clock,
          icon_ios7_clock_outline,
          icon_ios7_star,
          icon_ios7_star_outline,
          icon_ios7_compose_outline,
          icon_ios7_wineglass,
          icon_ios7_pie,
          icon_ios7_pie_outline,
          icon_ios7_reload,
          icon_ios7_wineglass_outline,
          icon_ios7_medkit,
          icon_ios7_medkit_outline,
          icon_ios7_briefcase_outline,
          icon_ios7_briefcase,
          icon_ios7_pricetag,
          icon_ios7_pricetag_outline,
          icon_ios7_speedometer,
          icon_ios7_speedometer_outline,
          icon_ios7_lightbulb,
          icon_ios7_lightbulb_outline,
          icon_ios7_calculator,
          icon_ios7_calculator_outline,
          icon_ios7_arrow_thin_left,
          icon_ios7_arrow_thin_down,
          icon_ios7_arrow_thin_right,
          icon_ios7_arrow_thin_up,
          icon_ios7_time,
          icon_ios7_time_outline,
          icon_volume_mute,
          icon_thumbsdown,
          icon_thumbsup,
          icon_calendar,
          icon_images,
          icon_film_marker,
          icon_game_controller_b,
          icon_game_controller_a,
          icon_man,
          icon_archive,
          icon_trash_b,
          icon_trash_a,
          icon_folder,
          icon_alert_circled,
          icon_information_circled,
          icon_minus_circled,
          icon_plus_circled,
          icon_link,
          icon_eject,
          icon_skip_backward,
          icon_skip_forward,
          icon_iphone,
          icon_ipad,
          icon_ipod,
          icon_alert,
          icon_arrow_right_a,
          icon_arrow_up_a,
          icon_arrow_left_a,
          icon_arrow_down_a,
          icon_ionic,
          icon_plane,
          icon_flask,
          icon_card,
          icon_bag,
          icon_map,
          icon_clipboard,
          icon_pound,
          icon_at,
          icon_image,
          icon_mic_c,
          icon_mic_b,
          icon_waterdrop,
          icon_record,
          icon_stop,
          icon_pause,
          icon_play,
          icon_volume_low,
          icon_volume_medium,
          icon_volume_high,
          icon_mic_a,
          icon_music_note,
          icon_headphone,
          icon_disc,
          icon_videocamera,
          icon_printer,
          icon_laptop,
          icon_monitor,
          icon_flash_off,
          icon_flash,
          icon_eye,
          icon_camera,
          icon_bluetooth,
          icon_wifi,
          icon_battery_charging,
          icon_battery_empty,
          icon_battery_low,
          icon_battery_half,
          icon_battery_full,
          icon_woman,
          icon_person_stalker,
          icon_person_add,
          icon_person,
          icon_chatboxes,
          icon_chatbox_working,
          icon_chatbox,
          icon_chatbubbles,
          icon_chatbubble_working,
          icon_chatbubble,
          icon_unlocked,
          icon_locked,
          icon_more,
          icon_grid,
          icon_upload,
          icon_cloud,
          icon_location,
          icon_compose,
          icon_paperclip,
          icon_share,
          icon_email,
          icon_reply_all,
          icon_forward,
          icon_reply,
          icon_filing,
          icon_document_text,
          icon_document,
          icon_gear_b,
          icon_gear_a,
          icon_help_circled,
          icon_help,
          icon_information,
          icon_minus,
          icon_minus_round,
          icon_plus,
          icon_plus_round,
          icon_drag,
          icon_navicon,
          icon_navicon_round,
          icon_heart,
          icon_star,
          icon_search,
          icon_home,
          icon_shuffle,
          icon_loop,
          icon_close_circled,
          icon_close,
          icon_close_round,
          icon_checkmark_circled,
          icon_checkmark,
          icon_checkmark_round,
          icon_chevron_left,
          icon_chevron_right,
          icon_chevron_down,
          icon_chevron_up,
          icon_arrow_down_c,
          icon_arrow_up_c,
          icon_arrow_right_c,
          icon_arrow_left_c,
          icon_arrow_left_b,
          icon_arrow_down_b,
          icon_arrow_right_b,
          icon_arrow_up_b,
          icon_refresh,
          icon_leaf,
          icon_briefcase,
          icon_clock,
          icon_thermometer,
          icon_wrench,
          icon_medkit,
          icon_wineglass,
          icon_load_d,
          icon_load_c,
          icon_load_b,
          icon_load_a,
          icon_umbrella,
          icon_coffee,
          icon_pizza,
          icon_icecream,
          icon_spoon,
          icon_fork,
          icon_knife,
          icon_earth,
          icon_egg,
          icon_pie_graph,
          icon_magnet,
          icon_help_buoy,
          icon_nuclear,
          icon_beaker,
          icon_pricetags,
          icon_pricetag,
          icon_settings,
          icon_hammer,
          icon_power,
          icon_female,
          icon_male,
          icon_pinpoint,
          icon_pin,
          icon_navigate,
          icon_flag,
          icon_code_download,
          icon_code_working,
          icon_code,
          icon_usb,
          icon_bookmark,
          icon_key,
          icon_lightbulb,
          icon_calculator,
          icon_speakerphone,
          icon_contrast,
          icon_accelerate,
          icon_speedometer,
          icon_compass,
          icon_radio_waves,
          icon_log_out,
          icon_log_in,
          icon_levels,
          icon_connection_bars,
          icon_stats_bars,
          icon_arrow_graph_up,
          icon_arrow_graph_down,
          icon_arrow_resize,
          icon_arrow_move,
          icon_arrow_expand,
          icon_arrow_shrink,
          icon_arrow_swap,
          icon_arrow_return_left,
          icon_arrow_return_right,
          icon_social_android_outline,
          icon_social_android,
          icon_social_dropbox,
          icon_social_dropbox_outline,
          icon_social_designernews,
          icon_social_designernews_outline,
          icon_social_hackernews,
          icon_social_hackernews_outline,
          icon_social_windows,
          icon_social_windows_outline,
          icon_social_apple,
          icon_social_apple_outline,
          icon_social_youtube,
          icon_social_youtube_outline,
          icon_social_linkedin,
          icon_social_linkedin_outline,
          icon_social_skype,
          icon_social_skype_outline,
          icon_social_vimeo,
          icon_social_vimeo_outline,
          icon_social_buffer,
          icon_social_buffer_outline,
          icon_social_yahoo,
          icon_social_yahoo_outline,
          icon_social_reddit,
          icon_social_reddit_outline,
          icon_social_wordpress,
          icon_social_wordpress_outline,
          icon_social_tumblr,
          icon_social_tumblr_outline,
          icon_social_rss,
          icon_social_rss_outline,
          icon_social_github,
          icon_social_github_outline,
          icon_social_dribbble,
          icon_social_dribbble_outline,
          icon_social_googleplus,
          icon_social_googleplus_outline,
          icon_social_facebook,
          icon_social_facebook_outline,
          icon_social_twitter,
          icon_social_twitter_outline,
          icon_social_pinterest,
          icon_social_pinterest_outline,
          icon_social_bitcoin,
          icon_social_bitcoin_outline,
          icon_ios7_at_outline,
          icon_ios7_bookmarks,
          icon_ios7_bookmarks_outline,
          icon_ios7_at,
          icon_ios7_stopwatch,
          icon_ios7_stopwatch_outline,
          icon_ios7_timer,
          icon_ios7_timer_outline,
          icon_ios7_alarm,
          icon_ios7_alarm_outline,
          icon_ios7_rainy,
          icon_ios7_rainy_outline,
          icon_ios7_eye_outline,
          icon_ios7_gear_outline,
          icon_ios7_gear,
          icon_ios7_box_outline,
          icon_ios7_box,
          icon_ios7_drag,
          icon_ios7_ionic_outline,
          icon_ios7_printer_outline,
          icon_ios7_trash,
          icon_ios7_flag_outline,
          icon_ios7_glasses,
          icon_ios7_glasses_outline,
          icon_ios7_infinite,
          icon_ios7_infinite_outline,
          icon_ios7_cart,
          icon_ios7_cart_outline,
          icon_ios7_moon,
          icon_ios7_moon_outline,
          icon_ios7_thunderstorm,
          icon_ios7_thunderstorm_outline,
          icon_ios7_cloudy_outline,
          icon_ios7_sunny,
          icon_ios7_sunny_outline,
          icon_ios7_people,
          icon_ios7_people_outline,
          icon_ios7_person,
          icon_ios7_person_outline,
          icon_ios7_location,
          icon_ios7_location_outline,
          icon_ios7_personadd,
          icon_ios7_email,
          icon_ios7_email_outline,
          icon_ios7_paperplane,
          icon_ios7_paperplane_outline,
          icon_ios7_undo,
          icon_ios7_undo_outline,
          icon_ios7_redo,
          icon_ios7_redo_outline,
          icon_ios7_refresh_outline,
          icon_ios7_cog,
          icon_ios7_cog_outline,
          icon_ios7_browsers,
          icon_ios7_browsers_outline,
          icon_ios7_bolt,
          icon_ios7_bolt_outline,
          icon_ios7_heart,
          icon_ios7_printer,
          icon_ios7_telephone,
          icon_ios7_telephone_outline,
          icon_ios7_monitor,
          icon_ios7_monitor_outline,
          icon_ios7_camera,
          icon_ios7_camera_outline,
          icon_ios7_film,
          icon_ios7_bell,
          icon_ios7_bell_outline,
          icon_ios7_musical_note,
          icon_ios7_musical_notes,
          icon_ios7_skipbackward,
          icon_ios7_skipbackward_outline,
          icon_ios7_skipforward,
          icon_ios7_skipforward_outline,
          icon_ios7_rewind,
          icon_ios7_rewind_outline,
          icon_ios7_pause_outline,
          icon_ios7_pause,
          icon_ios7_play,
          icon_ios7_volume_high,
          icon_ios7_volume_low,
          icon_ios7_mic_off,
          icon_ios7_mic_outline,
          icon_ios7_mic,
          icon_ios7_cloud_upload,
          icon_ios7_cloud_upload_outline,
          icon_ios7_cloud_outline,
          icon_ios7_arrow_forward,
          icon_ios7_arrow_back,
          icon_ios7_unlocked,
          icon_ios7_unlocked_outline,
          icon_ios7_locked,
          icon_ios7_locked_outline,
          icon_ios7_minus_empty,
          icon_ios7_minus,
          icon_ios7_minus_outline,
          icon_ios7_folder_outline,
          icon_ios7_calendar,
          icon_ios7_calendar_outline,
          icon_ios7_partlysunny_outline,
          icon_ios7_cloudy,
          icon_ios7_eye,
          icon_ios7_videocam,
          icon_ios7_videocam_outline,
          icon_ios7_fastforward_outline,
          icon_ios7_play_outline,
          icon_ios7_cloud_download_outline,
          icon_ios7_cloud,
          icon_ios7_arrow_up,
          icon_ios7_arrow_down,
          icon_ios7_arrow_right,
          icon_ios7_arrow_left,
          icon_ios7_chatbubble,
          icon_ios7_chatbubble_outline,
          icon_ios7_refresh,
          icon_ios7_refresh_empty,
          icon_ios7_filing_outline,
          icon_ios7_compose,
          icon_ios7_chatboxes];
        self.nameArray =
        @[@"icon_ios7_folder",
          @"icon_ios7_flag",
          @"icon_ios7_partlysunny",
          @"icon_ios7_personadd_outline",
          @"icon_ios7_filing",
          @"icon_ios7_heart_outline",
          @"icon_ios7_film_outline",
          @"icon_ios7_fastforward",
          @"icon_ios7_cloud_download",
          @"icon_ios7_plus_empty",
          @"icon_ios7_plus",
          @"icon_ios7_plus_outline",
          @"icon_ios7_checkmark_empty",
          @"icon_ios7_checkmark",
          @"icon_ios7_checkmark_outline",
          @"icon_ios7_help_empty",
          @"icon_ios7_help",
          @"icon_ios7_help_outline",
          @"icon_ios7_information_empty",
          @"icon_ios7_information",
          @"icon_ios7_information_outline",
          @"icon_ios7_circle_filled",
          @"icon_ios7_circle_outline",
          @"icon_ios7_trash_outline",
          @"icon_ios7_more",
          @"icon_ios7_more_outline",
          @"icon_ios7_upload",
          @"icon_ios7_upload_outline",
          @"icon_ios7_download",
          @"icon_ios7_download_outline",
          @"icon_ios7_search_strong",
          @"icon_ios7_search",
          @"icon_ios7_navigate",
          @"icon_ios7_navigate_outline",
          @"icon_ios7_copy",
          @"icon_ios7_copy_outline",
          @"icon_ios7_photos",
          @"icon_ios7_photos_outline",
          @"icon_ios7_albums",
          @"icon_ios7_albums_outline",
          @"icon_ios7_world",
          @"icon_ios7_world_outline",
          @"icon_ios7_recording",
          @"icon_ios7_recording_outline",
          @"icon_ios7_keypad",
          @"icon_ios7_keypad_outline",
          @"icon_ios7_contact",
          @"icon_ios7_contact_outline",
          @"icon_ios7_clock",
          @"icon_ios7_clock_outline",
          @"icon_ios7_star",
          @"icon_ios7_star_outline",
          @"icon_ios7_compose_outline",
          @"icon_ios7_wineglass",
          @"icon_ios7_pie",
          @"icon_ios7_pie_outline",
          @"icon_ios7_reload",
          @"icon_ios7_wineglass_outline",
          @"icon_ios7_medkit",
          @"icon_ios7_medkit_outline",
          @"icon_ios7_briefcase_outline",
          @"icon_ios7_briefcase",
          @"icon_ios7_pricetag",
          @"icon_ios7_pricetag_outline",
          @"icon_ios7_speedometer",
          @"icon_ios7_speedometer_outline",
          @"icon_ios7_lightbulb",
          @"icon_ios7_lightbulb_outline",
          @"icon_ios7_calculator",
          @"icon_ios7_calculator_outline",
          @"icon_ios7_arrow_thin_left",
          @"icon_ios7_arrow_thin_down",
          @"icon_ios7_arrow_thin_right",
          @"icon_ios7_arrow_thin_up",
          @"icon_ios7_time",
          @"icon_ios7_time_outline",
          @"icon_volume_mute",
          @"icon_thumbsdown",
          @"icon_thumbsup",
          @"icon_calendar",
          @"icon_images",
          @"icon_film_marker",
          @"icon_game_controller_b",
          @"icon_game_controller_a",
          @"icon_man",
          @"icon_archive",
          @"icon_trash_b",
          @"icon_trash_a",
          @"icon_folder",
          @"icon_alert_circled",
          @"icon_information_circled",
          @"icon_minus_circled",
          @"icon_plus_circled",
          @"icon_link",
          @"icon_eject",
          @"icon_skip_backward",
          @"icon_skip_forward",
          @"icon_iphone",
          @"icon_ipad",
          @"icon_ipod",
          @"icon_alert",
          @"icon_arrow_right_a",
          @"icon_arrow_up_a",
          @"icon_arrow_left_a",
          @"icon_arrow_down_a",
          @"icon_ionic",
          @"icon_plane",
          @"icon_flask",
          @"icon_card",
          @"icon_bag",
          @"icon_map",
          @"icon_clipboard",
          @"icon_pound",
          @"icon_at",
          @"icon_image",
          @"icon_mic_c",
          @"icon_mic_b",
          @"icon_waterdrop",
          @"icon_record",
          @"icon_stop",
          @"icon_pause",
          @"icon_play",
          @"icon_volume_low",
          @"icon_volume_medium",
          @"icon_volume_high",
          @"icon_mic_a",
          @"icon_music_note",
          @"icon_headphone",
          @"icon_disc",
          @"icon_videocamera",
          @"icon_printer",
          @"icon_laptop",
          @"icon_monitor",
          @"icon_flash_off",
          @"icon_flash",
          @"icon_eye",
          @"icon_camera",
          @"icon_bluetooth",
          @"icon_wifi",
          @"icon_battery_charging",
          @"icon_battery_empty",
          @"icon_battery_low",
          @"icon_battery_half",
          @"icon_battery_full",
          @"icon_woman",
          @"icon_person_stalker",
          @"icon_person_add",
          @"icon_person",
          @"icon_chatboxes",
          @"icon_chatbox_working",
          @"icon_chatbox",
          @"icon_chatbubbles",
          @"icon_chatbubble_working",
          @"icon_chatbubble",
          @"icon_unlocked",
          @"icon_locked",
          @"icon_more",
          @"icon_grid",
          @"icon_upload",
          @"icon_cloud",
          @"icon_location",
          @"icon_compose",
          @"icon_paperclip",
          @"icon_share",
          @"icon_email",
          @"icon_reply_all",
          @"icon_forward",
          @"icon_reply",
          @"icon_filing",
          @"icon_document_text",
          @"icon_document",
          @"icon_gear_b",
          @"icon_gear_a",
          @"icon_help_circled",
          @"icon_help",
          @"icon_information",
          @"icon_minus",
          @"icon_minus_round",
          @"icon_plus",
          @"icon_plus_round",
          @"icon_drag",
          @"icon_navicon",
          @"icon_navicon_round",
          @"icon_heart",
          @"icon_star",
          @"icon_search",
          @"icon_home",
          @"icon_shuffle",
          @"icon_loop",
          @"icon_close_circled",
          @"icon_close",
          @"icon_close_round",
          @"icon_checkmark_circled",
          @"icon_checkmark",
          @"icon_checkmark_round",
          @"icon_chevron_left",
          @"icon_chevron_right",
          @"icon_chevron_down",
          @"icon_chevron_up",
          @"icon_arrow_down_c",
          @"icon_arrow_up_c",
          @"icon_arrow_right_c",
          @"icon_arrow_left_c",
          @"icon_arrow_left_b",
          @"icon_arrow_down_b",
          @"icon_arrow_right_b",
          @"icon_arrow_up_b",
          @"icon_refresh",
          @"icon_leaf",
          @"icon_briefcase",
          @"icon_clock",
          @"icon_thermometer",
          @"icon_wrench",
          @"icon_medkit",
          @"icon_wineglass",
          @"icon_load_d",
          @"icon_load_c",
          @"icon_load_b",
          @"icon_load_a",
          @"icon_umbrella",
          @"icon_coffee",
          @"icon_pizza",
          @"icon_icecream",
          @"icon_spoon",
          @"icon_fork",
          @"icon_knife",
          @"icon_earth",
          @"icon_egg",
          @"icon_pie_graph",
          @"icon_magnet",
          @"icon_help_buoy",
          @"icon_nuclear",
          @"icon_beaker",
          @"icon_pricetags",
          @"icon_pricetag",
          @"icon_settings",
          @"icon_hammer",
          @"icon_power",
          @"icon_female",
          @"icon_male",
          @"icon_pinpoint",
          @"icon_pin",
          @"icon_navigate",
          @"icon_flag",
          @"icon_code_download",
          @"icon_code_working",
          @"icon_code",
          @"icon_usb",
          @"icon_bookmark",
          @"icon_key",
          @"icon_lightbulb",
          @"icon_calculator",
          @"icon_speakerphone",
          @"icon_contrast",
          @"icon_accelerate",
          @"icon_speedometer",
          @"icon_compass",
          @"icon_radio_waves",
          @"icon_log_out",
          @"icon_log_in",
          @"icon_levels",
          @"icon_connection_bars",
          @"icon_stats_bars",
          @"icon_arrow_graph_up",
          @"icon_arrow_graph_down",
          @"icon_arrow_resize",
          @"icon_arrow_move",
          @"icon_arrow_expand",
          @"icon_arrow_shrink",
          @"icon_arrow_swap",
          @"icon_arrow_return_left",
          @"icon_arrow_return_right",
          @"icon_social_android_outline",
          @"icon_social_android",
          @"icon_social_dropbox",
          @"icon_social_dropbox_outline",
          @"icon_social_designernews",
          @"icon_social_designernews_outline",
          @"icon_social_hackernews",
          @"icon_social_hackernews_outline",
          @"icon_social_windows",
          @"icon_social_windows_outline",
          @"icon_social_apple",
          @"icon_social_apple_outline",
          @"icon_social_youtube",
          @"icon_social_youtube_outline",
          @"icon_social_linkedin",
          @"icon_social_linkedin_outline",
          @"icon_social_skype",
          @"icon_social_skype_outline",
          @"icon_social_vimeo",
          @"icon_social_vimeo_outline",
          @"icon_social_buffer",
          @"icon_social_buffer_outline",
          @"icon_social_yahoo",
          @"icon_social_yahoo_outline",
          @"icon_social_reddit",
          @"icon_social_reddit_outline",
          @"icon_social_wordpress",
          @"icon_social_wordpress_outline",
          @"icon_social_tumblr",
          @"icon_social_tumblr_outline",
          @"icon_social_rss",
          @"icon_social_rss_outline",
          @"icon_social_github",
          @"icon_social_github_outline",
          @"icon_social_dribbble",
          @"icon_social_dribbble_outline",
          @"icon_social_googleplus",
          @"icon_social_googleplus_outline",
          @"icon_social_facebook",
          @"icon_social_facebook_outline",
          @"icon_social_twitter",
          @"icon_social_twitter_outline",
          @"icon_social_pinterest",
          @"icon_social_pinterest_outline",
          @"icon_social_bitcoin",
          @"icon_social_bitcoin_outline",
          @"icon_ios7_at_outline",
          @"icon_ios7_bookmarks",
          @"icon_ios7_bookmarks_outline",
          @"icon_ios7_at",
          @"icon_ios7_stopwatch",
          @"icon_ios7_stopwatch_outline",
          @"icon_ios7_timer",
          @"icon_ios7_timer_outline",
          @"icon_ios7_alarm",
          @"icon_ios7_alarm_outline",
          @"icon_ios7_rainy",
          @"icon_ios7_rainy_outline",
          @"icon_ios7_eye_outline",
          @"icon_ios7_gear_outline",
          @"icon_ios7_gear",
          @"icon_ios7_box_outline",
          @"icon_ios7_box",
          @"icon_ios7_drag",
          @"icon_ios7_ionic_outline",
          @"icon_ios7_printer_outline",
          @"icon_ios7_trash",
          @"icon_ios7_flag_outline",
          @"icon_ios7_glasses",
          @"icon_ios7_glasses_outline",
          @"icon_ios7_infinite",
          @"icon_ios7_infinite_outline",
          @"icon_ios7_cart",
          @"icon_ios7_cart_outline",
          @"icon_ios7_moon",
          @"icon_ios7_moon_outline",
          @"icon_ios7_thunderstorm",
          @"icon_ios7_thunderstorm_outline",
          @"icon_ios7_cloudy_outline",
          @"icon_ios7_sunny",
          @"icon_ios7_sunny_outline",
          @"icon_ios7_people",
          @"icon_ios7_people_outline",
          @"icon_ios7_person",
          @"icon_ios7_person_outline",
          @"icon_ios7_location",
          @"icon_ios7_location_outline",
          @"icon_ios7_personadd",
          @"icon_ios7_email",
          @"icon_ios7_email_outline",
          @"icon_ios7_paperplane",
          @"icon_ios7_paperplane_outline",
          @"icon_ios7_undo",
          @"icon_ios7_undo_outline",
          @"icon_ios7_redo",
          @"icon_ios7_redo_outline",
          @"icon_ios7_refresh_outline",
          @"icon_ios7_cog",
          @"icon_ios7_cog_outline",
          @"icon_ios7_browsers",
          @"icon_ios7_browsers_outline",
          @"icon_ios7_bolt",
          @"icon_ios7_bolt_outline",
          @"icon_ios7_heart",
          @"icon_ios7_printer",
          @"icon_ios7_telephone",
          @"icon_ios7_telephone_outline",
          @"icon_ios7_monitor",
          @"icon_ios7_monitor_outline",
          @"icon_ios7_camera",
          @"icon_ios7_camera_outline",
          @"icon_ios7_film",
          @"icon_ios7_bell",
          @"icon_ios7_bell_outline",
          @"icon_ios7_musical_note",
          @"icon_ios7_musical_notes",
          @"icon_ios7_skipbackward",
          @"icon_ios7_skipbackward_outline",
          @"icon_ios7_skipforward",
          @"icon_ios7_skipforward_outline",
          @"icon_ios7_rewind",
          @"icon_ios7_rewind_outline",
          @"icon_ios7_pause_outline",
          @"icon_ios7_pause",
          @"icon_ios7_play",
          @"icon_ios7_volume_high",
          @"icon_ios7_volume_low",
          @"icon_ios7_mic_off",
          @"icon_ios7_mic_outline",
          @"icon_ios7_mic",
          @"icon_ios7_cloud_upload",
          @"icon_ios7_cloud_upload_outline",
          @"icon_ios7_cloud_outline",
          @"icon_ios7_arrow_forward",
          @"icon_ios7_arrow_back",
          @"icon_ios7_unlocked",
          @"icon_ios7_unlocked_outline",
          @"icon_ios7_locked",
          @"icon_ios7_locked_outline",
          @"icon_ios7_minus_empty",
          @"icon_ios7_minus",
          @"icon_ios7_minus_outline",
          @"icon_ios7_folder_outline",
          @"icon_ios7_calendar",
          @"icon_ios7_calendar_outline",
          @"icon_ios7_partlysunny_outline",
          @"icon_ios7_cloudy",
          @"icon_ios7_eye",
          @"icon_ios7_videocam",
          @"icon_ios7_videocam_outline",
          @"icon_ios7_fastforward_outline",
          @"icon_ios7_play_outline",
          @"icon_ios7_cloud_download_outline",
          @"icon_ios7_cloud",
          @"icon_ios7_arrow_up",
          @"icon_ios7_arrow_down",
          @"icon_ios7_arrow_right",
          @"icon_ios7_arrow_left",
          @"icon_ios7_chatbubble",
          @"icon_ios7_chatbubble_outline",
          @"icon_ios7_refresh",
          @"icon_ios7_refresh_empty",
          @"icon_ios7_filing_outline",
          @"icon_ios7_compose",
          @"icon_ios7_chatboxes"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.collectionView registerClass:[IconViewCell class] forCellWithReuseIdentifier:CellIdentifier];
    self.collectionView.backgroundColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.nameArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    IconViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.imageView.image = [IonIcons imageWithIcon:self.iconArray[indexPath.row]
                                  iconColor:[UIColor colorWithRed:0 green:0.48 blue:1 alpha:1]
                                   iconSize:30.0f
                                  imageSize:CGSizeMake(50.0f, 50.0f)];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    self.title = self.nameArray[indexPath.row];
}
@end
