lbl_80526328:
/* 80526328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052632C  7C 08 02 A6 */	mflr r0
/* 80526330  38 60 00 20 */	li r3, 0x20
/* 80526334  38 80 00 00 */	li r4, 0
/* 80526338  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052633C  4B E7 7A 91 */	bl mEv_get_save_area
/* 80526340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526344  7C 08 03 A6 */	mtlr r0
/* 80526348  38 21 00 10 */	addi r1, r1, 0x10
/* 8052634C  4E 80 00 20 */	blr 
