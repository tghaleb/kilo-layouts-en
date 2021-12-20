SELECT * FROM layouts
WHERE
(jumps < 10) and
(outward < 90) and
(same_finger_rp < 70) and
(same_finger_im < 400) and
((fingers0 + fingers9) < 2000) and
((fingers1 + fingers8) < 2600) and
((fingers3 + fingers6) < 4200)
ORDER BY
jumps + same_finger_rp + same_finger_im,
same_finger_rp,
outward,
positional_effort,
alternation DESC,
score DESC,
(fingers0 + fingers9)
;

