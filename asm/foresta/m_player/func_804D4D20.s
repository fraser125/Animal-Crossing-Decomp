lbl_804D4D20:
/* 804D4D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4D24  7C 08 02 A6 */	mflr r0
/* 804D4D28  3D 40 80 64 */	lis r10, lit_604@ha /* 0x80646568@ha */
/* 804D4D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4D30  C0 2A 65 68 */	lfs f1, lit_604@l(r10)  /* 0x80646568@l */
/* 804D4D34  4B F2 F1 F1 */	bl mVibctl_entry
/* 804D4D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4D3C  7C 08 03 A6 */	mtlr r0
/* 804D4D40  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4D44  4E 80 00 20 */	blr 
