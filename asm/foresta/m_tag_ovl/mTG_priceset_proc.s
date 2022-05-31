lbl_805F6E80:
/* 805F6E80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F6E84  7C 08 02 A6 */	mflr r0
/* 805F6E88  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F6E8C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6E90  4B AA 40 45 */	bl func_8009AED4
/* 805F6E94  7C 7D 1B 78 */	mr r29, r3
/* 805F6E98  7C 9E 23 78 */	mr r30, r4
/* 805F6E9C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805F6EA0  38 C0 00 27 */	li r6, 0x27
/* 805F6EA4  83 E5 09 7C */	lwz r31, 0x97c(r5)
/* 805F6EA8  80 1F 00 00 */	lwz r0, 0(r31)
/* 805F6EAC  1C A0 00 B4 */	mulli r5, r0, 0xb4
/* 805F6EB0  38 A5 00 08 */	addi r5, r5, 8
/* 805F6EB4  7C BF 2A 14 */	add r5, r31, r5
/* 805F6EB8  4B FF B3 15 */	bl mTG_chg_tag_func2
/* 805F6EBC  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 805F6EC0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F6EC4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F6EC8  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 805F6ECC  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 805F6ED0  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805F6ED4  3C C4 00 01 */	addis r6, r4, 1
/* 805F6ED8  54 00 18 38 */	slwi r0, r0, 3
/* 805F6EDC  80 83 09 9C */	lwz r4, 0x99c(r3)
/* 805F6EE0  7C 66 2A 14 */	add r3, r6, r5
/* 805F6EE4  7C A3 02 14 */	add r5, r3, r0
/* 805F6EE8  38 60 00 33 */	li r3, 0x33
/* 805F6EEC  80 05 C2 C0 */	lwz r0, -0x3d40(r5)
/* 805F6EF0  90 04 00 1C */	stw r0, 0x1c(r4)
/* 805F6EF4  48 03 6E 11 */	bl sAdo_SysTrgStart
/* 805F6EF8  39 61 00 20 */	addi r11, r1, 0x20
/* 805F6EFC  4B AA 40 25 */	bl func_8009AF20
/* 805F6F00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F6F04  7C 08 03 A6 */	mtlr r0
/* 805F6F08  38 21 00 20 */	addi r1, r1, 0x20
/* 805F6F0C  4E 80 00 20 */	blr 
