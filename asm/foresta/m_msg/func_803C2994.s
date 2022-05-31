lbl_803C2994:
/* 803C2994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2998  7C 08 02 A6 */	mflr r0
/* 803C299C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 803C29A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C29A4  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 803C29A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C29AC  3B E0 00 00 */	li r31, 0
/* 803C29B0  4B FD 35 61 */	bl chkTrigger
/* 803C29B4  2C 03 00 00 */	cmpwi r3, 0
/* 803C29B8  40 82 00 14 */	bne lbl_803C29CC
/* 803C29BC  38 60 40 00 */	li r3, 0x4000
/* 803C29C0  4B FD 35 51 */	bl chkTrigger
/* 803C29C4  2C 03 00 00 */	cmpwi r3, 0
/* 803C29C8  41 82 00 08 */	beq lbl_803C29D0
lbl_803C29CC:
/* 803C29CC  3B E0 00 01 */	li r31, 1
lbl_803C29D0:
/* 803C29D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C29D4  7F E3 FB 78 */	mr r3, r31
/* 803C29D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C29DC  7C 08 03 A6 */	mtlr r0
/* 803C29E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C29E4  4E 80 00 20 */	blr 
