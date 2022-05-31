lbl_804BF7BC:
/* 804BF7BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BF7C0  7C 08 02 A6 */	mflr r0
/* 804BF7C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BF7C8  39 61 00 30 */	addi r11, r1, 0x30
/* 804BF7CC  4B BD B7 05 */	bl func_8009AED0
/* 804BF7D0  7C 9D 23 78 */	mr r29, r4
/* 804BF7D4  7C 7C 1B 78 */	mr r28, r3
/* 804BF7D8  80 84 00 00 */	lwz r4, 0(r4)
/* 804BF7DC  7C BE 2B 78 */	mr r30, r5
/* 804BF7E0  80 1D 00 04 */	lwz r0, 4(r29)
/* 804BF7E4  38 61 00 08 */	addi r3, r1, 8
/* 804BF7E8  3B E0 00 00 */	li r31, 0
/* 804BF7EC  90 81 00 08 */	stw r4, 8(r1)
/* 804BF7F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BF7F4  80 1D 00 08 */	lwz r0, 8(r29)
/* 804BF7F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BF7FC  4B EE 7C 35 */	bl mFI_GetUnitFG
/* 804BF800  28 03 00 00 */	cmplwi r3, 0
/* 804BF804  41 82 00 1C */	beq lbl_804BF820
/* 804BF808  A0 83 00 00 */	lhz r4, 0(r3)
/* 804BF80C  7F 83 E3 78 */	mr r3, r28
/* 804BF810  7F A5 EB 78 */	mr r5, r29
/* 804BF814  7F C6 F3 78 */	mr r6, r30
/* 804BF818  4B FF FB B5 */	bl bIT_actor_ten_coin_entryR
/* 804BF81C  7C 7F 1B 78 */	mr r31, r3
lbl_804BF820:
/* 804BF820  7F E3 FB 78 */	mr r3, r31
/* 804BF824  39 61 00 30 */	addi r11, r1, 0x30
/* 804BF828  4B BD B6 F5 */	bl func_8009AF1C
/* 804BF82C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BF830  7C 08 03 A6 */	mtlr r0
/* 804BF834  38 21 00 30 */	addi r1, r1, 0x30
/* 804BF838  4E 80 00 20 */	blr 
