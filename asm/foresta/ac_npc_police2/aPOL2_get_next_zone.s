lbl_8056B4E8:
/* 8056B4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056B4EC  7C 08 02 A6 */	mflr r0
/* 8056B4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056B4F4  54 80 F6 BE */	rlwinm r0, r4, 0x1e, 0x1a, 0x1f
/* 8056B4F8  2C 00 00 01 */	cmpwi r0, 1
/* 8056B4FC  41 82 00 0C */	beq lbl_8056B508
/* 8056B500  2C 00 00 03 */	cmpwi r0, 3
/* 8056B504  40 82 00 0C */	bne lbl_8056B510
lbl_8056B508:
/* 8056B508  4B FF FE 79 */	bl aPOL2_get_next_zone_sub0
/* 8056B50C  48 00 00 08 */	b lbl_8056B514
lbl_8056B510:
/* 8056B510  4B FF FF 29 */	bl aPOL2_get_next_zone_sub1
lbl_8056B514:
/* 8056B514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056B518  7C 08 03 A6 */	mtlr r0
/* 8056B51C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056B520  4E 80 00 20 */	blr 
