﻿#Requires AutoHotkey >= 2

extendKey := "CapsLock"
extendLayer1Key := "Shift"
extendLayer2Key := "Ctrl"

#SuspendExempt
RAlt & LAlt::
LAlt & RAlt::Suspend -1
#SuspendExempt false

if GetKeyState("CapsLock", "T")
	SetCapsLockState "AlwaysOn"
else
	SetCapsLockState "AlwaysOff"
	
sc010::v
sc011::h
sc012::s
sc013::g
sc014::b
sc015::j
sc016::m
sc017::o
sc018::u
sc019::sc027
sc01e::x
sc01f::a
sc020::r
sc021::t
sc022::y
sc023::k
sc024::n
sc025::e
sc026::i
sc027::w
sc02d::f
sc02e::l
sc02f::d
sc030::q
sc031::c
sc032::p

HoldCapLocksWithKey(key) {
	SetKeyDelay -1
	if GetKeyState("CapsLock", "T")
		SetCapsLockState "AlwaysOff"
	else
		SetCapsLockState "AlwaysOn"
	KeyWait key
}

HoldKey(key) {
	SetKeyDelay -1
	Send "{Blind}{" key " DownR}"
	KeyWait key, "L"
}

HoldKeyWithFunc(key, function) {
	SetKeyDelay -1
	function()
	KeyWait key
}

CapsLock & Esc::HoldCapLocksWithKey "Esc"
CapsLock & Esc up::Send "{blind}{Esc Up}"
CapsLock & F1::HoldKey "Media_Play_Pause"
CapsLock & F1 up::Send "{blind}{Media_Play_Pause Up}"
CapsLock & F2::HoldKey "Media_Prev"
CapsLock & F2 up::Send "{blind}{Media_Prev Up}"
CapsLock & F3::HoldKey "Media_Next"
CapsLock & F3 up::Send "{blind}{Media_Next Up}"
CapsLock & F4::HoldKey "Media_Stop"
CapsLock & F4 up::Send "{blind}{Media_Stop Up}"
CapsLock & F5::HoldKey "Volume_Mute"
CapsLock & F5 up::Send "{blind}{Volume_Mute Up}"
CapsLock & F6::Volume_Down
CapsLock & F7::Volume_Up
CapsLock & F8::HoldKey "Launch_Media"
CapsLock & F8 up::Send "{blind}{Launch_Media Up}"

CapsLock & sc029::SendEvent "{Click 16 96}"
CapsLock & sc002::F1
CapsLock & sc003::F2
CapsLock & sc004::F3
CapsLock & sc005::F4
CapsLock & sc006::F5
CapsLock & sc007::F6
CapsLock & sc008::F7
CapsLock & sc009::F8
CapsLock & sc00a::F9
CapsLock & sc00b::F10
CapsLock & sc00c::F11
CapsLock & sc00d::F12

CapsLock & sc010::Esc
CapsLock & sc011::WheelUp
CapsLock & sc012::Browser_Back
CapsLock & sc013::Browser_Forward
CapsLock & sc014::MouseMove 0, -20,, "R"
CapsLock & sc015::PgUp
CapsLock & sc016::Home
CapsLock & sc017::Up
CapsLock & sc018::End
CapsLock & sc019::Del
CapsLock & sc01a::WheelLeft
CapsLock & sc01b::WheelRight

CapsLock & sc01e::HoldKey "Alt"
CapsLock & sc01e up::send "{blind}{Alt Up}"
CapsLock & sc01f::WheelDown
CapsLock & sc020::HoldKey "Shift"
CapsLock & sc020 up::send "{blind}{Shift Up}"
CapsLock & sc021::HoldKey "Ctrl"
CapsLock & sc021 up::send "{blind}{Ctrl Up}"
CapsLock & sc022::MouseMove 0, 20,, "R"
CapsLock & sc023::PgDn
CapsLock & sc024::Left
CapsLock & sc025::Down
CapsLock & sc026::Right
CapsLock & sc027::BackSpace
CapsLock & sc028::HoldKey "AppsKey"
CapsLock & sc028 up::Send "{blind}{AppsKey Up}"
;Co_BS::Browser_Favorites

;Co_LG::WheelLeft
CapsLock & sc02c::^z
CapsLock & sc02d::^x
CapsLock & sc02e::^c
CapsLock & sc02f::^v
CapsLock & sc030::LButton

CapsLock & sc031::MButton
CapsLock & sc032::RButton
CapsLock & sc033::MouseMove -42, 0,, "R"
CapsLock & sc034::MouseMove 42, 0,, "R"
CapsLock & sc035::Ins

CapsLock & Enter::^BackSpace
CapsLock & Space::Enter