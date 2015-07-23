if players = 3 {
if y <= p1.y and y < p3.y {
    top = id;
}
if y > p1.y and y >= p3.y {
    bot = id;
}

if y >= p1.y and y < p3.y {
    midd = id;
}
if y < p1.y and y >= p3.y {
    midd = id;
}
}

if players = 2 {
if y < p1.y {
    top = id;
} else bot = id;
}
