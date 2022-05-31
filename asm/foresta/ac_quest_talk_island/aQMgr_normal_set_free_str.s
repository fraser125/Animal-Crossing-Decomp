lbl_8048D8A0:
/* 8048D8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D8A4  7C 08 02 A6 */	mflr r0
/* 8048D8A8  38 80 00 0A */	li r4, 0xa
/* 8048D8AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D8B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D8B4  80 A3 01 78 */	lwz r5, 0x178(r3)
/* 8048D8B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048D8BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048D8C0  80 A5 00 00 */	lwz r5, 0(r5)
/* 8048D8C4  3C 63 00 02 */	addis r3, r3, 2
/* 8048D8C8  A0 63 06 88 */	lhz r3, 0x688(r3)
/* 8048D8CC  83 E5 01 7C */	lwz r31, 0x17c(r5)
/* 8048D8D0  4B F5 5D D1 */	bl mQst_SetItemNameFreeStr
/* 8048D8D4  38 7F 00 04 */	addi r3, r31, 4
/* 8048D8D8  38 80 00 0B */	li r4, 0xb
/* 8048D8DC  4B F2 61 2D */	bl mLd_SetFreeStrLandMuraName
/* 8048D8E0  4B F3 1D C9 */	bl func_803BF6A8
/* 8048D8E4  38 BF 08 D0 */	addi r5, r31, 0x8d0
/* 8048D8E8  38 80 00 0C */	li r4, 0xc
/* 8048D8EC  38 C0 00 08 */	li r6, 8
/* 8048D8F0  4B F3 23 65 */	bl mMsg_Set_free_str
/* 8048D8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D8F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D8FC  7C 08 03 A6 */	mtlr r0
/* 8048D900  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D904  4E 80 00 20 */	blr 
