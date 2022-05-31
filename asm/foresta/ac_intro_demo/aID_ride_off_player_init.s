lbl_8042B274:
/* 8042B274  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042B278  7C 08 02 A6 */	mflr r0
/* 8042B27C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042B280  39 61 00 30 */	addi r11, r1, 0x30
/* 8042B284  4B C6 FC 51 */	bl func_8009AED4
/* 8042B288  7C 7D 1B 78 */	mr r29, r3
/* 8042B28C  7C 9E 23 78 */	mr r30, r4
/* 8042B290  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D00E@ha */
/* 8042B294  83 E3 01 80 */	lwz r31, 0x180(r3)
/* 8042B298  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 8042B29C  38 A0 00 04 */	li r5, 4
/* 8042B2A0  38 84 D0 0E */	addi r4, r4, 0xD00E /* 0x0000D00E@l */
/* 8042B2A4  4B F4 AA 9D */	bl Actor_info_fgName_search
/* 8042B2A8  90 7D 01 84 */	stw r3, 0x184(r29)
/* 8042B2AC  38 00 00 00 */	li r0, 0
/* 8042B2B0  7F C3 F3 78 */	mr r3, r30
/* 8042B2B4  90 1F 02 B8 */	stw r0, 0x2b8(r31)
/* 8042B2B8  4B FA FB F1 */	bl mPlib_request_main_demo_getoff_train_type1
/* 8042B2BC  38 00 00 00 */	li r0, 0
/* 8042B2C0  3C 60 80 68 */	lis r3, enter_pos@ha /* 0x8068416C@ha */
/* 8042B2C4  90 1D 01 A0 */	stw r0, 0x1a0(r29)
/* 8042B2C8  38 E3 41 6C */	addi r7, r3, enter_pos@l /* 0x8068416C@l */
/* 8042B2CC  38 61 00 08 */	addi r3, r1, 8
/* 8042B2D0  38 80 00 07 */	li r4, 7
/* 8042B2D4  80 C7 00 00 */	lwz r6, 0(r7)
/* 8042B2D8  80 A7 00 04 */	lwz r5, 4(r7)
/* 8042B2DC  80 07 00 08 */	lwz r0, 8(r7)
/* 8042B2E0  90 C1 00 08 */	stw r6, 8(r1)
/* 8042B2E4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8042B2E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042B2EC  4B F6 69 55 */	bl mCoBG_SetAttribute
/* 8042B2F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8042B2F4  4B C6 FC 2D */	bl func_8009AF20
/* 8042B2F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042B2FC  7C 08 03 A6 */	mtlr r0
/* 8042B300  38 21 00 30 */	addi r1, r1, 0x30
/* 8042B304  4E 80 00 20 */	blr 
