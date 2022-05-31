lbl_80395E70:
/* 80395E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80395E74  7C 08 02 A6 */	mflr r0
/* 80395E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80395E7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80395E80  7C 7F 1B 78 */	mr r31, r3
/* 80395E84  48 00 50 35 */	bl mEv_CheckTitleDemo
/* 80395E88  2C 03 00 00 */	cmpwi r3, 0
/* 80395E8C  40 81 00 0C */	ble lbl_80395E98
/* 80395E90  38 60 00 00 */	li r3, 0
/* 80395E94  48 00 00 28 */	b lbl_80395EBC
lbl_80395E98:
/* 80395E98  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80395E9C  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80395EA0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80395EA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80395EA8  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 80395EAC  7C 80 00 38 */	and r0, r4, r0
/* 80395EB0  7C 04 00 50 */	subf r0, r4, r0
/* 80395EB4  7C 00 00 34 */	cntlzw r0, r0
/* 80395EB8  54 03 D9 7E */	srwi r3, r0, 5
lbl_80395EBC:
/* 80395EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80395EC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80395EC4  7C 08 03 A6 */	mtlr r0
/* 80395EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80395ECC  4E 80 00 20 */	blr 
