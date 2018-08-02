#NoTrayIcon
#Region
	#AutoIt3Wrapper_Icon=..\Iu Ta Hem\heart.ico
	#AutoIt3Wrapper_Compression=4
#EndRegion
Global Const $gui_event_close = -3
Global Const $gui_event_minimize = -4
Global Const $gui_event_restore = -5
Global Const $gui_event_maximize = -6
Global Const $gui_event_primarydown = -7
Global Const $gui_event_primaryup = -8
Global Const $gui_event_secondarydown = -9
Global Const $gui_event_secondaryup = -10
Global Const $gui_event_mousemove = -11
Global Const $gui_event_resized = -12
Global Const $gui_event_dropped = -13
Global Const $gui_rundefmsg = "GUI_RUNDEFMSG"
Global Const $gui_avistop = 0
Global Const $gui_avistart = 1
Global Const $gui_aviclose = 2
Global Const $gui_checked = 1
Global Const $gui_indeterminate = 2
Global Const $gui_unchecked = 4
Global Const $gui_dropaccepted = 8
Global Const $gui_nodropaccepted = 4096
Global Const $gui_acceptfiles = $gui_dropaccepted
Global Const $gui_show = 16
Global Const $gui_hide = 32
Global Const $gui_enable = 64
Global Const $gui_disable = 128
Global Const $gui_focus = 256
Global Const $gui_nofocus = 8192
Global Const $gui_defbutton = 512
Global Const $gui_expand = 1024
Global Const $gui_ontop = 2048
Global Const $gui_fontitalic = 2
Global Const $gui_fontunder = 4
Global Const $gui_fontstrike = 8
Global Const $gui_dockauto = 1
Global Const $gui_dockleft = 2
Global Const $gui_dockright = 4
Global Const $gui_dockhcenter = 8
Global Const $gui_docktop = 32
Global Const $gui_dockbottom = 64
Global Const $gui_dockvcenter = 128
Global Const $gui_dockwidth = 256
Global Const $gui_dockheight = 512
Global Const $gui_docksize = 768
Global Const $gui_dockmenubar = 544
Global Const $gui_dockstatebar = 576
Global Const $gui_dockall = 802
Global Const $gui_dockborders = 102
Global Const $gui_gr_close = 1
Global Const $gui_gr_line = 2
Global Const $gui_gr_bezier = 4
Global Const $gui_gr_move = 6
Global Const $gui_gr_color = 8
Global Const $gui_gr_rect = 10
Global Const $gui_gr_ellipse = 12
Global Const $gui_gr_pie = 14
Global Const $gui_gr_dot = 16
Global Const $gui_gr_pixel = 18
Global Const $gui_gr_hint = 20
Global Const $gui_gr_refresh = 22
Global Const $gui_gr_pensize = 24
Global Const $gui_gr_nobkcolor = -2
Global Const $gui_bkcolor_default = -1
Global Const $gui_bkcolor_transparent = -2
Global Const $gui_bkcolor_lv_alternate = -33554432
Global Const $gui_ws_ex_parentdrag = 1048576
Global Const $ws_tiled = 0
Global Const $ws_overlapped = 0
Global Const $ws_maximizebox = 65536
Global Const $ws_minimizebox = 131072
Global Const $ws_tabstop = 65536
Global Const $ws_group = 131072
Global Const $ws_sizebox = 262144
Global Const $ws_thickframe = 262144
Global Const $ws_sysmenu = 524288
Global Const $ws_hscroll = 1048576
Global Const $ws_vscroll = 2097152
Global Const $ws_dlgframe = 4194304
Global Const $ws_border = 8388608
Global Const $ws_caption = 12582912
Global Const $ws_overlappedwindow = 13565952
Global Const $ws_tiledwindow = 13565952
Global Const $ws_maximize = 16777216
Global Const $ws_clipchildren = 33554432
Global Const $ws_clipsiblings = 67108864
Global Const $ws_disabled = 134217728
Global Const $ws_visible = 268435456
Global Const $ws_minimize = 536870912
Global Const $ws_child = 1073741824
Global Const $ws_popup = --2147483648
Global Const $ws_popupwindow = -2138570752
Global Const $ds_modalframe = 128
Global Const $ds_setforeground = 512
Global Const $ds_contexthelp = 8192
Global Const $ws_ex_acceptfiles = 16
Global Const $ws_ex_mdichild = 64
Global Const $ws_ex_appwindow = 262144
Global Const $ws_ex_composited = 33554432
Global Const $ws_ex_clientedge = 512
Global Const $ws_ex_contexthelp = 1024
Global Const $ws_ex_dlgmodalframe = 1
Global Const $ws_ex_leftscrollbar = 16384
Global Const $ws_ex_overlappedwindow = 768
Global Const $ws_ex_right = 4096
Global Const $ws_ex_staticedge = 131072
Global Const $ws_ex_toolwindow = 128
Global Const $ws_ex_topmost = 8
Global Const $ws_ex_transparent = 32
Global Const $ws_ex_windowedge = 256
Global Const $ws_ex_layered = 524288
Global Const $ws_ex_controlparent = 65536
Global Const $ws_ex_layoutrtl = 4194304
Global Const $ws_ex_rtlreading = 8192
Global Const $wm_gettextlength = 14
Global Const $wm_gettext = 13
Global Const $wm_size = 5
Global Const $wm_sizing = 532
Global Const $wm_user = 1024
Global Const $wm_create = 1
Global Const $wm_destroy = 2
Global Const $wm_move = 3
Global Const $wm_activate = 6
Global Const $wm_setfocus = 7
Global Const $wm_killfocus = 8
Global Const $wm_enable = 10
Global Const $wm_setredraw = 11
Global Const $wm_settext = 12
Global Const $wm_paint = 15
Global Const $wm_close = 16
Global Const $wm_quit = 18
Global Const $wm_erasebkgnd = 20
Global Const $wm_syscolorchange = 21
Global Const $wm_showwindow = 24
Global Const $wm_wininichange = 26
Global Const $wm_devmodechange = 27
Global Const $wm_activateapp = 28
Global Const $wm_fontchange = 29
Global Const $wm_timechange = 30
Global Const $wm_cancelmode = 31
Global Const $wm_setcursor = 32
Global Const $wm_mouseactivate = 33
Global Const $wm_childactivate = 34
Global Const $wm_queuesync = 35
Global Const $wm_getminmaxinfo = 36
Global Const $wm_painticon = 38
Global Const $wm_iconerasebkgnd = 39
Global Const $wm_nextdlgctl = 40
Global Const $wm_spoolerstatus = 42
Global Const $wm_drawitem = 43
Global Const $wm_measureitem = 44
Global Const $wm_deleteitem = 45
Global Const $wm_vkeytoitem = 46
Global Const $wm_chartoitem = 47
Global Const $wm_setfont = 48
Global Const $wm_getfont = 49
Global Const $wm_sethotkey = 50
Global Const $wm_gethotkey = 51
Global Const $wm_querydragicon = 55
Global Const $wm_compareitem = 57
Global Const $wm_getobject = 61
Global Const $wm_compacting = 65
Global Const $wm_commnotify = 68
Global Const $wm_windowposchanging = 70
Global Const $wm_windowposchanged = 71
Global Const $wm_power = 72
Global Const $wm_notify = 78
Global Const $wm_copydata = 74
Global Const $wm_canceljournal = 75
Global Const $wm_inputlangchangerequest = 80
Global Const $wm_inputlangchange = 81
Global Const $wm_tcard = 82
Global Const $wm_help = 83
Global Const $wm_userchanged = 84
Global Const $wm_notifyformat = 85
Global Const $wm_cut = 768
Global Const $wm_copy = 769
Global Const $wm_paste = 770
Global Const $wm_clear = 771
Global Const $wm_undo = 772
Global Const $wm_contextmenu = 123
Global Const $wm_stylechanging = 124
Global Const $wm_stylechanged = 125
Global Const $wm_displaychange = 126
Global Const $wm_geticon = 127
Global Const $wm_seticon = 128
Global Const $wm_nccreate = 129
Global Const $wm_ncdestroy = 130
Global Const $wm_nccalcsize = 131
Global Const $wm_nchittest = 132
Global Const $wm_ncpaint = 133
Global Const $wm_ncactivate = 134
Global Const $wm_getdlgcode = 135
Global Const $wm_syncpaint = 136
Global Const $wm_ncmousemove = 160
Global Const $wm_nclbuttondown = 161
Global Const $wm_nclbuttonup = 162
Global Const $wm_nclbuttondblclk = 163
Global Const $wm_ncrbuttondown = 164
Global Const $wm_ncrbuttonup = 165
Global Const $wm_ncrbuttondblclk = 166
Global Const $wm_ncmbuttondown = 167
Global Const $wm_ncmbuttonup = 168
Global Const $wm_ncmbuttondblclk = 169
Global Const $wm_keydown = 256
Global Const $wm_keyup = 257
Global Const $wm_char = 258
Global Const $wm_deadchar = 259
Global Const $wm_syskeydown = 260
Global Const $wm_syskeyup = 261
Global Const $wm_syschar = 262
Global Const $wm_sysdeadchar = 263
Global Const $wm_initdialog = 272
Global Const $wm_command = 273
Global Const $wm_syscommand = 274
Global Const $wm_timer = 275
Global Const $wm_hscroll = 276
Global Const $wm_vscroll = 277
Global Const $wm_initmenu = 278
Global Const $wm_initmenupopup = 279
Global Const $wm_menuselect = 287
Global Const $wm_menuchar = 288
Global Const $wm_enteridle = 289
Global Const $wm_menurbuttonup = 290
Global Const $wm_menudrag = 291
Global Const $wm_menugetobject = 292
Global Const $wm_uninitmenupopup = 293
Global Const $wm_menucommand = 294
Global Const $wm_changeuistate = 295
Global Const $wm_updateuistate = 296
Global Const $wm_queryuistate = 297
Global Const $wm_ctlcolormsgbox = 306
Global Const $wm_ctlcoloredit = 307
Global Const $wm_ctlcolorlistbox = 308
Global Const $wm_ctlcolorbtn = 309
Global Const $wm_ctlcolordlg = 310
Global Const $wm_ctlcolorscrollbar = 311
Global Const $wm_ctlcolorstatic = 312
Global Const $wm_ctlcolor = 25
Global Const $mn_gethmenu = 481
Global Const $nm_first = 0
Global Const $nm_outofmemory = $nm_first - 1
Global Const $nm_click = $nm_first - 2
Global Const $nm_dblclk = $nm_first - 3
Global Const $nm_return = $nm_first - 4
Global Const $nm_rclick = $nm_first - 5
Global Const $nm_rdblclk = $nm_first - 6
Global Const $nm_setfocus = $nm_first - 7
Global Const $nm_killfocus = $nm_first - 8
Global Const $nm_customdraw = $nm_first - 12
Global Const $nm_hover = $nm_first - 13
Global Const $nm_nchittest = $nm_first - 14
Global Const $nm_keydown = $nm_first - 15
Global Const $nm_releasedcapture = $nm_first - 16
Global Const $nm_setcursor = $nm_first - 17
Global Const $nm_char = $nm_first - 18
Global Const $nm_tooltipscreated = $nm_first - 19
Global Const $nm_ldown = $nm_first - 20
Global Const $nm_rdown = $nm_first - 21
Global Const $nm_themechanged = $nm_first - 22
Global Const $wm_mousemove = 512
Global Const $wm_lbuttondown = 513
Global Const $wm_lbuttonup = 514
Global Const $wm_lbuttondblclk = 515
Global Const $wm_rbuttondown = 516
Global Const $wm_rbuttonup = 517
Global Const $wm_rbuttondblck = 518
Global Const $wm_mbuttondown = 519
Global Const $wm_mbuttonup = 520
Global Const $wm_mbuttondblck = 521
Global Const $wm_mousewheel = 522
Global Const $wm_xbuttondown = 523
Global Const $wm_xbuttonup = 524
Global Const $wm_xbuttondblclk = 525
Global Const $wm_mousehwheel = 526
Global Const $ps_solid = 0
Global Const $ps_dash = 1
Global Const $ps_dot = 2
Global Const $ps_dashdot = 3
Global Const $ps_dashdotdot = 4
Global Const $ps_null = 5
Global Const $ps_insideframe = 6
Global Const $lwa_alpha = 2
Global Const $lwa_colorkey = 1
Global Const $rgn_and = 1
Global Const $rgn_or = 2
Global Const $rgn_xor = 3
Global Const $rgn_diff = 4
Global Const $rgn_copy = 5
Global Const $errorregion = 0
Global Const $nullregion = 1
Global Const $simpleregion = 2
Global Const $complexregion = 3
Global Const $transparent = 1
Global Const $opaque = 2
Global Const $ccm_first = 8192
Global Const $ccm_getunicodeformat = ($ccm_first + 6)
Global Const $ccm_setunicodeformat = ($ccm_first + 5)
Global Const $ccm_setbkcolor = $ccm_first + 1
Global Const $ccm_setcolorscheme = $ccm_first + 2
Global Const $ccm_getcolorscheme = $ccm_first + 3
Global Const $ccm_getdroptarget = $ccm_first + 4
Global Const $ccm_setwindowtheme = $ccm_first + 11
Global Const $ga_parent = 1
Global Const $ga_root = 2
Global Const $ga_rootowner = 3
Global Const $sm_cxscreen = 0
Global Const $sm_cyscreen = 1
Global Const $sm_cxvscroll = 2
Global Const $sm_cyhscroll = 3
Global Const $sm_cycaption = 4
Global Const $sm_cxborder = 5
Global Const $sm_cyborder = 6
Global Const $sm_cxdlgframe = 7
Global Const $sm_cydlgframe = 8
Global Const $sm_cyvthumb = 9
Global Const $sm_cxhthumb = 10
Global Const $sm_cxicon = 11
Global Const $sm_cyicon = 12
Global Const $sm_cxcursor = 13
Global Const $sm_cycursor = 14
Global Const $sm_cymenu = 15
Global Const $sm_cxfullscreen = 16
Global Const $sm_cyfullscreen = 17
Global Const $sm_cykanjiwindow = 18
Global Const $sm_mousepresent = 19
Global Const $sm_cyvscroll = 20
Global Const $sm_cxhscroll = 21
Global Const $sm_debug = 22
Global Const $sm_swapbutton = 23
Global Const $sm_reserved1 = 24
Global Const $sm_reserved2 = 25
Global Const $sm_reserved3 = 26
Global Const $sm_reserved4 = 27
Global Const $sm_cxmin = 28
Global Const $sm_cymin = 29
Global Const $sm_cxsize = 30
Global Const $sm_cysize = 31
Global Const $sm_cxframe = 32
Global Const $sm_cyframe = 33
Global Const $sm_cxmintrack = 34
Global Const $sm_cymintrack = 35
Global Const $sm_cxdoubleclk = 36
Global Const $sm_cydoubleclk = 37
Global Const $sm_cxiconspacing = 38
Global Const $sm_cyiconspacing = 39
Global Const $sm_menudropalignment = 40
Global Const $sm_penwindows = 41
Global Const $sm_dbcsenabled = 42
Global Const $sm_cmousebuttons = 43
Global Const $sm_secure = 44
Global Const $sm_cxedge = 45
Global Const $sm_cyedge = 46
Global Const $sm_cxminspacing = 47
Global Const $sm_cyminspacing = 48
Global Const $sm_cxsmicon = 49
Global Const $sm_cysmicon = 50
Global Const $sm_cysmcaption = 51
Global Const $sm_cxsmsize = 52
Global Const $sm_cysmsize = 53
Global Const $sm_cxmenusize = 54
Global Const $sm_cymenusize = 55
Global Const $sm_arrange = 56
Global Const $sm_cxminimized = 57
Global Const $sm_cyminimized = 58
Global Const $sm_cxmaxtrack = 59
Global Const $sm_cymaxtrack = 60
Global Const $sm_cxmaximized = 61
Global Const $sm_cymaximized = 62
Global Const $sm_network = 63
Global Const $sm_cleanboot = 67
Global Const $sm_cxdrag = 68
Global Const $sm_cydrag = 69
Global Const $sm_showsounds = 70
Global Const $sm_cxmenucheck = 71
Global Const $sm_cymenucheck = 72
Global Const $sm_slowmachine = 73
Global Const $sm_mideastenabled = 74
Global Const $sm_mousewheelpresent = 75
Global Const $sm_xvirtualscreen = 76
Global Const $sm_yvirtualscreen = 77
Global Const $sm_cxvirtualscreen = 78
Global Const $sm_cyvirtualscreen = 79
Global Const $sm_cmonitors = 80
Global Const $sm_samedisplayformat = 81
Global Const $sm_immenabled = 82
Global Const $sm_cxfocusborder = 83
Global Const $sm_cyfocusborder = 84
Global Const $sm_tabletpc = 86
Global Const $sm_mediacenter = 87
Global Const $sm_starter = 88
Global Const $sm_serverr2 = 89
Global Const $sm_cmetrics = 90
Global Const $sm_remotesession = 4096
Global Const $sm_shuttingdown = 8192
Global Const $sm_remotecontrol = 8193
Global Const $sm_caretblinkingenabled = 8194
Global Const $blackness = 66
Global Const $captureblt = 1073741824
Global Const $dstinvert = 5570569
Global Const $mergecopy = 12583114
Global Const $mergepaint = 12255782
Global Const $nomirrorbitmap = --2147483648
Global Const $notsrccopy = 3342344
Global Const $notsrcerase = 1114278
Global Const $patcopy = 15728673
Global Const $patinvert = 5898313
Global Const $patpaint = 16452105
Global Const $srcand = 8913094
Global Const $srccopy = 13369376
Global Const $srcerase = 4457256
Global Const $srcinvert = 6684742
Global Const $srcpaint = 15597702
Global Const $whiteness = 16711778
Global Const $dt_bottom = 8
Global Const $dt_calcrect = 1024
Global Const $dt_center = 1
Global Const $dt_editcontrol = 8192
Global Const $dt_end_ellipsis = 32768
Global Const $dt_expandtabs = 64
Global Const $dt_externalleading = 512
Global Const $dt_hideprefix = 1048576
Global Const $dt_internal = 4096
Global Const $dt_left = 0
Global Const $dt_modifystring = 65536
Global Const $dt_noclip = 256
Global Const $dt_nofullwidthcharbreak = 524288
Global Const $dt_noprefix = 2048
Global Const $dt_path_ellipsis = 16384
Global Const $dt_prefixonly = 2097152
Global Const $dt_right = 2
Global Const $dt_rtlreading = 131072
Global Const $dt_singleline = 32
Global Const $dt_tabstop = 128
Global Const $dt_top = 0
Global Const $dt_vcenter = 4
Global Const $dt_wordbreak = 16
Global Const $dt_word_ellipsis = 262144
Global Const $rdw_erase = 4
Global Const $rdw_frame = 1024
Global Const $rdw_internalpaint = 2
Global Const $rdw_invalidate = 1
Global Const $rdw_noerase = 32
Global Const $rdw_noframe = 2048
Global Const $rdw_nointernalpaint = 16
Global Const $rdw_validate = 8
Global Const $rdw_erasenow = 512
Global Const $rdw_updatenow = 256
Global Const $rdw_allchildren = 128
Global Const $rdw_nochildren = 64
Global Const $wm_renderformat = 773
Global Const $wm_renderallformats = 774
Global Const $wm_destroyclipboard = 775
Global Const $wm_drawclipboard = 776
Global Const $wm_paintclipboard = 777
Global Const $wm_vscrollclipboard = 778
Global Const $wm_sizeclipboard = 779
Global Const $wm_askcbformatname = 780
Global Const $wm_changecbchain = 781
Global Const $wm_hscrollclipboard = 782
Global Const $hterror = -2
Global Const $httransparent = -1
Global Const $htnowhere = 0
Global Const $htclient = 1
Global Const $htcaption = 2
Global Const $htsysmenu = 3
Global Const $htgrowbox = 4
Global Const $htsize = $htgrowbox
Global Const $htmenu = 5
Global Const $hthscroll = 6
Global Const $htvscroll = 7
Global Const $htminbutton = 8
Global Const $htmaxbutton = 9
Global Const $htleft = 10
Global Const $htright = 11
Global Const $httop = 12
Global Const $httopleft = 13
Global Const $httopright = 14
Global Const $htbottom = 15
Global Const $htbottomleft = 16
Global Const $htbottomright = 17
Global Const $htborder = 18
Global Const $htreduce = $htminbutton
Global Const $htzoom = $htmaxbutton
Global Const $htsizefirst = $htleft
Global Const $htsizelast = $htbottomright
Global Const $htobject = 19
Global Const $htclose = 20
Global Const $hthelp = 21
Global Const $color_scrollbar = 0
Global Const $color_background = 1
Global Const $color_activecaption = 2
Global Const $color_inactivecaption = 3
Global Const $color_menu = 4
Global Const $color_window = 5
Global Const $color_windowframe = 6
Global Const $color_menutext = 7
Global Const $color_windowtext = 8
Global Const $color_captiontext = 9
Global Const $color_activeborder = 10
Global Const $color_inactiveborder = 11
Global Const $color_appworkspace = 12
Global Const $color_highlight = 13
Global Const $color_highlighttext = 14
Global Const $color_btnface = 15
Global Const $color_btnshadow = 16
Global Const $color_graytext = 17
Global Const $color_btntext = 18
Global Const $color_inactivecaptiontext = 19
Global Const $color_btnhighlight = 20
Global Const $color_3ddkshadow = 21
Global Const $color_3dlight = 22
Global Const $color_infotext = 23
Global Const $color_infobk = 24
Global Const $color_hotlight = 26
Global Const $color_gradientactivecaption = 27
Global Const $color_gradientinactivecaption = 28
Global Const $color_menuhilight = 29
Global Const $color_menubar = 30
Global Const $color_desktop = 1
Global Const $color_3dface = 15
Global Const $color_3dshadow = 16
Global Const $color_3dhighlight = 20
Global Const $color_3dhilight = 20
Global Const $color_btnhilight = 20
Global Const $hinst_commctrl = -1
Global Const $idb_std_small_color = 0
Global Const $idb_std_large_color = 1
Global Const $idb_view_small_color = 4
Global Const $idb_view_large_color = 5
Global Const $idb_hist_small_color = 8
Global Const $idb_hist_large_color = 9
Global Const $startf_forceofffeedback = 128
Global Const $startf_forceonfeedback = 64
Global Const $startf_runfullscreen = 32
Global Const $startf_usecountchars = 8
Global Const $startf_usefillattribute = 16
Global Const $startf_usehotkey = 512
Global Const $startf_useposition = 4
Global Const $startf_useshowwindow = 1
Global Const $startf_usesize = 2
Global Const $startf_usestdhandles = 256
Global Const $cdds_prepaint = 1
Global Const $cdds_postpaint = 2
Global Const $cdds_preerase = 3
Global Const $cdds_posterase = 4
Global Const $cdds_item = 65536
Global Const $cdds_itemprepaint = 65537
Global Const $cdds_itempostpaint = 65538
Global Const $cdds_itempreerase = 65539
Global Const $cdds_itemposterase = 65540
Global Const $cdds_subitem = 131072
Global Const $cdis_selected = 1
Global Const $cdis_grayed = 2
Global Const $cdis_disabled = 4
Global Const $cdis_checked = 8
Global Const $cdis_focus = 16
Global Const $cdis_default = 32
Global Const $cdis_hot = 64
Global Const $cdis_marked = 128
Global Const $cdis_indeterminate = 256
Global Const $cdis_showkeyboardcues = 512
Global Const $cdis_nearhot = 1024
Global Const $cdis_othersidehot = 2048
Global Const $cdis_drophilited = 4096
Global Const $cdrf_dodefault = 0
Global Const $cdrf_newfont = 2
Global Const $cdrf_skipdefault = 4
Global Const $cdrf_notifypostpaint = 16
Global Const $cdrf_notifyitemdraw = 32
Global Const $cdrf_notifysubitemdraw = 32
Global Const $cdrf_notifyposterase = 64
Global Const $cdrf_doerase = 8
Global Const $cdrf_skippostpaint = 256
Global Const $gui_ss_default_gui = BitOR($ws_minimizebox, $ws_caption, $ws_popup, $ws_sysmenu)
Global Const $es_left = 0
Global Const $es_center = 1
Global Const $es_right = 2
Global Const $es_multiline = 4
Global Const $es_uppercase = 8
Global Const $es_lowercase = 16
Global Const $es_password = 32
Global Const $es_autovscroll = 64
Global Const $es_autohscroll = 128
Global Const $es_nohidesel = 256
Global Const $es_oemconvert = 1024
Global Const $es_readonly = 2048
Global Const $es_wantreturn = 4096
Global Const $es_number = 8192
Global Const $ec_err = -1
Global Const $ecm_first = 5376
Global Const $em_canundo = 198
Global Const $em_charfrompos = 215
Global Const $em_emptyundobuffer = 205
Global Const $em_fmtlines = 200
Global Const $em_getcuebanner = ($ecm_first + 2)
Global Const $em_getfirstvisibleline = 206
Global Const $em_gethandle = 189
Global Const $em_getimestatus = 217
Global Const $em_getlimittext = 213
Global Const $em_getline = 196
Global Const $em_getlinecount = 186
Global Const $em_getmargins = 212
Global Const $em_getmodify = 184
Global Const $em_getpasswordchar = 210
Global Const $em_getrect = 178
Global Const $em_getsel = 176
Global Const $em_getthumb = 190
Global Const $em_getwordbreakproc = 209
Global Const $em_hideballoontip = ($ecm_first + 4)
Global Const $em_limittext = 197
Global Const $em_linefromchar = 201
Global Const $em_lineindex = 187
Global Const $em_linelength = 193
Global Const $em_linescroll = 182
Global Const $em_posfromchar = 214
Global Const $em_replacesel = 194
Global Const $em_scroll = 181
Global Const $em_scrollcaret = 183
Global Const $em_setcuebanner = ($ecm_first + 1)
Global Const $em_sethandle = 188
Global Const $em_setimestatus = 216
Global Const $em_setlimittext = $em_limittext
Global Const $em_setmargins = 211
Global Const $em_setmodify = 185
Global Const $em_setpasswordchar = 204
Global Const $em_setreadonly = 207
Global Const $em_setrect = 179
Global Const $em_setrectnp = 180
Global Const $em_setsel = 177
Global Const $em_settabstops = 203
Global Const $em_setwordbreakproc = 208
Global Const $em_showballoontip = ($ecm_first + 3)
Global Const $em_undo = 199
Global Const $ec_leftmargin = 1
Global Const $ec_rightmargin = 2
Global Const $ec_usefontinfo = 65535
Global Const $emsis_compositionstring = 1
Global Const $eimes_getcompstratonce = 1
Global Const $eimes_cancelcompstrinfocus = 2
Global Const $eimes_completecompstrkillfocus = 4
Global Const $en_align_ltr_ec = 1792
Global Const $en_align_rtl_ec = 1793
Global Const $en_change = 768
Global Const $en_errspace = 1280
Global Const $en_hscroll = 1537
Global Const $en_killfocus = 512
Global Const $en_maxtext = 1281
Global Const $en_setfocus = 256
Global Const $en_update = 1024
Global Const $en_vscroll = 1538
Global Const $tti_none = 0
Global Const $tti_info = 1
Global Const $tti_warning = 2
Global Const $tti_error = 3
Global Const $tti_info_large = 4
Global Const $tti_warning_large = 5
Global Const $tti_error_large = 6
Global Const $__editconstant_ws_vscroll = 2097152
Global Const $__editconstant_ws_hscroll = 1048576
Global Const $gui_ss_default_edit = BitOR($es_wantreturn, $__editconstant_ws_vscroll, $__editconstant_ws_hscroll, $es_autovscroll, $es_autohscroll)
Global Const $gui_ss_default_input = BitOR($es_left, $es_autohscroll)
Global Const $ss_left = 0
Global Const $ss_center = 1
Global Const $ss_right = 2
Global Const $ss_icon = 3
Global Const $ss_blackrect = 4
Global Const $ss_grayrect = 5
Global Const $ss_whiterect = 6
Global Const $ss_blackframe = 7
Global Const $ss_grayframe = 8
Global Const $ss_whiteframe = 9
Global Const $ss_simple = 11
Global Const $ss_leftnowordwrap = 12
Global Const $ss_bitmap = 14
Global Const $ss_etchedhorz = 16
Global Const $ss_etchedvert = 17
Global Const $ss_etchedframe = 18
Global Const $ss_noprefix = 128
Global Const $ss_notify = 256
Global Const $ss_centerimage = 512
Global Const $ss_rightjust = 1024
Global Const $ss_sunken = 4096
Global Const $gui_ss_default_label = 0
Global Const $gui_ss_default_graphic = 0
Global Const $gui_ss_default_icon = $ss_notify
Global Const $gui_ss_default_pic = $ss_notify

Func _guictrlcreategif($sfilename, $ileft, $itop, ByRef $agifarrayoficonhandles, ByRef $hgifthread, ByRef $itransparency, ByRef $tcurrentframe)
	Local $hgif = GUICtrlCreateIcon("", "", 0, 0)
	$agifarrayoficonhandles = _createarrayhiconsfromgiffile($hgif, $sfilename, $ileft, $itop, $itransparency)
	If @error Then
		GUICtrlDelete($hgif)
		$hgif = 0
		Return SetError(1, 0, 0)
	EndIf
	If UBound($agifarrayoficonhandles) > 1 Then
		$hgifthread = _animategifinanotherthread($hgif, $agifarrayoficonhandles, $itransparency, $tcurrentframe)
		If @error Then
			For $i = 0 To UBound($agifarrayoficonhandles) - 1
				DllCall("user32.dll", "int", "DestroyIcon", "hwnd", $agifarrayoficonhandles[$i][0])
			Next
			Return SetError(2, 0, 0)
		EndIf
	EndIf
	Return SetError(0, 0, $hgif)
EndFunc

Func _guictrldeletegif(ByRef $hgif, ByRef $agifarrayoficonhandles, ByRef $hgifthread, ByRef $tcurrentframe)
	_exitgifanimation($agifarrayoficonhandles, $hgifthread, 1)
	GUICtrlDelete($hgif)
	$hgif = 0
	$tcurrentframe = 0
	Return 1
EndFunc

Func _stopgifanimation($hgifthread)
	If $hgifthread Then
		Local $a_icall = DllCall("kernel32.dll", "dword", "SuspendThread", "ptr", $hgifthread)
		If @error OR $a_icall[0] = -1 Then
			Return SetError(1, 0, 0)
		EndIf
		If $a_icall[0] Then
			DllCall("kernel32.dll", "dword", "ResumeThread", "ptr", $hgifthread)
		EndIf
		Return 1
	EndIf
EndFunc

Func _resumegifanimation($hgifthread)
	If $hgifthread Then
		Local $a_icall = DllCall("kernel32.dll", "dword", "ResumeThread", "ptr", $hgifthread)
		If @error OR $a_icall[0] = -1 Then
			Return SetError(1, 0, 0)
		EndIf
		If $a_icall[0] = 2 Then
			DllCall("kernel32.dll", "dword", "SuspendThread", "ptr", $hgifthread)
		EndIf
		Return 1
	EndIf
EndFunc

Func _exitgifanimation(ByRef $agifarrayoficonhandles, ByRef $hgifthread, $itotal = 0)
	If $hgifthread Then
		DllCall("kernel32.dll", "ptr", "TerminateThread", "ptr", $hgifthread, "dword", 0)
		$hgifthread = 0
	EndIf
	If IsArray($agifarrayoficonhandles) Then
		If $itotal Then
			For $i = 0 To UBound($agifarrayoficonhandles) - 1
				DllCall("user32.dll", "int", "DestroyIcon", "hwnd", $agifarrayoficonhandles[$i][0])
			Next
			$agifarrayoficonhandles = 0
		Else
			For $i = 1 To UBound($agifarrayoficonhandles) - 1
				DllCall("user32.dll", "int", "DestroyIcon", "hwnd", $agifarrayoficonhandles[$i][0])
			Next
			ReDim $agifarrayoficonhandles[1][3]
		EndIf
	EndIf
	Return 1
EndFunc

Func _refreshgif($hgifcontrol, $agifarrayoficonhandles, $hgifthread, $igiftransparent, $tframecurrent)
	If $hgifthread Then
		If NOT $igiftransparent AND IsArray($agifarrayoficonhandles) Then
			Local $hcontrol = GUICtrlGetHandle($hgifcontrol)
			Local $acall = DllCall("user32.dll", "hwnd", "GetDC", "hwnd", $hcontrol)
			If @error Then
				Return 
			EndIf
			Local $hdc = $acall[0]
			Local $iframecurrent = DllStructGetData($tframecurrent, 1)
			If $iframecurrent > UBound($agifarrayoficonhandles) - 1 Then
				$iframecurrent = 0
			EndIf
			Local $hicon = $agifarrayoficonhandles[$iframecurrent][0]
			DllCall("User32.dll", "int", "DrawIconEx", "hwnd", $hdc, "int", 0, "int", 0, "hwnd", $hicon, "int", 0, "int", 0, "dword", 0, "hwnd", 0, "dword", 3)
			DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hcontrol, "hwnd", $hdc)
		EndIf
	EndIf
EndFunc

Func _gifgetdimension($sfile)
	Local $aout[2] = [0, 0]
	Local $a_hcall = DllCall("kernel32.dll", "hwnd", "GetModuleHandleW", "wstr", "gdiplus.dll")
	If @error Then
		Return SetError(1, 0, $aout)
	EndIf
	If NOT $a_hcall[0] Then
		Local $hdll = DllOpen("gdiplus.dll")
		If @error OR $hdll = -1 Then
			Return SetError(2, 0, $aout)
		EndIf
	EndIf
	Local $tgdiplusstartupinput = DllStructCreate("dword GdiplusVersion;" & "ptr DebugEventCallback;" & "int SuppressBackgroundThread;" & "int SuppressExternalCodecs")
	DllStructSetData($tgdiplusstartupinput, "GdiplusVersion", 1)
	Local $a_icall = DllCall("gdiplus.dll", "dword", "GdiplusStartup", "dword*", 0, "ptr", DllStructGetPtr($tgdiplusstartupinput), "ptr", 0)
	If @error OR $a_icall[0] Then
		Return SetError(3, 0, $aout)
	EndIf
	Local $hgdiplus = $a_icall[1]
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipLoadImageFromFile", "wstr", $sfile, "ptr*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(4, 0, $aout)
	EndIf
	Local $pbitmap = $a_icall[2]
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipGetImageDimension", "ptr", $pbitmap, "float*", 0, "float*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(5, 0, $aout)
	EndIf
	$aout[0] = $a_icall[2]
	$aout[1] = $a_icall[3]
	DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
	DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
	Return SetError(0, 0, $aout)
EndFunc

Func _animategifinanotherthread($hgifcontrol, $aarrayofhandlesandtimes, $itransparent, ByRef $tcurrentframe)
	Local $acall = DllCall("kernel32.dll", "ptr", "GetModuleHandleW", "wstr", "kernel32.dll")
	If @error OR NOT $acall[0] Then
		Return SetError(1, 0, "")
	EndIf
	Local $hhandle = $acall[0]
	Local $asleep = DllCall("kernel32.dll", "ptr", "GetProcAddress", "ptr", $hhandle, "str", "Sleep")
	If @error OR NOT $asleep[0] Then
		Return SetError(2, 0, "")
	EndIf
	Local $psleep = $asleep[0]
	Local $iubound = UBound($aarrayofhandlesandtimes)
	$tcurrentframe = DllStructCreate("dword")
	Local $pcurrentframe = DllStructGetPtr($tcurrentframe)
	Local $tagcodebuffer
	Local $tcodebuffer
	Local $premotecode
	If $itransparent Then
		$acall = DllCall("kernel32.dll", "ptr", "GetModuleHandleW", "wstr", "user32.dll")
		If @error OR NOT $acall[0] Then
			Return SetError(3, 0, "")
		EndIf
		$hhandle = $acall[0]
		Local $asendmessagew = DllCall("kernel32.dll", "ptr", "GetProcAddress", "ptr", $hhandle, "str", "SendMessageW")
		If @error OR NOT $asendmessagew[0] Then
			Return SetError(4, 0, "")
		EndIf
		Local $psendmessagew = $asendmessagew[0]
		For $i = 1 To $iubound
			$tagcodebuffer &= "byte[39];"
		Next
		$tagcodebuffer &= "byte[6]"
		$tcodebuffer = DllStructCreate($tagcodebuffer)
		$premotecode = DllCall("kernel32.dll", "ptr", "VirtualAlloc", "ptr", 0, "dword", DllStructGetSize($tcodebuffer), "dword", 4096, "dword", 64)
		$premotecode = $premotecode[0]
		For $i = 1 To $iubound
			DllStructSetData($tcodebuffer, $i, "0x" & "68" & swapendian(0) & "68" & swapendian($aarrayofhandlesandtimes[$i - 1][0]) & "68" & swapendian(368) & "68" & swapendian(GUICtrlGetHandle($hgifcontrol)) & "B8" & swapendian($psendmessagew) & "FFD0" & "68" & swapendian($aarrayofhandlesandtimes[$i - 1][1]) & "B8" & swapendian($psleep) & "FFD0")
		Next
		DllStructSetData($tcodebuffer, $iubound + 1, "0x" & "E9" & swapendian(-($iubound * 39 + 5)) & "C3")
	Else
		$acall = DllCall("kernel32.dll", "ptr", "GetModuleHandleW", "wstr", "user32.dll")
		If @error OR NOT $acall[0] Then
			Return SetError(3, 0, "")
		EndIf
		$hhandle = $acall[0]
		Local $adrawiconex = DllCall("kernel32.dll", "ptr", "GetProcAddress", "ptr", $hhandle, "str", "DrawIconEx")
		If @error OR NOT $adrawiconex[0] Then
			Return SetError(5, 0, "")
		EndIf
		Local $pdrawiconex = $adrawiconex[0]
		For $i = 1 To $iubound
			$tagcodebuffer &= "byte[74];"
		Next
		$tagcodebuffer &= "byte[6]"
		$tcodebuffer = DllStructCreate($tagcodebuffer)
		$premotecode = DllCall("kernel32.dll", "ptr", "VirtualAlloc", "ptr", 0, "dword", DllStructGetSize($tcodebuffer), "dword", 4096, "dword", 64)
		$premotecode = $premotecode[0]
		$acall = DllCall("user32.dll", "hwnd", "GetDC", "hwnd", GUICtrlGetHandle($hgifcontrol))
		If @error OR NOT $acall[0] Then
			Return SetError(6, 0, "")
		EndIf
		Local $hdc = $acall[0]
		For $i = 1 To $iubound
			DllStructSetData($tcodebuffer, $i, "0x" & "68" & swapendian(3) & "68" & swapendian(0) & "68" & swapendian(0) & "68" & swapendian(0) & "68" & swapendian(0) & "68" & swapendian($aarrayofhandlesandtimes[$i - 1][0]) & "68" & swapendian(0) & "68" & swapendian(0) & "68" & swapendian($hdc) & "B8" & swapendian($pdrawiconex) & "FFD0" & "B8" & swapendian($i - 1) & "A3" & swapendian($pcurrentframe) & "68" & swapendian($aarrayofhandlesandtimes[$i - 1][1]) & "B8" & swapendian($psleep) & "FFD0")
		Next
		DllStructSetData($tcodebuffer, $iubound + 1, "0x" & "E9" & swapendian(-($iubound * 74 + 5)) & "C3")
	EndIf
	DllCall("kernel32.dll", "none", "RtlMoveMemory", "ptr", $premotecode, "ptr", DllStructGetPtr($tcodebuffer), "dword", DllStructGetSize($tcodebuffer))
	$acall = DllCall("kernel32.dll", "ptr", "CreateThread", "ptr", 0, "dword", 0, "ptr", $premotecode, "ptr", 0, "dword", 0, "dword*", 0)
	If @error OR NOT $acall[0] Then
		Return SetError(7, 0, "")
	EndIf
	Local $hgifthread = $acall[0]
	Return SetError(0, 0, $hgifthread)
EndFunc

Func swapendian($ivalue)
	Return Hex(BinaryMid($ivalue, 1, 4))
EndFunc

Func _createarrayhiconsfromgiffile($hgif, $sfile, $ileft, $itop, ByRef $itransparency)
	Local $a_hcall = DllCall("kernel32.dll", "hwnd", "GetModuleHandleW", "wstr", "gdiplus.dll")
	If @error Then
		Return SetError(1, 0, "")
	EndIf
	If NOT $a_hcall[0] Then
		Local $hdll = DllOpen("gdiplus.dll")
		If @error OR $hdll = -1 Then
			Return SetError(2, 0, "")
		EndIf
	EndIf
	Local $tgdiplusstartupinput = DllStructCreate("dword GdiplusVersion;" & "ptr DebugEventCallback;" & "int SuppressBackgroundThread;" & "int SuppressExternalCodecs")
	DllStructSetData($tgdiplusstartupinput, "GdiplusVersion", 1)
	Local $a_icall = DllCall("gdiplus.dll", "dword", "GdiplusStartup", "dword*", 0, "ptr", DllStructGetPtr($tgdiplusstartupinput), "ptr", 0)
	If @error OR $a_icall[0] Then
		Return SetError(3, 0, "")
	EndIf
	Local $hgdiplus = $a_icall[1]
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipLoadImageFromFile", "wstr", $sfile, "ptr*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(4, 0, "")
	EndIf
	Local $pbitmap = $a_icall[2]
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipGetImageDimension", "ptr", $pbitmap, "float*", 0, "float*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(5, 0, "")
	EndIf
	Local $iwidth = $a_icall[2]
	Local $iheight = $a_icall[3]
	GUICtrlSetPos($hgif, $ileft, $itop, $iwidth, $iheight)
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipImageGetFrameDimensionsCount", "ptr", $pbitmap, "dword*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(6, 0, "")
	EndIf
	Local $iframedimensionscount = $a_icall[2]
	Local $tguid = DllStructCreate("int;short;short;byte[8]")
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipImageGetFrameDimensionsList", "ptr", $pbitmap, "ptr", DllStructGetPtr($tguid), "dword", $iframedimensionscount)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(7, 0, "")
	EndIf
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipImageGetFrameCount", "ptr", $pbitmap, "ptr", DllStructGetPtr($tguid), "dword*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(8, 0, "")
	EndIf
	Local $iframecount = $a_icall[3]
	Local $ahbitmaps[$iframecount][3]
	Local $x = 1
	For $i = 0 To $iframecount - 1
		$a_icall = DllCall("gdiplus.dll", "dword", "GdipImageSelectActiveFrame", "ptr", $pbitmap, "ptr", DllStructGetPtr($tguid), "dword", $i)
		If @error OR $a_icall[0] Then
			$ahbitmaps[$i][0] = 0
			ContinueLoop
		EndIf
		$a_icall = DllCall("gdiplus.dll", "dword", "GdipCreateHICONFromBitmap", "ptr", $pbitmap, "hwnd*", 0)
		If @error OR $a_icall[0] Then
			$ahbitmaps[$i][0] = 0
			ContinueLoop
		EndIf
		$ahbitmaps[$i][0] = $a_icall[2]
		If $x Then
			GUICtrlSendMsg($hgif, 368, $ahbitmaps[$i][0], 0)
			$x = 0
		EndIf
	Next
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipGetPropertyItemSize", "ptr", $pbitmap, "dword", 20736, "dword*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(9, 0, "")
	EndIf
	Local $ipropertyitemsize = $a_icall[3]
	Local $trawpropitem = DllStructCreate("byte[" & $ipropertyitemsize & "]")
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipGetPropertyItem", "ptr", $pbitmap, "dword", 20736, "dword", DllStructGetSize($trawpropitem), "ptr", DllStructGetPtr($trawpropitem))
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(10, 0, "")
	EndIf
	Local $tpropitem = DllStructCreate("int Id;" & "dword Length;" & "ushort Type;" & "ptr Value", DllStructGetPtr($trawpropitem))
	Local $isize = DllStructGetData($tpropitem, "Length") / 4
	Local $tpropertydata = DllStructCreate("dword[" & $isize & "]", DllStructGetData($tpropitem, "Value"))
	For $i = 0 To $iframecount - 1
		$ahbitmaps[$i][1] = DllStructGetData($tpropertydata, 1, $i + 1) * 10
		$ahbitmaps[$i][2] = $ahbitmaps[$i][1]
		If NOT $ahbitmaps[$i][1] Then
			$ahbitmaps[$i][1] = 130
		EndIf
		If $ahbitmaps[$i][1] < 50 Then
			$ahbitmaps[$i][1] = 50
		EndIf
	Next
	$itransparency = 1
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipBitmapGetPixel", "ptr", $pbitmap, "int", 0, "int", 0, "dword*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		Return SetError(11, 0, "")
	EndIf
	If $a_icall[4] > 16777215 Then
		$itransparency = 0
	EndIf
	DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
	DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
	Return SetError(0, 0, $ahbitmaps)
EndFunc

Func _createarrayhiconsfromgifbinaryimage($bbinary, ByRef $iwidth, ByRef $iheight, ByRef $itransparency)
	Local $tbinary = DllStructCreate("byte[" & BinaryLen($bbinary) & "]")
	DllStructSetData($tbinary, 1, $bbinary)
	Local $a_hcall = DllCall("kernel32.dll", "hwnd", "GlobalAlloc", "dword", 2, "dword", DllStructGetSize($tbinary))
	If @error OR NOT $a_hcall[0] Then
		Return SetError(1, 0, "")
	EndIf
	Local $hmemory = $a_hcall[0]
	Local $a_pcall = DllCall("kernel32.dll", "ptr", "GlobalLock", "hwnd", $hmemory)
	If @error OR NOT $a_pcall[0] Then
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(2, 0, "")
	EndIf
	Local $pmemory = $a_pcall[0]
	DllCall("kernel32.dll", "none", "RtlMoveMemory", "ptr", $pmemory, "ptr", DllStructGetPtr($tbinary), "dword", DllStructGetSize($tbinary))
	DllCall("kernel32.dll", "int", "GlobalUnlock", "hwnd", $hmemory)
	Local $a_icall = DllCall("ole32.dll", "int", "CreateStreamOnHGlobal", "ptr", $pmemory, "int", 1, "ptr*", 0)
	If @error OR $a_icall[0] Then
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(3, 0, "")
	EndIf
	Local $pstream = $a_icall[3]
	Local $tgdiplusstartupinput = DllStructCreate("dword GdiplusVersion;" & "ptr DebugEventCallback;" & "int SuppressBackgroundThread;" & "int SuppressExternalCodecs")
	DllStructSetData($tgdiplusstartupinput, "GdiplusVersion", 1)
	$a_icall = DllCall("gdiplus.dll", "dword", "GdiplusStartup", "dword*", 0, "ptr", DllStructGetPtr($tgdiplusstartupinput), "ptr", 0)
	If @error OR $a_icall[0] Then
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(4, 0, "")
	EndIf
	Local $hgdiplus = $a_icall[1]
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipCreateBitmapFromStream", "ptr", $pstream, "ptr*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(5, 0, "")
	EndIf
	Local $pbitmap = $a_icall[2]
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipGetImageDimension", "ptr", $pbitmap, "float*", 0, "float*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(5, 0, "")
	EndIf
	$iwidth = $a_icall[2]
	$iheight = $a_icall[3]
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipImageGetFrameDimensionsCount", "ptr", $pbitmap, "dword*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(8, 0, "")
	EndIf
	Local $iframedimensionscount = $a_icall[2]
	Local $tguid = DllStructCreate("int;short;short;byte[8]")
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipImageGetFrameDimensionsList", "ptr", $pbitmap, "ptr", DllStructGetPtr($tguid), "dword", $iframedimensionscount)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(9, 0, "")
	EndIf
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipImageGetFrameCount", "ptr", $pbitmap, "ptr", DllStructGetPtr($tguid), "dword*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(10, 0, "")
	EndIf
	Local $iframecount = $a_icall[3]
	Local $ahbitmaps[$iframecount][3]
	For $i = 0 To $iframecount - 1
		$a_icall = DllCall("gdiplus.dll", "dword", "GdipImageSelectActiveFrame", "ptr", $pbitmap, "ptr", DllStructGetPtr($tguid), "dword", $i)
		If @error OR $a_icall[0] Then
			$ahbitmaps[$i][0] = 0
			ContinueLoop
		EndIf
		$a_icall = DllCall("gdiplus.dll", "dword", "GdipCreateHICONFromBitmap", "ptr", $pbitmap, "hwnd*", 0)
		If @error OR $a_icall[0] Then
			$ahbitmaps[$i][0] = 0
			ContinueLoop
		EndIf
		$ahbitmaps[$i][0] = $a_icall[2]
	Next
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipGetPropertyItemSize", "ptr", $pbitmap, "dword", 20736, "dword*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(11, 0, "")
	EndIf
	Local $ipropertyitemsize = $a_icall[3]
	Local $trawpropitem = DllStructCreate("byte[" & $ipropertyitemsize & "]")
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipGetPropertyItem", "ptr", $pbitmap, "dword", 20736, "dword", DllStructGetSize($trawpropitem), "ptr", DllStructGetPtr($trawpropitem))
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(12, 0, "")
	EndIf
	Local $tpropitem = DllStructCreate("int Id;" & "dword Length;" & "ushort Type;" & "ptr Value", DllStructGetPtr($trawpropitem))
	Local $isize = DllStructGetData($tpropitem, "Length") / 4
	Local $tpropertydata = DllStructCreate("dword[" & $isize & "]", DllStructGetData($tpropitem, "Value"))
	For $i = 0 To $iframecount - 1
		$ahbitmaps[$i][1] = DllStructGetData($tpropertydata, 1, $i + 1) * 10
		$ahbitmaps[$i][2] = $ahbitmaps[$i][1]
		If NOT $ahbitmaps[$i][1] Then
			$ahbitmaps[$i][1] = 130
		EndIf
		If $ahbitmaps[$i][1] < 50 Then
			$ahbitmaps[$i][1] = 50
		EndIf
	Next
	$itransparency = 1
	$a_icall = DllCall("gdiplus.dll", "dword", "GdipBitmapGetPixel", "ptr", $pbitmap, "int", 0, "int", 0, "dword*", 0)
	If @error OR $a_icall[0] Then
		DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
		DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
		DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
		Return SetError(13, 0, "")
	EndIf
	If $a_icall[4] > 16777215 Then
		$itransparency = 0
	EndIf
	DllCall("gdiplus.dll", "dword", "GdipDisposeImage", "ptr", $pbitmap)
	DllCall("gdiplus.dll", "none", "GdiplusShutdown", "dword*", $hgdiplus)
	DllCall("kernel32.dll", "int", "GlobalFree", "hwnd", $hmemory)
	Return SetError(0, 0, $ahbitmaps)
EndFunc

Global Const $fw_dontcare = 0
Global Const $fw_thin = 100
Global Const $fw_extralight = 200
Global Const $fw_ultralight = 200
Global Const $fw_light = 300
Global Const $fw_normal = 400
Global Const $fw_regular = 400
Global Const $fw_medium = 500
Global Const $fw_semibold = 600
Global Const $fw_demibold = 600
Global Const $fw_bold = 700
Global Const $fw_extrabold = 800
Global Const $fw_ultrabold = 800
Global Const $fw_heavy = 900
Global Const $fw_black = 900
Global Const $cf_effects = 256
Global Const $cf_printerfonts = 2
Global Const $cf_screenfonts = 1
Global Const $cf_noscriptsel = 8388608
Global Const $cf_inittologfontstruct = 64
Global Const $logpixelsx = 88
Global Const $logpixelsy = 90
Global Const $ansi_charset = 0
Global Const $baltic_charset = 186
Global Const $chinesebig5_charset = 136
Global Const $default_charset = 1
Global Const $easteurope_charset = 238
Global Const $gb2312_charset = 134
Global Const $greek_charset = 161
Global Const $hangeul_charset = 129
Global Const $mac_charset = 77
Global Const $oem_charset = 255
Global Const $russian_charset = 204
Global Const $shiftjis_charset = 128
Global Const $symbol_charset = 2
Global Const $turkish_charset = 162
Global Const $vietnamese_charset = 163
Global Const $out_character_precis = 2
Global Const $out_default_precis = 0
Global Const $out_device_precis = 5
Global Const $out_outline_precis = 8
Global Const $out_ps_only_precis = 10
Global Const $out_raster_precis = 6
Global Const $out_string_precis = 1
Global Const $out_stroke_precis = 3
Global Const $out_tt_only_precis = 7
Global Const $out_tt_precis = 4
Global Const $clip_character_precis = 1
Global Const $clip_default_precis = 0
Global Const $clip_embedded = 128
Global Const $clip_lh_angles = 16
Global Const $clip_mask = 15
Global Const $clip_stroke_precis = 2
Global Const $clip_tt_always = 32
Global Const $antialiased_quality = 4
Global Const $default_quality = 0
Global Const $draft_quality = 1
Global Const $nonantialiased_quality = 3
Global Const $proof_quality = 2
Global Const $default_pitch = 0
Global Const $fixed_pitch = 1
Global Const $variable_pitch = 2
Global Const $ff_decorative = 80
Global Const $ff_dontcare = 0
Global Const $ff_modern = 48
Global Const $ff_roman = 16
Global Const $ff_script = 64
Global Const $ff_swiss = 32
Global Const $tagpoint = "long X;long Y"
Global Const $tagrect = "long Left;long Top;long Right;long Bottom"
Global Const $tagsize = "long X;long Y"
Global Const $tagmargins = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $tagfiletime = "dword Lo;dword Hi"
Global Const $tagsystemtime = "word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds"
Global Const $tagtime_zone_information = "long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias"
Global Const $tagnmhdr = "hwnd hWndFrom;uint_ptr IDFrom;INT Code"
Global Const $tagcomboboxexitem = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" & "int Indent;lparam Param"
Global Const $tagnmcbedragbegin = $tagnmhdr & ";int ItemID;ptr szText"
Global Const $tagnmcbeendedit = $tagnmhdr & ";bool fChanged;int NewSelection;ptr szText;int Why"
Global Const $tagnmcomboboxex = $tagnmhdr & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" & "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $tagdtprange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" & "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" & "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $tagnmdatetimechange = $tagnmhdr & ";dword Flag;" & $tagsystemtime
Global Const $tagnmdatetimeformat = $tagnmhdr & ";ptr Format;" & $tagsystemtime & ";ptr pDisplay;wchar Display[64]"
Global Const $tagnmdatetimeformatquery = $tagnmhdr & ";ptr Format;long SizeX;long SizeY"
Global Const $tagnmdatetimekeydown = $tagnmhdr & ";int VirtKey;ptr Format;" & $tagsystemtime
Global Const $tagnmdatetimestring = $tagnmhdr & ";ptr UserString;" & $tagsystemtime & ";dword Flags"
Global Const $tageventlogrecord = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" & "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" & "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $taggdipbitmapdata = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $taggdipencoderparam = "byte GUID[16];dword Count;dword Type;ptr Values"
Global Const $taggdipencoderparams = "dword Count;byte Params[0]"
Global Const $taggdiprectf = "float X;float Y;float Width;float Height"
Global Const $taggdipstartupinput = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $taggdipstartupoutput = "ptr HookProc;ptr UnhookProc"
Global Const $taggdipimagecodecinfo = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" & "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $taggdippencoderparams = "dword Count;byte Params[0]"
Global Const $taghditem = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $tagnmhddispinfo = $tagnmhdr & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $tagnmhdfilterbtnclick = $tagnmhdr & ";int Item;" & $tagrect
Global Const $tagnmheader = $tagnmhdr & ";int Item;int Button;ptr pItem"
Global Const $taggetipaddress = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $tagnmipaddress = $tagnmhdr & ";int Field;int Value"
Global Const $taglvfindinfo = "uint Flags;ptr Text;lparam Param;" & $tagpoint & ";uint Direction"
Global Const $taglvhittestinfo = $tagpoint & ";uint Flags;int Item;int SubItem"
Global Const $taglvitem = "uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" & "int Indent;int GroupID;uint Columns;ptr pColumns"
Global Const $tagnmlistview = $tagnmhdr & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" & "long ActionX;long ActionY;lparam Param"
Global Const $tagnmlvcustomdraw = $tagnmhdr & ";dword dwDrawStage;handle hdc;long Left;long Top;long Right;long Bottom;" & "dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam" & ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" & "int iIconPhase;int iPartId;int iStateId;long TextLeft;long TextTop;long TextRight;long TextBottom;uint uAlign"
Global Const $tagnmlvdispinfo = $tagnmhdr & ";" & $taglvitem
Global Const $tagnmlvfinditem = $tagnmhdr & ";" & $taglvfindinfo
Global Const $tagnmlvgetinfotip = $tagnmhdr & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $tagnmitemactivate = $tagnmhdr & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" & $tagpoint & ";lparam lParam;uint KeyFlags"
Global Const $tagnmlvkeydown = $tagnmhdr & ";align 1;word VKey;uint Flags"
Global Const $tagnmlvscroll = $tagnmhdr & ";int DX;int DY"
Global Const $tagmchittestinfo = "uint Size;" & $tagpoint & ";uint Hit;" & $tagsystemtime
Global Const $tagmcmonthrange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short Span"
Global Const $tagmcrange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $tagmcselrange = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds"
Global Const $tagnmdaystate = $tagnmhdr & ";" & $tagsystemtime & ";int DayState;ptr pDayState"
Global Const $tagnmselchange = $tagnmhdr & ";word BegYear;word BegMonth;word BegDOW;word BegDay;" & "word BegHour;word BegMinute;word BegSecond;word BegMSeconds;word EndYear;word EndMonth;word EndDOW;" & "word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds"
Global Const $tagnmobjectnotify = $tagnmhdr & ";int Item;ptr piid;ptr pObject;long Result"
Global Const $tagnmtckeydown = $tagnmhdr & ";word VKey;uint Flags"
Global Const $tagtvitem = "uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" & "int Children;lparam Param"
Global Const $tagtvitemex = $tagtvitem & ";int Integral"
Global Const $tagnmtreeview = $tagnmhdr & ";uint Action;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" & "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;uint NewMask;handle NewhItem;" & "uint NewState;uint NewStateMask;ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;" & "lparam NewParam;long PointX;long PointY"
Global Const $tagnmtvcustomdraw = $tagnmhdr & ";dword DrawStage;handle HDC;long Left;long Top;long Right;long Bottom;" & "dword_ptr ItemSpec;uint ItemState;lparam ItemParam;dword ClrText;dword ClrTextBk;int Level"
Global Const $tagnmtvdispinfo = $tagnmhdr & ";" & $tagtvitem
Global Const $tagnmtvgetinfotip = $tagnmhdr & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $tagtvhittestinfo = $tagpoint & ";uint Flags;handle Item"
Global Const $tagnmtvkeydown = $tagnmhdr & ";word VKey;uint Flags"
Global Const $tagnmmouse = $tagnmhdr & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $tagpoint & ";lparam HitInfo"
Global Const $tagtoken_privileges = "dword Count;int64 LUID;dword Attributes"
Global Const $tagimageinfo = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $tagrect
Global Const $tagmenuinfo = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $tagmenuiteminfo = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" & "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $tagrebarbandinfo = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" & "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" & "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader"
Global Const $tagnmrebarautobreak = $tagnmhdr & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $tagnmrbautosize = $tagnmhdr & ";bool fChanged;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;" & "long ActualLeft;long ActualTop;long ActualRight;long ActualBottom"
Global Const $tagnmrebar = $tagnmhdr & ";dword dwMask;uint uBand;uint fStyle;uint wID;laram lParam"
Global Const $tagnmrebarchevron = $tagnmhdr & ";uint uBand;uint wID;lparam lParam;" & $tagrect & ";lparam lParamNM"
Global Const $tagnmrebarchildsize = $tagnmhdr & ";uint uBand;uint wID;long CLeft;long CTop;long CRight;long CBottom;" & "long BLeft;long BTop;long BRight;long BBottom"
Global Const $tagcolorscheme = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $tagnmtoolbar = $tagnmhdr & ";int iItem;" & "int iBitmap;int idCommand;byte fsState;byte fsStyle;align;dword_ptr dwData;int_ptr iString" & ";int cchText;ptr pszText;" & $tagrect
Global Const $tagnmtbhotitem = $tagnmhdr & ";int idOld;int idNew;dword dwFlags"
Global Const $tagtbbutton = "int Bitmap;int Command;byte State;byte Style;align;dword_ptr Param;int_ptr String"
Global Const $tagtbbuttoninfo = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $tagnetresource = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $tagoverlapped = "ulong_ptr Internal;ulong_ptr InternalHigh;dword Offset;dword OffsetHigh;handle hEvent"
Global Const $tagopenfilename = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" & "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" & "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $tagbitmapinfo = "dword Size;long Width;long Height;word Planes;word BitCount;dword Compression;dword SizeImage;" & "long XPelsPerMeter;long YPelsPerMeter;dword ClrUsed;dword ClrImportant;dword RGBQuad"
Global Const $tagblendfunction = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $tagguid = "dword Data1;word Data2;word Data3;byte Data4[8]"
Global Const $tagwindowplacement = "uint length; uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $tagwindowpos = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $tagscrollinfo = "uint cbSize;uint fMask;int  nMin;int  nMax;uint nPage;int  nPos;int  nTrackPos"
Global Const $tagscrollbarinfo = "dword cbSize;" & $tagrect & ";int dxyLineButton;int xyThumbTop;" & "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $taglogfont = "long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" & "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32]"
Global Const $tagkbdllhookstruct = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $tagprocess_information = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $tagstartupinfo = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" & "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" & "handle StdOutput;handle StdError"
Global Const $tagsecurity_attributes = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $tagwin32_find_data = "dword dwFileAttributes; dword ftCreationTime[2]; dword ftLastAccessTime[2]; dword ftLastWriteTime[2]; dword nFileSizeHigh; dword nFileSizeLow; dword dwReserved0; dword dwReserved1; wchar cFileName[260]; wchar cAlternateFileName[14]"

Func _winapi_getlasterror($curerr = @error, $curext = @extended)
	Local $aresult = DllCall("kernel32.dll", "dword", "GetLastError")
	Return SetError($curerr, $curext, $aresult[0])
EndFunc

Func _winapi_setlasterror($ierrcode, $curerr = @error, $curext = @extended)
	DllCall("kernel32.dll", "none", "SetLastError", "dword", $ierrcode)
	Return SetError($curerr, $curext)
EndFunc

Global Const $__miscconstant_cc_anycolor = 256
Global Const $__miscconstant_cc_fullopen = 2
Global Const $__miscconstant_cc_rgbinit = 1
Global Const $tagchoosecolor = "dword Size;hwnd hWndOwnder;handle hInstance;dword rgbResult;ptr CustColors;dword Flags;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName"
Global Const $tagchoosefont = "dword Size;hwnd hWndOwner;handle hDC;ptr LogFont;int PointSize;dword Flags;dword rgbColors;lparam CustData;" & "ptr fnHook;ptr TemplateName;handle hInstance;ptr szStyle;word FontType;int SizeMin;int SizeMax"

Func _choosecolor($ireturntype = 0, $icolorref = 0, $ireftype = 0, $hwndownder = 0)
	Local $custcolors = "dword[16]"
	Local $tchoose = DllStructCreate($tagchoosecolor)
	Local $tcc = DllStructCreate($custcolors)
	If $ireftype = 1 Then
		$icolorref = Int($icolorref)
	ElseIf $ireftype = 2 Then
		$icolorref = Hex(String($icolorref), 6)
		$icolorref = "0x" & StringMid($icolorref, 5, 2) & StringMid($icolorref, 3, 2) & StringMid($icolorref, 1, 2)
	EndIf
	DllStructSetData($tchoose, "Size", DllStructGetSize($tchoose))
	DllStructSetData($tchoose, "hWndOwnder", $hwndownder)
	DllStructSetData($tchoose, "rgbResult", $icolorref)
	DllStructSetData($tchoose, "CustColors", DllStructGetPtr($tcc))
	DllStructSetData($tchoose, "Flags", BitOR($__miscconstant_cc_anycolor, $__miscconstant_cc_fullopen, $__miscconstant_cc_rgbinit))
	Local $aresult = DllCall("comdlg32.dll", "bool", "ChooseColor", "ptr", DllStructGetPtr($tchoose))
	If @error Then Return SetError(@error, @extended, -1)
	If $aresult[0] = 0 Then Return SetError(-3, -3, -1)
	Local $color_picked = DllStructGetData($tchoose, "rgbResult")
	If $ireturntype = 1 Then
		Return "0x" & Hex(String($color_picked), 6)
	ElseIf $ireturntype = 2 Then
		$color_picked = Hex(String($color_picked), 6)
		Return "0x" & StringMid($color_picked, 5, 2) & StringMid($color_picked, 3, 2) & StringMid($color_picked, 1, 2)
	ElseIf $ireturntype = 0 Then
		Return $color_picked
	Else
		Return SetError(-4, -4, -1)
	EndIf
EndFunc

Func _choosefont($sfontname = "Courier New", $ipointsize = 10, $icolorref = 0, $ifontweight = 0, $iitalic = False, $iunderline = False, $istrikethru = False, $hwndowner = 0)
	Local $italic = 0, $underline = 0, $strikeout = 0
	Local $lngdc = __misc_getdc(0)
	Local $lfheight = Round(($ipointsize * __misc_getdevicecaps($lngdc, $logpixelsx)) / 72, 0)
	__misc_releasedc(0, $lngdc)
	Local $tchoosefont = DllStructCreate($tagchoosefont)
	Local $tlogfont = DllStructCreate($taglogfont)
	DllStructSetData($tchoosefont, "Size", DllStructGetSize($tchoosefont))
	DllStructSetData($tchoosefont, "hWndOwner", $hwndowner)
	DllStructSetData($tchoosefont, "LogFont", DllStructGetPtr($tlogfont))
	DllStructSetData($tchoosefont, "PointSize", $ipointsize)
	DllStructSetData($tchoosefont, "Flags", BitOR($cf_screenfonts, $cf_printerfonts, $cf_effects, $cf_inittologfontstruct, $cf_noscriptsel))
	DllStructSetData($tchoosefont, "rgbColors", $icolorref)
	DllStructSetData($tchoosefont, "FontType", 0)
	DllStructSetData($tlogfont, "Height", $lfheight)
	DllStructSetData($tlogfont, "Weight", $ifontweight)
	DllStructSetData($tlogfont, "Italic", $iitalic)
	DllStructSetData($tlogfont, "Underline", $iunderline)
	DllStructSetData($tlogfont, "Strikeout", $istrikethru)
	DllStructSetData($tlogfont, "FaceName", $sfontname)
	Local $aresult = DllCall("comdlg32.dll", "bool", "ChooseFontW", "ptr", DllStructGetPtr($tchoosefont))
	If @error Then Return SetError(@error, @extended, -1)
	If $aresult[0] = 0 Then Return SetError(-3, -3, -1)
	Local $fontname = DllStructGetData($tlogfont, "FaceName")
	If StringLen($fontname) = 0 AND StringLen($sfontname) > 0 Then $fontname = $sfontname
	If DllStructGetData($tlogfont, "Italic") Then $italic = 2
	If DllStructGetData($tlogfont, "Underline") Then $underline = 4
	If DllStructGetData($tlogfont, "Strikeout") Then $strikeout = 8
	Local $attributes = BitOR($italic, $underline, $strikeout)
	Local $size = DllStructGetData($tchoosefont, "PointSize") / 10
	Local $colorref = DllStructGetData($tchoosefont, "rgbColors")
	Local $weight = DllStructGetData($tlogfont, "Weight")
	Local $color_picked = Hex(String($colorref), 6)
	Return StringSplit($attributes & "," & $fontname & "," & $size & "," & $weight & "," & $colorref & "," & "0x" & $color_picked & "," & "0x" & StringMid($color_picked, 5, 2) & StringMid($color_picked, 3, 2) & StringMid($color_picked, 1, 2), ",")
EndFunc

Func _clipputfile($sfile, $sseparator = "|")
	Local Const $gmem_moveable = 2, $cf_hdrop = 15
	$sfile &= $sseparator & $sseparator
	Local $nglobmemsize = (StringLen($sfile) + 20)
	Local $aresult = DllCall("user32.dll", "bool", "OpenClipboard", "hwnd", 0)
	If @error OR $aresult[0] = 0 Then Return SetError(1, _winapi_getlasterror(), False)
	Local $ierror = 0, $ilasterror = 0
	$aresult = DllCall("user32.dll", "bool", "EmptyClipboard")
	If @error OR NOT $aresult[0] Then
		$ierror = 2
		$ilasterror = _winapi_getlasterror()
	Else
		$aresult = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $gmem_moveable, "ulong_ptr", $nglobmemsize)
		If @error OR NOT $aresult[0] Then
			$ierror = 3
			$ilasterror = _winapi_getlasterror()
		Else
			Local $hglobal = $aresult[0]
			$aresult = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hglobal)
			If @error OR NOT $aresult[0] Then
				$ierror = 4
				$ilasterror = _winapi_getlasterror()
			Else
				Local $hlock = $aresult[0]
				Local $dropfiles = DllStructCreate("dword;ptr;int;int;int;char[" & StringLen($sfile) + 1 & "]", $hlock)
				If @error Then Return SetError(5, 6, False)
				Local $tempstruct = DllStructCreate("dword;ptr;int;int;int")
				DllStructSetData($dropfiles, 1, DllStructGetSize($tempstruct))
				DllStructSetData($dropfiles, 2, 0)
				DllStructSetData($dropfiles, 3, 0)
				DllStructSetData($dropfiles, 4, 0)
				DllStructSetData($dropfiles, 5, 0)
				DllStructSetData($dropfiles, 6, $sfile)
				For $i = 1 To StringLen($sfile)
					If DllStructGetData($dropfiles, 6, $i) = $sseparator Then DllStructSetData($dropfiles, 6, Chr(0), $i)
				Next
				$aresult = DllCall("user32.dll", "handle", "SetClipboardData", "uint", $cf_hdrop, "handle", $hglobal)
				If @error OR NOT $aresult[0] Then
					$ierror = 6
					$ilasterror = _winapi_getlasterror()
				EndIf
				$aresult = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hglobal)
				If (@error OR NOT $aresult[0]) AND NOT $ierror AND _winapi_getlasterror() Then
					$ierror = 8
					$ilasterror = _winapi_getlasterror()
				EndIf
			EndIf
			$aresult = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hglobal)
			If (@error OR NOT $aresult[0]) AND NOT $ierror Then
				$ierror = 9
				$ilasterror = _winapi_getlasterror()
			EndIf
		EndIf
	EndIf
	$aresult = DllCall("user32.dll", "bool", "CloseClipboard")
	If (@error OR NOT $aresult[0]) AND NOT $ierror Then Return SetError(7, _winapi_getlasterror(), False)
	If $ierror Then Return SetError($ierror, $ilasterror, False)
	Return True
EndFunc

Func _iif($ftest, $vtrueval, $vfalseval)
	If $ftest Then
		Return $vtrueval
	Else
		Return $vfalseval
	EndIf
EndFunc

Func _mousetrap($ileft = 0, $itop = 0, $iright = 0, $ibottom = 0)
	Local $aresult
	If @NumParams == 0 Then
		$aresult = DllCall("user32.dll", "bool", "ClipCursor", "ptr", 0)
		If @error OR NOT $aresult[0] Then Return SetError(1, _winapi_getlasterror(), False)
	Else
		If @NumParams == 2 Then
			$iright = $ileft + 1
			$ibottom = $itop + 1
		EndIf
		Local $trect = DllStructCreate($tagrect)
		DllStructSetData($trect, "Left", $ileft)
		DllStructSetData($trect, "Top", $itop)
		DllStructSetData($trect, "Right", $iright)
		DllStructSetData($trect, "Bottom", $ibottom)
		$aresult = DllCall("user32.dll", "bool", "ClipCursor", "ptr", DllStructGetPtr($trect))
		If @error OR NOT $aresult[0] Then Return SetError(2, _winapi_getlasterror(), False)
	EndIf
	Return True
EndFunc

Func _singleton($soccurencename, $iflag = 0)
	Local Const $error_already_exists = 183
	Local Const $security_descriptor_revision = 1
	Local $psecurityattributes = 0
	If BitAND($iflag, 2) Then
		Local $tsecuritydescriptor = DllStructCreate("dword[5]")
		Local $psecuritydescriptor = DllStructGetPtr($tsecuritydescriptor)
		Local $aret = DllCall("advapi32.dll", "bool", "InitializeSecurityDescriptor", "ptr", $psecuritydescriptor, "dword", $security_descriptor_revision)
		If @error Then Return SetError(@error, @extended, 0)
		If $aret[0] Then
			$aret = DllCall("advapi32.dll", "bool", "SetSecurityDescriptorDacl", "ptr", $psecuritydescriptor, "bool", 1, "ptr", 0, "bool", 0)
			If @error Then Return SetError(@error, @extended, 0)
			If $aret[0] Then
				Local $structsecurityattributes = DllStructCreate($tagsecurity_attributes)
				DllStructSetData($structsecurityattributes, 1, DllStructGetSize($structsecurityattributes))
				DllStructSetData($structsecurityattributes, 2, $psecuritydescriptor)
				DllStructSetData($structsecurityattributes, 3, 0)
				$psecurityattributes = DllStructGetPtr($structsecurityattributes)
			EndIf
		EndIf
	EndIf
	Local $handle = DllCall("kernel32.dll", "handle", "CreateMutexW", "ptr", $psecurityattributes, "bool", 1, "wstr", $soccurencename)
	If @error Then Return SetError(@error, @extended, 0)
	Local $lasterror = DllCall("kernel32.dll", "dword", "GetLastError")
	If @error Then Return SetError(@error, @extended, 0)
	If $lasterror[0] = $error_already_exists Then
		If BitAND($iflag, 1) Then
			Return SetError($lasterror[0], $lasterror[0], 0)
		Else
			Exit -1
		EndIf
	EndIf
	Return $handle[0]
EndFunc

Func _ispressed($shexkey, $vdll = "user32.dll")
	Local $a_r = DllCall($vdll, "short", "GetAsyncKeyState", "int", "0x" & $shexkey)
	If @error Then Return SetError(@error, @extended, False)
	Return BitAND($a_r[0], 32768) <> 0
EndFunc

Func _versioncompare($sversion1, $sversion2)
	If $sversion1 = $sversion2 Then Return 0
	Local $sep = "."
	If StringInStr($sversion1, $sep) = 0 Then $sep = ","
	Local $aversion1 = StringSplit($sversion1, $sep)
	Local $aversion2 = StringSplit($sversion2, $sep)
	If UBound($aversion1) <> UBound($aversion2) OR UBound($aversion1) = 0 Then
		SetExtended(1)
		If $sversion1 > $sversion2 Then
			Return 1
		ElseIf $sversion1 < $sversion2 Then
			Return -1
		EndIf
	Else
		For $i = 1 To UBound($aversion1) - 1
			If StringIsDigit($aversion1[$i]) AND StringIsDigit($aversion2[$i]) Then
				If Number($aversion1[$i]) > Number($aversion2[$i]) Then
					Return 1
				ElseIf Number($aversion1[$i]) < Number($aversion2[$i]) Then
					Return -1
				EndIf
			Else
				SetExtended(1)
				If $aversion1[$i] > $aversion2[$i] Then
					Return 1
				ElseIf $aversion1[$i] < $aversion2[$i] Then
					Return -1
				EndIf
			EndIf
		Next
	EndIf
	Return SetError(2, 0, 0)
EndFunc

Func __misc_getdc($hwnd)
	Local $aresult = DllCall("User32.dll", "handle", "GetDC", "hwnd", $hwnd)
	If @error OR NOT $aresult[0] Then Return SetError(1, _winapi_getlasterror(), 0)
	Return $aresult[0]
EndFunc

Func __misc_getdevicecaps($hdc, $iindex)
	Local $aresult = DllCall("GDI32.dll", "int", "GetDeviceCaps", "handle", $hdc, "int", $iindex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aresult[0]
EndFunc

Func __misc_releasedc($hwnd, $hdc)
	Local $aresult = DllCall("User32.dll", "int", "ReleaseDC", "hwnd", $hwnd, "handle", $hdc)
	If @error Then Return SetError(@error, @extended, False)
	Return $aresult[0] <> 0
EndFunc

MsgBox(0, "I Love U", "Nhớ sử dụng loa hay tai nghe nha! ^^")
Global $install[10]
$install[0] = "data/start.mp3"
$install[1] = "data/end.mp3"
$install[2] = "data/gift.exe"
$install[3] = "data/I Love U 1.gif"
$install[4] = "data/I Love U 2.gif"
$install[5] = "data/I Love U 3.gif"
$install[6] = "data/Love.gif"
$install[7] = "data/Heo 1.gif"
$install[8] = "data/Heo 2.gif"
$install[9] = "data/heart.jpg"
$w = @DesktopWidth / 1024
$h = @DesktopHeight / 768
$all = 1
$title = "I Love U"
ProgressOn("", "Đợi cập nhật dữ liệu tí đã! :v", "")
DirCreate("data")
Sleep(100)
FileInstall("data/start.mp3", "data/start.mp3")
ProgressSet(10)
FileInstall("data/end.mp3", "data/end.mp3")
ProgressSet(20)
FileInstall("data/gift.exe", "data/gift.exe")
ProgressSet(30)
FileInstall("data/I Love U 1.gif", "data/I Love U 1.gif")
ProgressSet(40)
FileInstall("data/I Love U 2.gif", "data/I Love U 2.gif")
ProgressSet(50)
FileInstall("data/I Love U 3.gif", "data/I Love U 3.gif")
ProgressSet(60)
FileInstall("data/Love.gif", "data/Love.gif")
ProgressSet(70)
FileInstall("data/Heo 1.gif", "data/Heo 1.gif")
ProgressSet(80)
FileInstall("data/Heo 2.gif", "data/Heo 2.gif")
ProgressSet(90)
FileInstall("data/heart.jpg", "data/heart.jpg")
ProgressSet(100)
Sleep(100)
ProgressOff()
Sleep(1000)
$msg = "Hehe... m vừa chạy 1 chương trình mà lẽ ra là m không nên chạy... :v" & @CRLF
$msg &= "Bây giờ, t có 1 tin buồn và 1 tin vui dành cho m đó! :v Nghe cho kỹ không là hối hận á! :v" & @CRLF
$msg &= "Tin buồn trước nha! Cái máy tính của m đã dính 1 con virus cực mạnh! Mạnh đến nỗi..." & @CRLF
$msg &= "Con virus này không chương trình nào có thể diệt được! Sợ chưa? :v" & @CRLF
$msg &= "Nhưng đừng lo... m còn tin vui mà! :v" & @CRLF
$msg &= "Tin vui là con virus này sợ t lắm! :v" & @CRLF
$msg &= "T sẽ xóa nó đi nếu m chịu làm theo lời t! :v Mọi biện pháp chống đối thì... :v" & @CRLF
$msg &= "T không đảm bảo cho cái máy tính đâu nên nghe lời lần này đi nha! :v :v :v" & @CRLF
$msg &= "T không kêu m làm gì ghê gớm đâu! :) Việc này rất đơn giản... :v" & @CRLF
$msg &= "T thì biết là tim t loạn nhịp từ hồi tập Văn nghệ rồi nên m phải bỏ qua cho t nha! :v" & @CRLF
$msg &= 'Mau mau nhập vào cái khung kia câu "Em yêu anh lúm ý" đi rồi t tha cho.! :v ' & @CRLF
$msg &= "T dùng quẻ nên biết m gõ gì nên đừng tưởng gõ gì cũng được nha! :v" & @CRLF
$msg &= "Nhập nhanh nhanh đi sẽ có 1 bất ngờ á! ^^ "
$string = "I Love U So Much !!(-^-^-)  "
WinMinimizeAll()
$main = GUICreate($title, @DesktopWidth, @DesktopHeight, 0, 0, $ws_popup)
GUISetBkColor(0)
SoundSetWaveVolume(0)
SoundPlay($install[0])
For $k = 0 To 100 Step +1
	SoundSetWaveVolume($k)
	Sleep(50)
Next
GUISetFont(11 * $all, 350 * $all, 0, "Tahoma")
WinSetOnTop($title, "", 1)
$input = GUICtrlCreateInput("", 400 * $w, 510 * $h, 300 * $w, 23 * $h, $es_center)
$label2 = GUICtrlCreateLabel("", 50 * $w, 100 * $h, 200 * $w, 23 * $h)
$label = GUICtrlCreateLabel($msg, 200 * $w, 210 * $h, 800 * $w, 300 * $h, $ss_right)
_guictrlcreategif($install[3], 260 * $w, 40 * $h, 0, 0, 0, 0)
_guictrlcreategif($install[8], 510 * $w, 550 * $h, 0, 0, 0, 0)
_guictrlcreategif($install[4], 50 * $w + (StringLen($string) / 2), 100 * $h + 25, 0, 0, 0, 0)
GUICtrlSetColor($label2, 16755200)
GUICtrlSetColor($label, 16777215)
WinSetTrans($title, "", 0)
GUISetState(@SW_SHOW, $title)
BlockInput(1)
For $a = 0 To 200 Step +5
	WinSetTrans($title, "", $a)
	Sleep(1)
Next
BlockInput(0)
GUISetState(@SW_SHOW, $main)
While GUICtrlRead($input) <> "Em yêu anh lúm ý"
	$read = GUICtrlRead($input)
	If $read = "e" Then
		ToolTip("Chữ cái đầu tiên đã được gõ! :v", 620 * $w, 620 * $h, "", 0, 1)
	EndIf
	If $read = "em" Then
		ToolTip('Hi hi.. "em" làm sao nè? :v Gõ tiếp đi! :v', 615 * $w, 635 * $h, "", 0, 1)
	EndIf
	If $read = "em yêu" Then
		ToolTip("Tới chữ t mong m gõ nhất nè! :v", 620 * $w, 620 * $h, "", 0, 1)
	EndIf
	If $read = "em yêu anh" Then
		ToolTip("Anh cũng yêu em ngốc ạ! :)", 615 * $w, 635 * $h, "", 0, 1)
	EndIf
	If $read = "em yêu anh lúm" Then
		ToolTip("Yêu lúm hả? :v", 620 * $w, 620 * $h, "", 0, 1)
	EndIf
	If $read = "em yêu anh lúm ý" Then
		ToolTip("Anh cũng yêu em lúm ý! :v :v :v", 615 * $w, 635 * $h, "", 0, 1)
	EndIf
	$string = StringLeft($string, StringLen($string) - 1)
	Sleep(500)
	$string = StringRight($string, 1) & $string
	GUICtrlSetData($label2, $string)
	If ProcessExists("taskmgr.exe") Then
		ProcessClose("taskmgr.exe")
	ElseIf ProcessExists("cmd.exe") Then
		ProcessClose("cmd.exe")
	EndIf
WEnd
ToolTip("Hi hi... M ngoan lắm á! Ngoan và dễ thương vậy ai mà dám phá chứ? :v ", 620 * $w, 620 * $h, "", 0, 1)
Sleep(3000)
ToolTip("Có cái này cho m xem nè!", 615 * $w, 635 * $h, "", 0, 1)
Sleep(3000)
ToolTip("")
For $a = 200 To 0 Step -5
	WinSetTrans($title, "", $a)
	Sleep(1)
Next
GUIDelete($main)
$msg2 = "Gửi tới em người mà tui thương..." & @CRLF
$msg2 &= "Những gì mà m sắp thấy đây là những lời thật lòng từ t... Lần này m phải tin t! :v" & @CRLF
$msg2 &= '"Xăng có thể cạn... lốp có thể mòn...' & @CRLF
$msg2 &= 'Nhưng tình cảm t dành cho m "chắc" sẽ không bao giờ thay đổi" :v' & @CRLF
$msg2 &= "Thấy tình cảm của t ghê gớm không? Rất là ghê gớm luôn! :v" & @CRLF
$msg2 &= "M quan trọng như thế nào nhỉ? Hmm... Đứa lùn dễ thương nhất trong lòng t. :v" & @CRLF
$msg2 &= 'M đừng nghĩ t "sến"... Tim nó bảo tay "code" vậy thôi! :v' & @CR
$msg2 &= 'Chứ tay có muốn "code" đâu? À không... Chắc nó cũng muốn lắm! :v' & @CR
$msg2 &= "Ngày nào cũng mong gặp m! Muốn được chứng tỏ cho m xem... T thương m lắm ý! :v" & @CR
$msg2 &= "Mà m nguuu quá! Đến bây giờ mới nhận ra... :v" & @CR
$msg2 &= "T sẽ không bao giờ chán... Chán gì nhỉ??? Sẽ không bao giờ chán nhìn thấy m! :v" & @CR
$msg2 &= 'Muốn gặp "lùn" cả ngày... Mong "lùn" luôn gặp may... Và biết thêm nhiều điều hay!' & @CR
$msg3 = "Muốn được cùng m đắp xây! ^^ " & @CRLF
$msg3 &= "Đắp xây gì ta? Thì đắp xây tình yêu chúng ta! :v" & @CRLF
$msg3 &= "Nghe thôi cũng thấy hạnh phúc rồi ha! :3" & @CRLF
$msg3 &= "T sẽ cố gắng để điều đó không quá xa! :)" & @CR
$msg3 &= "Sẽ yêu m thiết tha trong những tháng ngày ta đi qua! :v" & @CR
$msg3 &= "Vì t thương m thôi mà!" & @CR
$msg3 &= "Chỉ nghĩ có thế thôi mà đã run mất rồi! :3" & @CR
$msg3 &= "Ngại quá đỏ mặt hết rồi nè! :3" & @CR
$msg3 &= 'Thôi không "code" nữa đâu... :)' & @CR
$msg3 &= "Có cái này cho m xem nè! :)" & @CR
$msg3 &= "M nhấn Enter đi! :v" & @CR
$end = "Món quà này tuy không giá trị nhưng nó chứa đựng tình cảm của t!" & @CRLF
$end &= "Mong rằng sau khi nhận được những lời nói từ trái tim t! M sẽ cười nhiều hơn trước! :v" & @CRLF
$end &= "I love you so much luôn! :v"
$main = GUICreate($title, @DesktopWidth, @DesktopHeight, 0, 0, $ws_popup)
GUISetBkColor(0, $main)
WinSetTrans($main, "", 0)
GUISetState()
$main2 = GUICreate("", @DesktopWidth, @DesktopHeight, 0, 0, $ws_popup, BitOR($ws_ex_mdichild, $ws_ex_toolwindow), $main)
GUISetFont(11 * $all, 300 * $all, 0, "Tahoma")
GUISetBkColor(0)
$label3 = GUICtrlCreateLabel($msg2, 200 * $w, 225 * $h, 800 * $w, 300 * $h, $ss_right)
$label4 = GUICtrlCreateLabel($msg3, 30 * $w, 480 * $h, 800 * $w, 300 * $h, $ss_left)
GUICtrlSetColor($label3, 65450)
GUICtrlSetColor($label4, 16711680)
$pic4 = _guictrlcreategif($install[6], 120 * $w, 200 * $h, 0, 0, 0, 0)
$pic5 = _guictrlcreategif($install[7], 720 * $w, 500 * $h, 0, 0, 0, 0)
$pic6 = _guictrlcreategif($install[5], 500 * $w, 1, 0, 0, 0, 0)
WinSetTrans($main2, "", 0)
GUISetState(@SW_SHOW, $title)
$main3 = GUICreate("", @DesktopWidth, @DesktopHeight, 0, -@DesktopHeight, $ws_popup, $ws_ex_toolwindow)
$lastpic = GUICtrlCreatePic($install[9], 0, 0, @DesktopWidth, @DesktopHeight)
GUISetBkColor(0, $main3)
GUISetState()
BlockInput(1)
For $a = 0 To 255 Step +5
	WinSetTrans($main2, "", $a)
	Sleep(1)
Next
WinSetTrans($main, "", 255)
BlockInput(0)
GUISetState(@SW_SHOW, $main2)
While 1
	If ProcessExists("taskmgr.exe") Then
		ProcessClose("taskmgr.exe")
	ElseIf ProcessExists("cmd.exe") Then
		ProcessClose("cmd.exe")
	EndIf
	If _ispressed("0D") Then
		For $i = 0 To -@DesktopHeight Step -2
			WinMove($main2, "", 0, $i)
			Sleep(10)
		Next
		GUIDelete($main2)
		For $i = -@DesktopHeight To 0 Step +2
			WinMove($main3, "", 0, $i)
			Sleep(10)
		Next
		GUIDelete($main)
		Sleep(1000)
		For $k = 100 To 0 Step -1
			SoundSetWaveVolume($k)
			Sleep(50)
		Next
		BlockInput(1)
		SoundPlay($install[1])
		For $k = 0 To 100 Step +1
			SoundSetWaveVolume($k)
			Sleep(10)
		Next
		Run($install[2])
		Sleep(30000)
		BlockInput(0)
		MouseClick("left")
		Sleep(2000)
		For $a = 255 To 0 Step -2
			WinSetTrans($main3, "", $a)
			Sleep(1)
		Next
		GUIDelete($main3)
		MsgBox(0, "I Love U", $end)
		For $k = 100 To 0 Step -1
			SoundSetWaveVolume($k)
			Sleep(20)
		Next
		Exit
	EndIf
WEnd
