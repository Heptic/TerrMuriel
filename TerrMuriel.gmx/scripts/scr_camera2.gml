view_wview[0] = right.x - left.x + 128;
view_hview[0] = bot.y - top.y + 128

view_xview[0] = left.x - 64;
view_yview[0] = top.y - 64;

if view_hview[0] < view_wview[0]/1024*768 {
    view_hview[0] = view_wview[0]/1024*768;
    view_yview[0] = midd.y - (view_hview[0]/2);
}

if view_wview[0] < view_hview[0]/769*1024 {
    view_wview[0] = view_hview[0]/768*1024;
    view_xview[0] = mid.x - (view_wview[0]/2);
}
