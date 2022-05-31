lbl_80564BB8:
/* 80564BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80564BBC  7C 08 02 A6 */	mflr r0
/* 80564BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80564BC4  4B E7 4A 7D */	bl get_player_actor_withoutCheck
/* 80564BC8  28 03 00 00 */	cmplwi r3, 0
/* 80564BCC  41 82 00 18 */	beq lbl_80564BE4
/* 80564BD0  A0 03 13 94 */	lhz r0, 0x1394(r3)
/* 80564BD4  28 00 40 81 */	cmplwi r0, 0x4081
/* 80564BD8  40 82 00 0C */	bne lbl_80564BE4
/* 80564BDC  38 60 00 01 */	li r3, 1
/* 80564BE0  48 00 00 08 */	b lbl_80564BE8
lbl_80564BE4:
/* 80564BE4  38 60 00 00 */	li r3, 0
lbl_80564BE8:
/* 80564BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80564BEC  7C 08 03 A6 */	mtlr r0
/* 80564BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80564BF4  4E 80 00 20 */	blr 
