lbl_8057C67C:
/* 8057C67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C680  7C 08 02 A6 */	mflr r0
/* 8057C684  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C688  4B E6 95 B9 */	bl mRmTp_ItemNo2FtrSize
/* 8057C68C  30 63 FF FF */	addic r3, r3, -1
/* 8057C690  38 00 FF EC */	li r0, -20
/* 8057C694  7C 63 19 10 */	subfe r3, r3, r3
/* 8057C698  7C 03 18 38 */	and r3, r0, r3
/* 8057C69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C6A0  7C 08 03 A6 */	mtlr r0
/* 8057C6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C6A8  4E 80 00 20 */	blr 
