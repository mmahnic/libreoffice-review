#############################################################################
# Generated by PAGE version 4.17
# in conjunction with Tcl version 8.6
# Sep 27, 2018 08:22:12 PM CEST  platform: Linux
set vTcl(timestamp) ""


if {!$vTcl(borrow)} {

vTcl:font:add_GUI_font TkDefaultFont \
"-family sans-serif -size 10 -weight normal -slant roman -underline 0 -overstrike 0"
vTcl:font:add_GUI_font TkFixedFont \
"-family monospace -size 10 -weight normal -slant roman -underline 0 -overstrike 0"
vTcl:font:add_GUI_font TkMenuFont \
"-family sans-serif -size 10 -weight normal -slant roman -underline 0 -overstrike 0"
vTcl:font:add_GUI_font TkTextFont \
"-family sans-serif -size 10 -weight normal -slant roman -underline 0 -overstrike 0"
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(active_menu_fg) #000000
}

#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top37
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top37
    }
    namespace eval ::widgets::$base {
        set dflt,origin 0
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top37 {base} {
    if {$base == ""} {
        set base .top37
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background {#d9d9d9} -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 597x444+418+380
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 3196 1173
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Git Review"
    vTcl:DefineAlias "$top" "DiffToDoc" vTcl:Toplevel:WidgetProc "" 1
    ttk::style configure Text -background #d9d9d9
    ttk::style configure Text -foreground #000000
    ttk::style configure Text -font TkDefaultFont
    text $top.tex39 \
        -background white -font TkTextFont -foreground black -height 104 \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -undo 1 \
        -width 574 -wrap word 
    .top37.tex39 configure -font TkTextFont
    .top37.tex39 insert end text
    vTcl:DefineAlias "$top.tex39" "txtCommitIds" vTcl:WidgetProc "DiffToDoc" 1
    text $top.tex40 \
        -background white -font TkTextFont -foreground black -height 144 \
        -highlightcolor black -insertbackground black \
        -selectbackground {#c4c4c4} -selectforeground black -undo 1 \
        -width 574 -wrap word 
    .top37.tex40 configure -font TkTextFont
    .top37.tex40 insert end text
    vTcl:DefineAlias "$top.tex40" "txtFilters" vTcl:WidgetProc "DiffToDoc" 1
    label $top.lab43 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Commits 
    vTcl:DefineAlias "$top.lab43" "Label2" vTcl:WidgetProc "DiffToDoc" 1
    label $top.lab44 \
        -activebackground {#f9f9f9} -activeforeground black \
        -background {#d9d9d9} -foreground {#000000} -highlightcolor black \
        -text Exclude 
    vTcl:DefineAlias "$top.lab44" "Label3" vTcl:WidgetProc "DiffToDoc" 1
    button $top.but45 \
        -activebackground {#d9d9d9} -activeforeground black \
        -background {#d9d9d9} -command generateDiffDocument \
        -foreground {#000000} -highlightcolor black -pady 0 -text Generate 
    vTcl:DefineAlias "$top.but45" "Button1" vTcl:WidgetProc "DiffToDoc" 1
    ttk::combobox $top.tCo40 \
        -values 'master','develop' -textvariable comboBaseBranch \
        -foreground {} -background {} -takefocus {} 
    vTcl:DefineAlias "$top.tCo40" "comboBaseBranch" vTcl:WidgetProc "DiffToDoc" 1
    ttk::combobox $top.tCo41 \
        -values 'master','develop','feat_xxx' -textvariable comboToBranch \
        -foreground {} -background {} -takefocus {} 
    vTcl:DefineAlias "$top.tCo41" "comboToBranch" vTcl:WidgetProc "DiffToDoc" 1
    ttk::style configure TButton -background #d9d9d9
    ttk::style configure TButton -foreground #000000
    ttk::style configure TButton -font TkDefaultFont
    ttk::button $top.tBu42 \
        -command addBranchDiffFromCommonAncestor -takefocus {} -text Add 
    vTcl:DefineAlias "$top.tBu42" "TButton1" vTcl:WidgetProc "DiffToDoc" 1
    ttk::label $top.tLa43 \
        -background {#d9d9d9} -foreground {#000000} -font TkDefaultFont \
        -relief flat -text {Base branch:} 
    vTcl:DefineAlias "$top.tLa43" "TLabel1" vTcl:WidgetProc "DiffToDoc" 1
    ttk::label $top.tLa44 \
        -background {#d9d9d9} -foreground {#000000} -font TkDefaultFont \
        -relief flat -text Branch: 
    vTcl:DefineAlias "$top.tLa44" "TLabel2" vTcl:WidgetProc "DiffToDoc" 1
    ttk::label $top.tLa39 \
        -background {#d9d9d9} -foreground {#000000} -font TkDefaultFont \
        -relief flat -text Name: 
    vTcl:DefineAlias "$top.tLa39" "TLabel3" vTcl:WidgetProc "DiffToDoc" 1
    ttk::entry $top.tEn40 \
        -textvariable edName -foreground {} -background {} -takefocus {} \
        -cursor xterm 
    vTcl:DefineAlias "$top.tEn40" "edName" vTcl:WidgetProc "DiffToDoc" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.tex39 \
        -in $top -x 10 -y 129 -width 574 -relwidth 0 -height 104 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tex40 \
        -in $top -x 10 -y 260 -width 574 -relwidth 0 -height 144 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab43 \
        -in $top -x 10 -y 104 -width 63 -height 21 -anchor nw \
        -bordermode ignore 
    place $top.lab44 \
        -in $top -x 10 -y 239 -width 55 -height 21 -anchor nw \
        -bordermode ignore 
    place $top.but45 \
        -in $top -x 490 -y 410 -width 88 -relwidth 0 -height 24 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tCo40 \
        -in $top -x 110 -y 70 -width 167 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tCo41 \
        -in $top -x 340 -y 70 -width 167 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tBu42 \
        -in $top -x 520 -y 70 -width 62 -relwidth 0 -height 28 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tLa43 \
        -in $top -x 10 -y 70 -width 92 -relwidth 0 -height 19 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tLa44 \
        -in $top -x 280 -y 70 -anchor nw -bordermode ignore 
    place $top.tLa39 \
        -in $top -x 10 -y 10 -width 92 -relwidth 0 -height 19 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tEn40 \
        -in $top -x 110 -y 10 -width 474 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top37 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

