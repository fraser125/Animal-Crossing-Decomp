lbl_80494D1C:
/* 80494D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494D20  7C 08 02 A6 */	mflr r0
/* 80494D24  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CECA4@ha */
/* 80494D28  38 80 00 03 */	li r4, 3
/* 80494D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494D30  38 A5 EC A4 */	addi r5, r5, l_normal_info@l /* 0x811CECA4@l */
/* 80494D34  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80494D38  4B FF E6 91 */	bl aQMgr_set_give_and_take_mode_TAKE
/* 80494D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494D40  7C 08 03 A6 */	mtlr r0
/* 80494D44  38 21 00 10 */	addi r1, r1, 0x10
/* 80494D48  4E 80 00 20 */	blr 
