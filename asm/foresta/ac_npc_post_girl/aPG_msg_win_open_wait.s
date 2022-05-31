lbl_8056C990:
/* 8056C990  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056C994  7C 08 02 A6 */	mflr r0
/* 8056C998  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056C99C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C9A0  4B B2 E5 35 */	bl func_8009AED4
/* 8056C9A4  7C 7D 1B 78 */	mr r29, r3
/* 8056C9A8  7C 9E 23 78 */	mr r30, r4
/* 8056C9AC  4B E5 2C FD */	bl func_803BF6A8
/* 8056C9B0  7C 7F 1B 78 */	mr r31, r3
/* 8056C9B4  4B E5 2D B1 */	bl mMsg_Check_not_series_main_wait
/* 8056C9B8  2C 03 00 01 */	cmpwi r3, 1
/* 8056C9BC  40 82 00 24 */	bne lbl_8056C9E0
/* 8056C9C0  7F E3 FB 78 */	mr r3, r31
/* 8056C9C4  4B E5 43 89 */	bl mMsg_Unset_LockContinue
/* 8056C9C8  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8056C9CC  7F A3 EB 78 */	mr r3, r29
/* 8056C9D0  7F C4 F3 78 */	mr r4, r30
/* 8056C9D4  80 BD 09 98 */	lwz r5, 0x998(r29)
/* 8056C9D8  7D 89 03 A6 */	mtctr r12
/* 8056C9DC  4E 80 04 21 */	bctrl 
lbl_8056C9E0:
/* 8056C9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C9E4  4B B2 E5 3D */	bl func_8009AF20
/* 8056C9E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056C9EC  7C 08 03 A6 */	mtlr r0
/* 8056C9F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8056C9F4  4E 80 00 20 */	blr 
