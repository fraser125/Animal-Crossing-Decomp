lbl_803F43EC:
/* 803F43EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F43F0  7C 08 02 A6 */	mflr r0
/* 803F43F4  7C 85 26 70 */	srawi r5, r4, 4
/* 803F43F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F43FC  80 03 01 18 */	lwz r0, 0x118(r3)
/* 803F4400  7C 80 00 38 */	and r0, r4, r0
/* 803F4404  7C A0 03 78 */	or r0, r5, r0
/* 803F4408  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 803F440C  41 82 00 0C */	beq lbl_803F4418
/* 803F4410  48 00 03 A9 */	bl showOrthoView
/* 803F4414  48 00 00 08 */	b lbl_803F441C
lbl_803F4418:
/* 803F4418  48 00 00 15 */	bl showPerspectiveView
lbl_803F441C:
/* 803F441C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F4420  7C 08 03 A6 */	mtlr r0
/* 803F4424  38 21 00 10 */	addi r1, r1, 0x10
/* 803F4428  4E 80 00 20 */	blr 
