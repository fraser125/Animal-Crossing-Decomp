lbl_805F8148:
/* 805F8148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F814C  7C 08 02 A6 */	mflr r0
/* 805F8150  38 A0 00 00 */	li r5, 0
/* 805F8154  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F8158  4B FF FF 05 */	bl mTG_nw_room_put_proc
/* 805F815C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F8160  7C 08 03 A6 */	mtlr r0
/* 805F8164  38 21 00 10 */	addi r1, r1, 0x10
/* 805F8168  4E 80 00 20 */	blr 
