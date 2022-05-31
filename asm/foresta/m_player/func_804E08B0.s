lbl_804E08B0:
/* 804E08B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E08B4  7C 08 02 A6 */	mflr r0
/* 804E08B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E08BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E08C0  7C 7F 1B 78 */	mr r31, r3
/* 804E08C4  4B EB A5 F5 */	bl mEv_CheckTitleDemo
/* 804E08C8  2C 03 00 00 */	cmpwi r3, 0
/* 804E08CC  41 81 00 18 */	bgt lbl_804E08E4
/* 804E08D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E08D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E08D8  3C 63 00 02 */	addis r3, r3, 2
/* 804E08DC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804E08E0  B3 E3 04 A4 */	sth r31, 0x4a4(r3)
lbl_804E08E4:
/* 804E08E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E08E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E08EC  7C 08 03 A6 */	mtlr r0
/* 804E08F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E08F4  4E 80 00 20 */	blr 
