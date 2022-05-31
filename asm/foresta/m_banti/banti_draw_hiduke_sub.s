lbl_80377E10:
/* 80377E10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80377E14  7C 08 02 A6 */	mflr r0
/* 80377E18  90 01 00 44 */	stw r0, 0x44(r1)
/* 80377E1C  39 61 00 40 */	addi r11, r1, 0x40
/* 80377E20  4B D2 30 A5 */	bl func_8009AEC4
/* 80377E24  1D 08 00 0C */	mulli r8, r8, 0xc
/* 80377E28  7C 9C 23 78 */	mr r28, r4
/* 80377E2C  3C 80 80 65 */	lis r4, set_pos_table_672@ha /* 0x8064F4C4@ha */
/* 80377E30  83 5C 00 00 */	lwz r26, 0(r28)
/* 80377E34  7C 7B 1B 78 */	mr r27, r3
/* 80377E38  38 04 F4 C4 */	addi r0, r4, set_pos_table_672@l /* 0x8064F4C4@l */
/* 80377E3C  7C BD 2B 78 */	mr r29, r5
/* 80377E40  7C DE 33 78 */	mr r30, r6
/* 80377E44  7C FF 3B 78 */	mr r31, r7
/* 80377E48  7F 20 42 14 */	add r25, r0, r8
/* 80377E4C  48 09 43 89 */	bl Matrix_push
/* 80377E50  C0 39 00 00 */	lfs f1, 0(r25)
/* 80377E54  38 60 00 01 */	li r3, 1
/* 80377E58  C0 59 00 04 */	lfs f2, 4(r25)
/* 80377E5C  C0 79 00 08 */	lfs f3, 8(r25)
/* 80377E60  48 09 44 A1 */	bl Matrix_translate
/* 80377E64  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80377E68  80 1A 02 D4 */	lwz r0, 0x2d4(r26)
/* 80377E6C  88 63 00 01 */	lbz r3, 1(r3)
/* 80377E70  54 63 30 32 */	slwi r3, r3, 6
/* 80377E74  7C 03 00 51 */	subf. r0, r3, r0
/* 80377E78  90 1A 02 D4 */	stw r0, 0x2d4(r26)
/* 80377E7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80377E80  41 82 00 88 */	beq lbl_80377F08
/* 80377E84  38 00 00 00 */	li r0, 0
/* 80377E88  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 80377E8C  90 01 00 08 */	stw r0, 8(r1)
/* 80377E90  3C 60 80 37 */	lis r3, banti_draw_before@ha /* 0x80377D34@ha */
/* 80377E94  3C 80 80 65 */	lis r4, data_8064F448@ha /* 0x8064F448@ha */
/* 80377E98  57 CB 10 3A */	slwi r11, r30, 2
/* 80377E9C  93 61 00 0C */	stw r27, 0xc(r1)
/* 80377EA0  3B C4 F4 48 */	addi r30, r4, data_8064F448@l /* 0x8064F448@l */
/* 80377EA4  38 C3 7D 34 */	addi r6, r3, banti_draw_before@l /* 0x80377D34@l */
/* 80377EA8  7F 83 E3 78 */	mr r3, r28
/* 80377EAC  80 9D 00 AC */	lwz r4, 0xac(r29)
/* 80377EB0  39 85 00 20 */	addi r12, r5, 0x0020 /* 0xDB060020@l */
/* 80377EB4  39 45 00 24 */	addi r10, r5, 0x24
/* 80377EB8  57 E0 10 3A */	slwi r0, r31, 2
/* 80377EBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80377EC0  7F A4 EB 78 */	mr r4, r29
/* 80377EC4  38 A1 00 08 */	addi r5, r1, 8
/* 80377EC8  39 01 00 0C */	addi r8, r1, 0xc
/* 80377ECC  83 BB 00 00 */	lwz r29, 0(r27)
/* 80377ED0  38 E0 00 00 */	li r7, 0
/* 80377ED4  39 20 00 00 */	li r9, 0
/* 80377ED8  3B 9D 00 08 */	addi r28, r29, 8
/* 80377EDC  93 9B 00 00 */	stw r28, 0(r27)
/* 80377EE0  91 9D 00 00 */	stw r12, 0(r29)
/* 80377EE4  7D 7E 58 2E */	lwzx r11, r30, r11
/* 80377EE8  91 7D 00 04 */	stw r11, 4(r29)
/* 80377EEC  81 9B 00 00 */	lwz r12, 0(r27)
/* 80377EF0  39 6C 00 08 */	addi r11, r12, 8
/* 80377EF4  91 7B 00 00 */	stw r11, 0(r27)
/* 80377EF8  91 4C 00 00 */	stw r10, 0(r12)
/* 80377EFC  7C 1E 00 2E */	lwzx r0, r30, r0
/* 80377F00  90 0C 00 04 */	stw r0, 4(r12)
/* 80377F04  4B FF 94 B9 */	bl cKF_Si3_draw_SV_R_child
lbl_80377F08:
/* 80377F08  48 09 43 0D */	bl Matrix_pull
/* 80377F0C  39 61 00 40 */	addi r11, r1, 0x40
/* 80377F10  4B D2 30 01 */	bl func_8009AF10
/* 80377F14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80377F18  7C 08 03 A6 */	mtlr r0
/* 80377F1C  38 21 00 40 */	addi r1, r1, 0x40
/* 80377F20  4E 80 00 20 */	blr 
