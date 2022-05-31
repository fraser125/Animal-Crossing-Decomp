lbl_804EFE28:
/* 804EFE28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EFE2C  7C 08 02 A6 */	mflr r0
/* 804EFE30  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EFE34  39 61 00 20 */	addi r11, r1, 0x20
/* 804EFE38  4B BA B0 9D */	bl func_8009AED4
/* 804EFE3C  7C BF 2B 78 */	mr r31, r5
/* 804EFE40  7C 7D 1B 78 */	mr r29, r3
/* 804EFE44  7C 9E 23 78 */	mr r30, r4
/* 804EFE48  38 A0 00 00 */	li r5, 0
/* 804EFE4C  7F E6 FB 78 */	mr r6, r31
/* 804EFE50  4B FF FF 99 */	bl Player_actor_SetEffectHit_Swing_axe
/* 804EFE54  7F A3 EB 78 */	mr r3, r29
/* 804EFE58  7F C4 F3 78 */	mr r4, r30
/* 804EFE5C  7F E5 FB 78 */	mr r5, r31
/* 804EFE60  4B FF FF A9 */	bl Player_actor_SetEffectStart_Swing_axe
/* 804EFE64  39 61 00 20 */	addi r11, r1, 0x20
/* 804EFE68  4B BA B0 B9 */	bl func_8009AF20
/* 804EFE6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EFE70  7C 08 03 A6 */	mtlr r0
/* 804EFE74  38 21 00 20 */	addi r1, r1, 0x20
/* 804EFE78  4E 80 00 20 */	blr 
