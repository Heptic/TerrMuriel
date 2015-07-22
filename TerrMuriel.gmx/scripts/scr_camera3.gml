var hview0, yview0, wview0, xview0;

wview0 = right.x - left.x + 128;
hview0 = bot.y - top.y + 128

xview0 = left.x - 64;
yview0 = top.y - 64;

if hview0 < wview0/1024*768 {
    hview0 = wview0/1024*768;
    yview0 = midd.y - (hview0/2);
}

if wview0 < hview0/769*1024 {
    wview0 = hview0/768*1024;
    xview0 = mid.x - (wview0/2);
}

if yview0 > top.y - 64 {
    yview0 = top.y - 64;
}
if xview0 > left.x - 64 {
    xview0 = left.x - 64;
}

view_hview[0] = hview0;
view_yview[0] = yview0;
view_wview[0] = wview0;
view_xview[0] = xview0;
