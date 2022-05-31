lbl_804B0940:
/* 804B0940  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B0944  7C 08 02 A6 */	mflr r0
/* 804B0948  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B094C  39 61 00 30 */	addi r11, r1, 0x30
/* 804B0950  4B BE A5 81 */	bl func_8009AED0
/* 804B0954  7C 9D 23 78 */	mr r29, r4
/* 804B0958  7C 7C 1B 78 */	mr r28, r3
/* 804B095C  80 84 00 00 */	lwz r4, 0(r4)
/* 804B0960  7C BE 2B 78 */	mr r30, r5
/* 804B0964  80 1D 00 04 */	lwz r0, 4(r29)
/* 804B0968  38 61 00 08 */	addi r3, r1, 8
/* 804B096C  3B E0 00 00 */	li r31, 0
/* 804B0970  90 81 00 08 */	stw r4, 8(r1)
/* 804B0974  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B0978  80 1D 00 08 */	lwz r0, 8(r29)
/* 804B097C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B0980  4B EF 6A B1 */	bl mFI_GetUnitFG
/* 804B0984  28 03 00 00 */	cmplwi r3, 0
/* 804B0988  41 82 00 1C */	beq lbl_804B09A4
/* 804B098C  A0 83 00 00 */	lhz r4, 0(r3)
/* 804B0990  7F 83 E3 78 */	mr r3, r28
/* 804B0994  7F A5 EB 78 */	mr r5, r29
/* 804B0998  7F C6 F3 78 */	mr r6, r30
/* 804B099C  4B FF FB B5 */	bl bIT_actor_ten_coin_entryR
/* 804B09A0  7C 7F 1B 78 */	mr r31, r3
lbl_804B09A4:
/* 804B09A4  7F E3 FB 78 */	mr r3, r31
/* 804B09A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804B09AC  4B BE A5 71 */	bl func_8009AF1C
/* 804B09B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B09B4  7C 08 03 A6 */	mtlr r0
/* 804B09B8  38 21 00 30 */	addi r1, r1, 0x30
/* 804B09BC  4E 80 00 20 */	blr 
