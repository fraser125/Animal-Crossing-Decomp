lbl_80397D38:
/* 80397D38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80397D3C  7C 08 02 A6 */	mflr r0
/* 80397D40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80397D44  39 61 00 20 */	addi r11, r1, 0x20
/* 80397D48  4B D0 31 81 */	bl func_8009AEC8
/* 80397D4C  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80397D50  3C A0 80 65 */	lis r5, data_80651258@ha /* 0x80651258@ha */
/* 80397D54  80 E4 61 38 */	lwz r7, debug_mode@l(r4)  /* 0x81166138@l */
/* 80397D58  3B E5 12 58 */	addi r31, r5, data_80651258@l /* 0x80651258@l */
/* 80397D5C  7C 7C 1B 78 */	mr r28, r3
/* 80397D60  38 80 00 00 */	li r4, 0
/* 80397D64  88 07 00 01 */	lbz r0, 1(r7)
/* 80397D68  38 A0 00 80 */	li r5, 0x80
/* 80397D6C  89 07 00 00 */	lbz r8, 0(r7)
/* 80397D70  38 C0 00 80 */	li r6, 0x80
/* 80397D74  1C 00 00 06 */	mulli r0, r0, 6
/* 80397D78  38 E0 00 80 */	li r7, 0x80
/* 80397D7C  39 08 FF FF */	addi r8, r8, -1
/* 80397D80  7C 08 02 14 */	add r0, r8, r0
/* 80397D84  55 1E 20 36 */	slwi r30, r8, 4
/* 80397D88  54 1D 20 36 */	slwi r29, r0, 4
/* 80397D8C  4B CC 34 15 */	bl gfxprint_color
/* 80397D90  7F 83 E3 78 */	mr r3, r28
/* 80397D94  38 80 00 03 */	li r4, 3
/* 80397D98  38 A0 00 08 */	li r5, 8
/* 80397D9C  4B CC 34 75 */	bl gfxprint_locate8x8
/* 80397DA0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397DA4  38 BF 01 B8 */	addi r5, r31, 0x1b8
/* 80397DA8  80 E3 61 38 */	lwz r7, debug_mode@l(r3)  /* 0x81166138@l */
/* 80397DAC  38 DF 03 00 */	addi r6, r31, 0x300
/* 80397DB0  7F 83 E3 78 */	mr r3, r28
/* 80397DB4  38 9F 03 98 */	addi r4, r31, 0x398
/* 80397DB8  88 E7 00 01 */	lbz r7, 1(r7)
/* 80397DBC  54 E0 10 3A */	slwi r0, r7, 2
/* 80397DC0  7C A5 38 AE */	lbzx r5, r5, r7
/* 80397DC4  7C C6 00 2E */	lwzx r6, r6, r0
/* 80397DC8  4C C6 31 82 */	crclr 6
/* 80397DCC  4B CC 3B 51 */	bl gfxprint_printf
/* 80397DD0  7F 83 E3 78 */	mr r3, r28
/* 80397DD4  38 80 00 00 */	li r4, 0
/* 80397DD8  38 A0 00 80 */	li r5, 0x80
/* 80397DDC  38 C0 00 80 */	li r6, 0x80
/* 80397DE0  38 E0 00 80 */	li r7, 0x80
/* 80397DE4  4B CC 33 BD */	bl gfxprint_color
/* 80397DE8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80397DEC  3B 40 00 00 */	li r26, 0
/* 80397DF0  3B 63 61 38 */	addi r27, r3, debug_mode@l /* 0x81166138@l */
lbl_80397DF4:
/* 80397DF4  80 7B 00 00 */	lwz r3, 0(r27)
/* 80397DF8  88 03 00 02 */	lbz r0, 2(r3)
/* 80397DFC  7C 00 07 74 */	extsb r0, r0
/* 80397E00  7C 1A 00 00 */	cmpw r26, r0
/* 80397E04  40 82 00 1C */	bne lbl_80397E20
/* 80397E08  7F 83 E3 78 */	mr r3, r28
/* 80397E0C  38 80 00 00 */	li r4, 0
/* 80397E10  38 A0 00 FF */	li r5, 0xff
/* 80397E14  38 C0 00 FF */	li r6, 0xff
/* 80397E18  38 E0 00 FF */	li r7, 0xff
/* 80397E1C  4B CC 33 85 */	bl gfxprint_color
lbl_80397E20:
/* 80397E20  7F 83 E3 78 */	mr r3, r28
/* 80397E24  38 BA 00 09 */	addi r5, r26, 9
/* 80397E28  38 80 00 03 */	li r4, 3
/* 80397E2C  4B CC 33 E5 */	bl gfxprint_locate8x8
/* 80397E30  7C 1A EA 14 */	add r0, r26, r29
/* 80397E34  80 BB 00 00 */	lwz r5, 0(r27)
/* 80397E38  54 04 08 3C */	slwi r4, r0, 1
/* 80397E3C  7F 83 E3 78 */	mr r3, r28
/* 80397E40  38 04 00 14 */	addi r0, r4, 0x14
/* 80397E44  38 9F 03 A0 */	addi r4, r31, 0x3a0
/* 80397E48  7C C5 02 AE */	lhax r6, r5, r0
/* 80397E4C  7C BA F2 14 */	add r5, r26, r30
/* 80397E50  4C C6 31 82 */	crclr 6
/* 80397E54  4B CC 3A C9 */	bl gfxprint_printf
/* 80397E58  80 7B 00 00 */	lwz r3, 0(r27)
/* 80397E5C  88 03 00 02 */	lbz r0, 2(r3)
/* 80397E60  7C 00 07 74 */	extsb r0, r0
/* 80397E64  7C 1A 00 00 */	cmpw r26, r0
/* 80397E68  40 82 00 1C */	bne lbl_80397E84
/* 80397E6C  7F 83 E3 78 */	mr r3, r28
/* 80397E70  38 80 00 00 */	li r4, 0
/* 80397E74  38 A0 00 80 */	li r5, 0x80
/* 80397E78  38 C0 00 80 */	li r6, 0x80
/* 80397E7C  38 E0 00 80 */	li r7, 0x80
/* 80397E80  4B CC 33 21 */	bl gfxprint_color
lbl_80397E84:
/* 80397E84  3B 5A 00 01 */	addi r26, r26, 1
/* 80397E88  2C 1A 00 10 */	cmpwi r26, 0x10
/* 80397E8C  41 80 FF 68 */	blt lbl_80397DF4
/* 80397E90  39 61 00 20 */	addi r11, r1, 0x20
/* 80397E94  4B D0 30 81 */	bl func_8009AF14
/* 80397E98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80397E9C  7C 08 03 A6 */	mtlr r0
/* 80397EA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80397EA4  4E 80 00 20 */	blr 
