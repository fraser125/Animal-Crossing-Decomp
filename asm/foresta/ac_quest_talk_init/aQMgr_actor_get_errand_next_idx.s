lbl_80489C40:
/* 80489C40  28 03 00 00 */	cmplwi r3, 0
/* 80489C44  38 A0 FF FF */	li r5, -1
/* 80489C48  41 82 00 38 */	beq lbl_80489C80
/* 80489C4C  80 83 00 08 */	lwz r4, 8(r3)
/* 80489C50  28 04 00 00 */	cmplwi r4, 0
/* 80489C54  41 82 00 2C */	beq lbl_80489C80
/* 80489C58  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80489C5C  2C 03 00 00 */	cmpwi r3, 0
/* 80489C60  41 80 00 20 */	blt lbl_80489C80
/* 80489C64  2C 03 00 05 */	cmpwi r3, 5
/* 80489C68  40 80 00 18 */	bge lbl_80489C80
/* 80489C6C  88 04 00 00 */	lbz r0, 0(r4)
/* 80489C70  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 80489C74  28 00 00 01 */	cmplwi r0, 1
/* 80489C78  40 82 00 08 */	bne lbl_80489C80
/* 80489C7C  7C 65 1B 78 */	mr r5, r3
lbl_80489C80:
/* 80489C80  7C A3 2B 78 */	mr r3, r5
/* 80489C84  4E 80 00 20 */	blr 