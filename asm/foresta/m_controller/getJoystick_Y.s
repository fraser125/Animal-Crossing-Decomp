lbl_80395FF4:
/* 80395FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80395FF8  7C 08 02 A6 */	mflr r0
/* 80395FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80396000  48 00 4E B9 */	bl mEv_CheckTitleDemo
/* 80396004  2C 03 00 00 */	cmpwi r3, 0
/* 80396008  40 81 00 0C */	ble lbl_80396014
/* 8039600C  38 60 00 00 */	li r3, 0
/* 80396010  48 00 00 18 */	b lbl_80396028
lbl_80396014:
/* 80396014  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80396018  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8039601C  80 63 00 00 */	lwz r3, 0(r3)
/* 80396020  88 63 00 17 */	lbz r3, 0x17(r3)
/* 80396024  7C 63 07 74 */	extsb r3, r3
lbl_80396028:
/* 80396028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039602C  7C 08 03 A6 */	mtlr r0
/* 80396030  38 21 00 10 */	addi r1, r1, 0x10
/* 80396034  4E 80 00 20 */	blr 