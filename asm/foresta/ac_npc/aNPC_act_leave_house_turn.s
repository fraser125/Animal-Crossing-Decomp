lbl_805339C8:
/* 805339C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805339CC  7C 08 02 A6 */	mflr r0
/* 805339D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805339D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805339D8  7C 7F 1B 78 */	mr r31, r3
/* 805339DC  4B FF D9 39 */	bl aNPC_act_turn
/* 805339E0  2C 03 00 00 */	cmpwi r3, 0
/* 805339E4  40 82 00 38 */	bne lbl_80533A1C
/* 805339E8  3C 60 81 1D */	lis r3, data_811D3978@ha /* 0x811D3978@ha */
/* 805339EC  7F E4 FB 78 */	mr r4, r31
/* 805339F0  38 63 39 78 */	addi r3, r3, data_811D3978@l /* 0x811D3978@l */
/* 805339F4  80 63 00 00 */	lwz r3, 0(r3)
/* 805339F8  48 00 6F 25 */	bl aNPC_reset_out_of_door_flg
/* 805339FC  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80533A00  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80533A04  2C 00 00 0E */	cmpwi r0, 0xe
/* 80533A08  40 82 00 0C */	bne lbl_80533A14
/* 80533A0C  38 00 00 00 */	li r0, 0
/* 80533A10  90 1F 08 F4 */	stw r0, 0x8f4(r31)
lbl_80533A14:
/* 80533A14  38 00 00 FF */	li r0, 0xff
/* 80533A18  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_80533A1C:
/* 80533A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533A24  7C 08 03 A6 */	mtlr r0
/* 80533A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80533A2C  4E 80 00 20 */	blr 
