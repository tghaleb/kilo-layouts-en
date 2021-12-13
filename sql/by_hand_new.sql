SELECT * FROM layouts
where outward < 450 and
same_finger_rp < 120
ORDER BY same_finger_im + same_finger_rp + outward + jumps, same_finger_rp, outward, jumps, score desc;
