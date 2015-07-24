if players = 3 {
if x < p2.x and x <= p3.x {
    left = id;
}
if x >= p2.x and x > p3.x {
    right = id;
}

if x > p2.x and x < p3.x {
    mid = id;
}
if x < p2.x and x > p3.x {
    mid = id;
}
}

if players = 2 {
if x <= p2.x {
    left = id;
} else right = id;
}