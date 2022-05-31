lbl_80405E84:
/* 80405E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405E88  7C 08 02 A6 */	mflr r0
/* 80405E8C  3C 80 81 1C */	lis r4, this@ha /* 0x811C56B4@ha */
/* 80405E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80405E98  93 C1 00 08 */	stw r30, 8(r1)
/* 80405E9C  7C 7E 1B 78 */	mr r30, r3
/* 80405EA0  38 64 56 B4 */	addi r3, r4, this@l /* 0x811C56B4@l */
/* 80405EA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80405EA8  83 E3 03 B0 */	lwz r31, 0x3b0(r3)
/* 80405EAC  48 00 00 28 */	b lbl_80405ED4
lbl_80405EB0:
/* 80405EB0  80 7F 00 04 */	lwz r3, 4(r31)
/* 80405EB4  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 80405EB8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80405EBC  7C 04 00 00 */	cmpw r4, r0
/* 80405EC0  40 80 00 10 */	bge lbl_80405ED0
/* 80405EC4  7F C4 F3 78 */	mr r4, r30
/* 80405EC8  38 A0 00 00 */	li r5, 0
/* 80405ECC  4B C5 A2 71 */	bl osSendMesg
lbl_80405ED0:
/* 80405ED0  83 FF 00 00 */	lwz r31, 0(r31)
lbl_80405ED4:
/* 80405ED4  28 1F 00 00 */	cmplwi r31, 0
/* 80405ED8  40 82 FF D8 */	bne lbl_80405EB0
/* 80405EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405EE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405EE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80405EE8  7C 08 03 A6 */	mtlr r0
/* 80405EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80405EF0  4E 80 00 20 */	blr 
