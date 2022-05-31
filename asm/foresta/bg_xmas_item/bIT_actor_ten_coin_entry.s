lbl_804C6BD4:
/* 804C6BD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C6BD8  7C 08 02 A6 */	mflr r0
/* 804C6BDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C6BE0  39 61 00 30 */	addi r11, r1, 0x30
/* 804C6BE4  4B BD 42 ED */	bl func_8009AED0
/* 804C6BE8  7C 9D 23 78 */	mr r29, r4
/* 804C6BEC  7C 7C 1B 78 */	mr r28, r3
/* 804C6BF0  80 84 00 00 */	lwz r4, 0(r4)
/* 804C6BF4  7C BE 2B 78 */	mr r30, r5
/* 804C6BF8  80 1D 00 04 */	lwz r0, 4(r29)
/* 804C6BFC  38 61 00 08 */	addi r3, r1, 8
/* 804C6C00  3B E0 00 00 */	li r31, 0
/* 804C6C04  90 81 00 08 */	stw r4, 8(r1)
/* 804C6C08  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C6C0C  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C6C10  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C6C14  4B EE 08 1D */	bl mFI_GetUnitFG
/* 804C6C18  28 03 00 00 */	cmplwi r3, 0
/* 804C6C1C  41 82 00 1C */	beq lbl_804C6C38
/* 804C6C20  A0 83 00 00 */	lhz r4, 0(r3)
/* 804C6C24  7F 83 E3 78 */	mr r3, r28
/* 804C6C28  7F A5 EB 78 */	mr r5, r29
/* 804C6C2C  7F C6 F3 78 */	mr r6, r30
/* 804C6C30  4B FF FB B5 */	bl bIT_actor_ten_coin_entryR
/* 804C6C34  7C 7F 1B 78 */	mr r31, r3
lbl_804C6C38:
/* 804C6C38  7F E3 FB 78 */	mr r3, r31
/* 804C6C3C  39 61 00 30 */	addi r11, r1, 0x30
/* 804C6C40  4B BD 42 DD */	bl func_8009AF1C
/* 804C6C44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C6C48  7C 08 03 A6 */	mtlr r0
/* 804C6C4C  38 21 00 30 */	addi r1, r1, 0x30
/* 804C6C50  4E 80 00 20 */	blr 
