lbl_804159A8:
/* 804159A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804159AC  7C 08 02 A6 */	mflr r0
/* 804159B0  38 80 01 68 */	li r4, 0x168
/* 804159B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804159B8  88 63 01 B3 */	lbz r3, 0x1b3(r3)
/* 804159BC  4B F6 69 69 */	bl mBGMPsComp_delete_ps_demo
/* 804159C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804159C4  7C 08 03 A6 */	mtlr r0
/* 804159C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804159CC  4E 80 00 20 */	blr 
