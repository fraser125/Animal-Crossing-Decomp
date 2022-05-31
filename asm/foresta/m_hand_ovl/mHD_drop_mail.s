lbl_805DE0E4:
/* 805DE0E4  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 805DE0E8  7C 08 02 A6 */	mflr r0
/* 805DE0EC  90 01 01 54 */	stw r0, 0x154(r1)
/* 805DE0F0  39 61 01 50 */	addi r11, r1, 0x150
/* 805DE0F4  4B AB CD E1 */	bl func_8009AED4
/* 805DE0F8  7C 7D 1B 78 */	mr r29, r3
/* 805DE0FC  7C 9E 23 78 */	mr r30, r4
/* 805DE100  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DE104  7F C3 F3 78 */	mr r3, r30
/* 805DE108  83 E4 09 80 */	lwz r31, 0x980(r4)
/* 805DE10C  4B DD E6 95 */	bl mMl_check_not_used_mail
/* 805DE110  2C 03 00 01 */	cmpwi r3, 1
/* 805DE114  40 82 00 34 */	bne lbl_805DE148
/* 805DE118  7F C3 F3 78 */	mr r3, r30
/* 805DE11C  38 9F 02 36 */	addi r4, r31, 0x236
/* 805DE120  4B DD E8 55 */	bl mMl_copy_mail
/* 805DE124  38 7F 02 36 */	addi r3, r31, 0x236
/* 805DE128  4B DD E5 D9 */	bl mMl_clear_mail
/* 805DE12C  38 60 00 01 */	li r3, 1
/* 805DE130  38 00 00 00 */	li r0, 0
/* 805DE134  B0 7F 00 14 */	sth r3, 0x14(r31)
/* 805DE138  38 60 00 60 */	li r3, 0x60
/* 805DE13C  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805DE140  48 04 FB C5 */	bl sAdo_SysTrgStart
/* 805DE144  48 00 00 5C */	b lbl_805DE1A0
lbl_805DE148:
/* 805DE148  80 1D 00 04 */	lwz r0, 4(r29)
/* 805DE14C  7F A3 EB 78 */	mr r3, r29
/* 805DE150  80 FD 00 2C */	lwz r7, 0x2c(r29)
/* 805DE154  38 A0 00 02 */	li r5, 2
/* 805DE158  1C 80 00 48 */	mulli r4, r0, 0x48
/* 805DE15C  38 C0 00 00 */	li r6, 0
/* 805DE160  38 84 00 54 */	addi r4, r4, 0x54
/* 805DE164  7C 87 22 14 */	add r4, r7, r4
/* 805DE168  48 01 8C 19 */	bl mTG_mark_main
/* 805DE16C  7F C4 F3 78 */	mr r4, r30
/* 805DE170  38 61 00 08 */	addi r3, r1, 8
/* 805DE174  4B DD E8 01 */	bl mMl_copy_mail
/* 805DE178  7F C3 F3 78 */	mr r3, r30
/* 805DE17C  38 9F 02 36 */	addi r4, r31, 0x236
/* 805DE180  4B DD E7 F5 */	bl mMl_copy_mail
/* 805DE184  38 7F 02 36 */	addi r3, r31, 0x236
/* 805DE188  38 81 00 08 */	addi r4, r1, 8
/* 805DE18C  4B DD E7 E9 */	bl mMl_copy_mail
/* 805DE190  38 00 00 02 */	li r0, 2
/* 805DE194  38 60 04 1C */	li r3, 0x41c
/* 805DE198  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805DE19C  48 04 FB 69 */	bl sAdo_SysTrgStart
lbl_805DE1A0:
/* 805DE1A0  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805DE1A4  7F A3 EB 78 */	mr r3, r29
/* 805DE1A8  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805DE1AC  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805DE1B0  7D 89 03 A6 */	mtctr r12
/* 805DE1B4  4E 80 04 21 */	bctrl 
/* 805DE1B8  39 61 01 50 */	addi r11, r1, 0x150
/* 805DE1BC  4B AB CD 65 */	bl func_8009AF20
/* 805DE1C0  80 01 01 54 */	lwz r0, 0x154(r1)
/* 805DE1C4  7C 08 03 A6 */	mtlr r0
/* 805DE1C8  38 21 01 50 */	addi r1, r1, 0x150
/* 805DE1CC  4E 80 00 20 */	blr 
