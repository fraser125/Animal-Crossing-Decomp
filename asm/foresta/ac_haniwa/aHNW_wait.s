lbl_80427B58:
/* 80427B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80427B5C  7C 08 02 A6 */	mflr r0
/* 80427B60  3C A0 80 64 */	lis r5, lit_544@ha /* 0x80643FD8@ha */
/* 80427B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80427B68  C0 05 3F D8 */	lfs f0, lit_544@l(r5)  /* 0x80643FD8@l */
/* 80427B6C  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 80427B70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80427B74  40 80 00 0C */	bge lbl_80427B80
/* 80427B78  38 A0 00 01 */	li r5, 1
/* 80427B7C  48 00 0E D9 */	bl aHNW_setupAction
lbl_80427B80:
/* 80427B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80427B84  7C 08 03 A6 */	mtlr r0
/* 80427B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80427B8C  4E 80 00 20 */	blr 
