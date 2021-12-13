SELECT * FROM layouts
where outward < 50 and
same_finger_rp < 55 and
jumps < 30
ORDER BY same_finger_im + same_finger_rp + outward + jumps, same_finger_rp, outward, jumps, score desc;
