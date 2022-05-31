lbl_8038D008:
/* 8038D008  3C A0 80 65 */	lis r5, norm_table@ha /* 0x80650C78@ha */
/* 8038D00C  54 80 17 3A */	rlwinm r0, r4, 2, 0x1c, 0x1d
/* 8038D010  38 85 0C 78 */	addi r4, r5, norm_table@l /* 0x80650C78@l */
/* 8038D014  7C 84 00 2E */	lwzx r4, r4, r0
/* 8038D018  C0 04 00 00 */	lfs f0, 0(r4)
/* 8038D01C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8038D020  C0 04 00 04 */	lfs f0, 4(r4)
/* 8038D024  D0 03 00 04 */	stfs f0, 4(r3)
/* 8038D028  4E 80 00 20 */	blr 
