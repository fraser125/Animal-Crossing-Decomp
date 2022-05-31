lbl_803BEDC0:
/* 803BEDC0  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 803BEDC4  7C 08 02 A6 */	mflr r0
/* 803BEDC8  90 01 01 54 */	stw r0, 0x154(r1)
/* 803BEDCC  39 61 01 50 */	addi r11, r1, 0x150
/* 803BEDD0  4B CD C1 05 */	bl func_8009AED4
/* 803BEDD4  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803BEDD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BEDDC  7C 9D 23 78 */	mr r29, r4
/* 803BEDE0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803BEDE4  7F C0 2A 14 */	add r30, r0, r5
/* 803BEDE8  38 80 00 0A */	li r4, 0xa
/* 803BEDEC  3C 7E 00 01 */	addis r3, r30, 1
/* 803BEDF0  38 63 B7 18 */	addi r3, r3, -18664
/* 803BEDF4  4B FF DA B1 */	bl mMl_chk_mail_free_space
/* 803BEDF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 803BEDFC  41 80 00 7C */	blt lbl_803BEE78
/* 803BEE00  38 61 00 0C */	addi r3, r1, 0xc
/* 803BEE04  4B FF D8 FD */	bl mMl_clear_mail
/* 803BEE08  7F A7 EB 78 */	mr r7, r29
/* 803BEE0C  38 61 00 3E */	addi r3, r1, 0x3e
/* 803BEE10  38 81 00 08 */	addi r4, r1, 8
/* 803BEE14  38 A1 01 16 */	addi r5, r1, 0x116
/* 803BEE18  38 C1 00 56 */	addi r6, r1, 0x56
/* 803BEE1C  4B FF 39 19 */	bl mHandbill_Load_HandbillFromRom
/* 803BEE20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BEE24  80 C1 00 08 */	lwz r6, 8(r1)
/* 803BEE28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BEE2C  38 80 00 00 */	li r4, 0
/* 803BEE30  38 A0 00 06 */	li r5, 6
/* 803BEE34  38 00 00 33 */	li r0, 0x33
/* 803BEE38  3C 63 00 02 */	addis r3, r3, 2
/* 803BEE3C  98 81 00 3A */	stb r4, 0x3a(r1)
/* 803BEE40  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 803BEE44  38 61 00 0C */	addi r3, r1, 0xc
/* 803BEE48  98 C1 00 3B */	stb r6, 0x3b(r1)
/* 803BEE4C  98 A1 00 3C */	stb r5, 0x3c(r1)
/* 803BEE50  98 01 00 3D */	stb r0, 0x3d(r1)
/* 803BEE54  4B FF D9 8D */	bl mMl_set_to_plname
/* 803BEE58  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803BEE5C  38 81 00 0C */	addi r4, r1, 0xc
/* 803BEE60  3C 63 00 01 */	addis r3, r3, 1
/* 803BEE64  38 63 B7 18 */	addi r3, r3, -18664
/* 803BEE68  7C 7E 1A 14 */	add r3, r30, r3
/* 803BEE6C  4B FF DB 09 */	bl mMl_copy_mail
/* 803BEE70  38 60 00 01 */	li r3, 1
/* 803BEE74  48 00 00 08 */	b lbl_803BEE7C
lbl_803BEE78:
/* 803BEE78  38 60 00 00 */	li r3, 0
lbl_803BEE7C:
/* 803BEE7C  39 61 01 50 */	addi r11, r1, 0x150
/* 803BEE80  4B CD C0 A1 */	bl func_8009AF20
/* 803BEE84  80 01 01 54 */	lwz r0, 0x154(r1)
/* 803BEE88  7C 08 03 A6 */	mtlr r0
/* 803BEE8C  38 21 01 50 */	addi r1, r1, 0x150
/* 803BEE90  4E 80 00 20 */	blr 
