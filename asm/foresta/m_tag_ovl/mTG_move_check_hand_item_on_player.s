lbl_805F98B8:
/* 805F98B8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805F98BC  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 805F98C0  2C 00 00 02 */	cmpwi r0, 2
/* 805F98C4  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 805F98C8  38 60 00 00 */	li r3, 0
/* 805F98CC  4C 82 00 20 */	bnelr 
/* 805F98D0  2C 00 00 04 */	cmpwi r0, 4
/* 805F98D4  41 82 00 24 */	beq lbl_805F98F8
/* 805F98D8  2C 00 00 08 */	cmpwi r0, 8
/* 805F98DC  41 82 00 1C */	beq lbl_805F98F8
/* 805F98E0  2C 00 00 02 */	cmpwi r0, 2
/* 805F98E4  41 82 00 14 */	beq lbl_805F98F8
/* 805F98E8  2C 00 00 0F */	cmpwi r0, 0xf
/* 805F98EC  4C 82 00 20 */	bnelr 
/* 805F98F0  28 04 2F 03 */	cmplwi r4, 0x2f03
/* 805F98F4  4D 82 00 20 */	beqlr 
lbl_805F98F8:
/* 805F98F8  38 60 00 01 */	li r3, 1
/* 805F98FC  4E 80 00 20 */	blr 
