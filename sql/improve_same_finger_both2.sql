SELECT * FROM layouts
WHERE
(jumps < 250) and
(outward < 350) and
(same_finger_rp < 500) and
((fingers0 + fingers9) < 2200) and
((fingers1 + fingers8) < 2600) and
((fingers3 + fingers6) < 4400)
ORDER BY same_finger_im + same_finger_rp, score DESC, outward, jumps;

