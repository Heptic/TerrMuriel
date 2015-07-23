var hview0, yview0, wview0, xview0, xfocus, yfocus;
if players = 3 {
    xfocus = (p1.x + p2.x + p3.x) / 3;
    yfocus = (p1.y + p2.y + p3.y) / 3;
} else if players = 2 {
    xfocus = (p1.x + p2.x) / 2;
    yfocus = (p1.y + p2.y) / 2;
} else if players = 1 {
    xfocus = p1.x;
    yfocus = p1.y;
}

if players = 1 {
    xview0 = p1.x - cam_offset;
    yview0 = p1.y - cam_offset;
    wview0 = cam_offset*2;
    hview0 = cam_offset*2;
}

if players != 1 {
wview0 = right.x - left.x + cam_offset*2;
hview0 = bot.y - top.y + cam_offset*2;

xview0 = left.x - cam_offset;
yview0 = top.y - cam_offset;
}
if hview0 < wview0/screenW*screenH {
    hview0 = wview0/screenW*screenH;
    yview0 = yfocus - (hview0/2);
}

if wview0 < hview0/screenH*screenW {
    wview0 = hview0/screenH*screenW;
    xview0 = xfocus - (wview0/2);
}
if players != 1 {
if yview0 > top.y - cam_offset {
    yview0 = top.y - cam_offset;
}
if xview0 > left.x - cam_offset {
    xview0 = left.x - cam_offset;
}

if yview0 + hview0 < bot.y + cam_offset {
    yview0 = bot.y + cam_offset - hview0;
}
if xview0 + wview0 < right.x + cam_offset {
    xview0 = right.x + cam_offset - wview0;
}
}


view_hview[0] += (hview0 - view_hview[0]) *.05;
view_wview[0] += (wview0 - view_wview[0]) *.05;

view_xview[0] += (xview0 - view_xview[0]) *.1;
view_yview[0] += (yview0 - view_yview[0]) *.1;

if ticks = 2 {
    view_hview[0] = hview0;
    view_wview[0] = wview0;
    view_xview[0] = xview0;
    view_yview[0] = yview0;
}
