lbl_80395FB0:
/* 80395FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80395FB4  7C 08 02 A6 */	mflr r0
/* 80395FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80395FBC  48 00 4E FD */	bl mEv_CheckTitleDemo
/* 80395FC0  2C 03 00 00 */	cmpwi r3, 0
/* 80395FC4  40 81 00 0C */	ble lbl_80395FD0
/* 80395FC8  38 60 00 00 */	li r3, 0
/* 80395FCC  48 00 00 18 */	b lbl_80395FE4
lbl_80395FD0:
/* 80395FD0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80395FD4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80395FD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80395FDC  88 63 00 16 */	lbz r3, 0x16(r3)
/* 80395FE0  7C 63 07 74 */	extsb r3, r3
lbl_80395FE4:
/* 80395FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80395FE8  7C 08 03 A6 */	mtlr r0
/* 80395FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80395FF0  4E 80 00 20 */	blr 
