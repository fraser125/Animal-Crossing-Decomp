lbl_805F229C:
/* 805F229C  2C 04 00 00 */	cmpwi r4, 0
/* 805F22A0  38 A0 00 01 */	li r5, 1
/* 805F22A4  40 82 00 24 */	bne lbl_805F22C8
/* 805F22A8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805F22AC  28 00 25 23 */	cmplwi r0, 0x2523
/* 805F22B0  41 80 00 0C */	blt lbl_805F22BC
/* 805F22B4  28 00 25 2F */	cmplwi r0, 0x252f
/* 805F22B8  40 81 00 10 */	ble lbl_805F22C8
lbl_805F22BC:
/* 805F22BC  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 805F22C0  28 04 25 30 */	cmplwi r4, 0x2530
/* 805F22C4  40 82 00 0C */	bne lbl_805F22D0
lbl_805F22C8:
/* 805F22C8  38 A0 00 00 */	li r5, 0
/* 805F22CC  48 00 00 30 */	b lbl_805F22FC
lbl_805F22D0:
/* 805F22D0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805F22D4  2C 00 00 02 */	cmpwi r0, 2
/* 805F22D8  40 82 00 24 */	bne lbl_805F22FC
/* 805F22DC  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 805F22E0  2C 00 00 0F */	cmpwi r0, 0xf
/* 805F22E4  41 82 00 14 */	beq lbl_805F22F8
/* 805F22E8  2C 00 00 03 */	cmpwi r0, 3
/* 805F22EC  41 82 00 0C */	beq lbl_805F22F8
/* 805F22F0  2C 00 00 0D */	cmpwi r0, 0xd
/* 805F22F4  40 82 00 08 */	bne lbl_805F22FC
lbl_805F22F8:
/* 805F22F8  38 A0 00 00 */	li r5, 0
lbl_805F22FC:
/* 805F22FC  7C A3 2B 78 */	mr r3, r5
/* 805F2300  4E 80 00 20 */	blr 
