SELECT * FROM layouts
where
jumps < 20 and
same_finger_rp < 60 and
outward < 70 and
same_finger_im < 370 and
same_finger_im + same_finger_rp < 510 and
positional_effort < 3800
ORDER BY same_finger_im + same_finger_rp + jumps, same_finger_rp, jumps, outward, positional_effort, score desc;
