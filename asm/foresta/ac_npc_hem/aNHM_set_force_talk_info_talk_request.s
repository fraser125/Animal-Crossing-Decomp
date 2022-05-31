lbl_805927B0:
/* 805927B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805927B4  7C 08 02 A6 */	mflr r0
/* 805927B8  38 60 2C 51 */	li r3, 0x2c51
/* 805927BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805927C0  4B E0 5D 55 */	bl mDemo_Set_msg_num
/* 805927C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805927C8  38 80 22 3A */	li r4, 0x223a
/* 805927CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805927D0  38 A0 00 00 */	li r5, 0
/* 805927D4  3C 63 00 02 */	addis r3, r3, 2
/* 805927D8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805927DC  4B E4 E7 2D */	bl mPr_SetFreePossessionItem
/* 805927E0  38 60 00 1D */	li r3, 0x1d
/* 805927E4  4B E5 9C 8D */	bl mSC_trophy_set
/* 805927E8  4B E0 EC 75 */	bl mFAs_ClearGoodField
/* 805927EC  38 60 00 01 */	li r3, 1
/* 805927F0  4B E0 60 11 */	bl mDemo_Set_talk_return_get_golden_axe_demo
/* 805927F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805927F8  7C 08 03 A6 */	mtlr r0
/* 805927FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80592800  4E 80 00 20 */	blr 
