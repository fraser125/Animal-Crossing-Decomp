lbl_80395ED0:
/* 80395ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80395ED4  7C 08 02 A6 */	mflr r0
/* 80395ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80395EDC  48 00 4F DD */	bl mEv_CheckTitleDemo
/* 80395EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80395EE4  40 81 00 0C */	ble lbl_80395EF0
/* 80395EE8  38 60 00 00 */	li r3, 0
/* 80395EEC  48 00 00 14 */	b lbl_80395F00
lbl_80395EF0:
/* 80395EF0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80395EF4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80395EF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80395EFC  A0 63 00 14 */	lhz r3, 0x14(r3)
lbl_80395F00:
/* 80395F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80395F04  7C 08 03 A6 */	mtlr r0
/* 80395F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80395F0C  4E 80 00 20 */	blr 
