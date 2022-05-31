lbl_804B7CC4:
/* 804B7CC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B7CC8  7C 08 02 A6 */	mflr r0
/* 804B7CCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B7CD0  39 61 00 30 */	addi r11, r1, 0x30
/* 804B7CD4  4B BE 31 FD */	bl func_8009AED0
/* 804B7CD8  7C 9D 23 78 */	mr r29, r4
/* 804B7CDC  7C 7C 1B 78 */	mr r28, r3
/* 804B7CE0  80 84 00 00 */	lwz r4, 0(r4)
/* 804B7CE4  7C BE 2B 78 */	mr r30, r5
/* 804B7CE8  80 1D 00 04 */	lwz r0, 4(r29)
/* 804B7CEC  38 61 00 08 */	addi r3, r1, 8
/* 804B7CF0  3B E0 00 00 */	li r31, 0
/* 804B7CF4  90 81 00 08 */	stw r4, 8(r1)
/* 804B7CF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B7CFC  80 1D 00 08 */	lwz r0, 8(r29)
/* 804B7D00  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B7D04  4B EE F7 2D */	bl mFI_GetUnitFG
/* 804B7D08  28 03 00 00 */	cmplwi r3, 0
/* 804B7D0C  41 82 00 1C */	beq lbl_804B7D28
/* 804B7D10  A0 83 00 00 */	lhz r4, 0(r3)
/* 804B7D14  7F 83 E3 78 */	mr r3, r28
/* 804B7D18  7F A5 EB 78 */	mr r5, r29
/* 804B7D1C  7F C6 F3 78 */	mr r6, r30
/* 804B7D20  4B FF FB B5 */	bl bIT_actor_ten_coin_entryR
/* 804B7D24  7C 7F 1B 78 */	mr r31, r3
lbl_804B7D28:
/* 804B7D28  7F E3 FB 78 */	mr r3, r31
/* 804B7D2C  39 61 00 30 */	addi r11, r1, 0x30
/* 804B7D30  4B BE 31 ED */	bl func_8009AF1C
/* 804B7D34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B7D38  7C 08 03 A6 */	mtlr r0
/* 804B7D3C  38 21 00 30 */	addi r1, r1, 0x30
/* 804B7D40  4E 80 00 20 */	blr 
