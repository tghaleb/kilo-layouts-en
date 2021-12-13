SELECT * FROM layouts
where same_finger_rp < 55 and
same_finger_im < 300 and
outward < 170 and
jumps < 20
ORDER BY same_finger_im + same_finger_rp, same_finger_rp, outward, jumps, score desc;
