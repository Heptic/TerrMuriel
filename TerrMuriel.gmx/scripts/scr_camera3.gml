var hview0, yview0, wview0, xview0;

wview0 = right.x - left.x + 128;
hview0 = bot.y - top.y + 128

xview0 = left.x - 64;
yview0 = top.y - 64;

if hview0 < wview0/screenW*screenH {
    hview0 = wview0/screenW*screenH;
    yview0 = midd.y - (hview0/2);
}

if wview0 < hview0/screenH*screenW {
    wview0 = hview0/screenH*screenW;
    xview0 = mid.x - (wview0/2);
}

if yview0 > top.y - 64 {
    yview0 = top.y - 64;
}
if xview0 > left.x - 64 {
    xview0 = left.x - 64;
}

if yview0 + hview0 < bot.y + 64 {
    yview0 = bot.y + 64 - hview0;
}
if xview0 + wview0 < right.x + 64 {
    xview0 = right.x + 64 - wview0;
}

view_hview[0] += (hview0 - view_hview[0]) *.05;
view_wview[0] += (wview0 - view_wview[0]) *.05;

view_xview[0] += (xview0 - view_xview[0]) *.1;
view_yview[0] += (yview0 - view_yview[0]) *.1;
