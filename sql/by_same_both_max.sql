SELECT * FROM layouts
where same_finger_rp < 100
ORDER BY same_finger_im + same_finger_rp, same_finger_rp, outward, jumps, score desc;
