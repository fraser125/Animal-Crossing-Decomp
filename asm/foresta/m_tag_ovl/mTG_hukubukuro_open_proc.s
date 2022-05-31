lbl_805F7D48:
/* 805F7D48  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805F7D4C  7C 08 02 A6 */	mflr r0
/* 805F7D50  90 01 00 64 */	stw r0, 0x64(r1)
/* 805F7D54  39 61 00 60 */	addi r11, r1, 0x60
/* 805F7D58  4B AA 31 65 */	bl func_8009AEBC
/* 805F7D5C  7C 7A 1B 78 */	mr r26, r3
/* 805F7D60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F7D64  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 805F7D68  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805F7D6C  3F E5 00 02 */	addis r31, r5, 2
/* 805F7D70  7C 9B 23 78 */	mr r27, r4
/* 805F7D74  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 805F7D78  3A E0 00 00 */	li r23, 0
/* 805F7D7C  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F7D80  3B 20 00 00 */	li r25, 0
/* 805F7D84  3B 04 00 68 */	addi r24, r4, 0x68
/* 805F7D88  38 63 00 08 */	addi r3, r3, 8
/* 805F7D8C  4B FF 7D D5 */	bl mTG_get_table_idx
/* 805F7D90  38 00 00 0F */	li r0, 0xf
/* 805F7D94  38 81 00 10 */	addi r4, r1, 0x10
/* 805F7D98  38 A0 00 00 */	li r5, 0
/* 805F7D9C  7C 09 03 A6 */	mtctr r0
lbl_805F7DA0:
/* 805F7DA0  A0 18 00 00 */	lhz r0, 0(r24)
/* 805F7DA4  28 00 00 00 */	cmplwi r0, 0
/* 805F7DA8  40 82 00 18 */	bne lbl_805F7DC0
/* 805F7DAC  3A F7 00 01 */	addi r23, r23, 1
/* 805F7DB0  7C A4 C9 2E */	stwx r5, r4, r25
/* 805F7DB4  2C 17 00 03 */	cmpwi r23, 3
/* 805F7DB8  3B 39 00 04 */	addi r25, r25, 4
/* 805F7DBC  41 82 00 10 */	beq lbl_805F7DCC
lbl_805F7DC0:
/* 805F7DC0  38 A5 00 01 */	addi r5, r5, 1
/* 805F7DC4  3B 18 00 02 */	addi r24, r24, 2
/* 805F7DC8  42 00 FF D8 */	bdnz lbl_805F7DA0
lbl_805F7DCC:
/* 805F7DCC  2C 17 00 03 */	cmpwi r23, 3
/* 805F7DD0  41 82 00 18 */	beq lbl_805F7DE8
/* 805F7DD4  7F 43 D3 78 */	mr r3, r26
/* 805F7DD8  7F 64 DB 78 */	mr r4, r27
/* 805F7DDC  38 A0 00 0D */	li r5, 0xd
/* 805F7DE0  4B FF B0 41 */	bl mTG_open_warning_window
/* 805F7DE4  48 00 02 5C */	b lbl_805F8040
lbl_805F7DE8:
/* 805F7DE8  80 BF 61 3C */	lwz r5, 0x613c(r31)
/* 805F7DEC  54 60 08 3C */	slwi r0, r3, 1
/* 805F7DF0  80 DA 00 2C */	lwz r6, 0x2c(r26)
/* 805F7DF4  38 80 00 46 */	li r4, 0x46
/* 805F7DF8  7C A5 02 14 */	add r5, r5, r0
/* 805F7DFC  38 00 00 01 */	li r0, 1
/* 805F7E00  83 A6 09 88 */	lwz r29, 0x988(r6)
/* 805F7E04  A0 A5 00 68 */	lhz r5, 0x68(r5)
/* 805F7E08  7C 7D 1A 14 */	add r3, r29, r3
/* 805F7E0C  B0 9D 03 F8 */	sth r4, 0x3f8(r29)
/* 805F7E10  28 05 2E 00 */	cmplwi r5, 0x2e00
/* 805F7E14  98 03 03 E3 */	stb r0, 0x3e3(r3)
/* 805F7E18  40 82 01 34 */	bne lbl_805F7F4C
/* 805F7E1C  3B 60 00 00 */	li r27, 0
/* 805F7E20  4B A6 4E D5 */	bl fqrand
/* 805F7E24  3C 80 80 65 */	lis r4, lit_678@ha /* 0x8064B85C@ha */
/* 805F7E28  38 60 00 03 */	li r3, 3
/* 805F7E2C  C0 04 B8 5C */	lfs f0, lit_678@l(r4)  /* 0x8064B85C@l */
/* 805F7E30  3B C0 00 00 */	li r30, 0
/* 805F7E34  3B 20 00 00 */	li r25, 0
/* 805F7E38  EC 00 00 72 */	fmuls f0, f0, f1
/* 805F7E3C  FC 00 00 1E */	fctiwz f0, f0
/* 805F7E40  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805F7E44  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805F7E48  7C 04 1B D6 */	divw r0, r4, r3
/* 805F7E4C  7C 00 19 D6 */	mullw r0, r0, r3
/* 805F7E50  7F 80 20 50 */	subf r28, r0, r4
lbl_805F7E54:
/* 805F7E54  7C 1E E0 00 */	cmpw r30, r28
/* 805F7E58  40 82 00 20 */	bne lbl_805F7E78
/* 805F7E5C  4B A6 4E 99 */	bl fqrand
/* 805F7E60  3C 60 80 65 */	lis r3, lit_654@ha /* 0x8064B848@ha */
/* 805F7E64  C0 03 B8 48 */	lfs f0, lit_654@l(r3)  /* 0x8064B848@l */
/* 805F7E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7E6C  4C 40 13 82 */	cror 2, 0, 2
/* 805F7E70  40 82 00 08 */	bne lbl_805F7E78
/* 805F7E74  3B 60 00 01 */	li r27, 1
lbl_805F7E78:
/* 805F7E78  2C 1B 00 00 */	cmpwi r27, 0
/* 805F7E7C  41 82 00 48 */	beq lbl_805F7EC4
/* 805F7E80  4B A6 4E 75 */	bl fqrand
/* 805F7E84  3C 80 80 65 */	lis r4, lit_876@ha /* 0x8064B870@ha */
/* 805F7E88  38 61 00 08 */	addi r3, r1, 8
/* 805F7E8C  C0 04 B8 70 */	lfs f0, lit_876@l(r4)  /* 0x8064B870@l */
/* 805F7E90  3B 60 00 00 */	li r27, 0
/* 805F7E94  EC 00 00 72 */	fmuls f0, f0, f1
/* 805F7E98  FC 00 00 1E */	fctiwz f0, f0
/* 805F7E9C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805F7EA0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805F7EA4  54 80 E8 04 */	slwi r0, r4, 0x1d
/* 805F7EA8  54 84 0F FE */	srwi r4, r4, 0x1f
/* 805F7EAC  7C 04 00 50 */	subf r0, r4, r0
/* 805F7EB0  54 00 18 3E */	rotlwi r0, r0, 3
/* 805F7EB4  7C 80 22 14 */	add r4, r0, r4
/* 805F7EB8  38 04 22 4C */	addi r0, r4, 0x224c
/* 805F7EBC  7C 03 CB 2E */	sthx r0, r3, r25
/* 805F7EC0  48 00 00 78 */	b lbl_805F7F38
lbl_805F7EC4:
/* 805F7EC4  4B A6 4E 31 */	bl fqrand
/* 805F7EC8  3C 60 80 65 */	lis r3, lit_3070@ha /* 0x8064B8CC@ha */
/* 805F7ECC  C0 03 B8 CC */	lfs f0, lit_3070@l(r3)  /* 0x8064B8CC@l */
/* 805F7ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7ED4  40 80 00 0C */	bge lbl_805F7EE0
/* 805F7ED8  39 00 00 02 */	li r8, 2
/* 805F7EDC  48 00 00 38 */	b lbl_805F7F14
lbl_805F7EE0:
/* 805F7EE0  3C 60 80 65 */	lis r3, lit_654@ha /* 0x8064B848@ha */
/* 805F7EE4  C0 03 B8 48 */	lfs f0, lit_654@l(r3)  /* 0x8064B848@l */
/* 805F7EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7EEC  40 80 00 0C */	bge lbl_805F7EF8
/* 805F7EF0  39 00 00 03 */	li r8, 3
/* 805F7EF4  48 00 00 20 */	b lbl_805F7F14
lbl_805F7EF8:
/* 805F7EF8  3C 60 80 65 */	lis r3, lit_875@ha /* 0x8064B86C@ha */
/* 805F7EFC  C0 03 B8 6C */	lfs f0, lit_875@l(r3)  /* 0x8064B86C@l */
/* 805F7F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7F04  40 80 00 0C */	bge lbl_805F7F10
/* 805F7F08  39 00 00 04 */	li r8, 4
/* 805F7F0C  48 00 00 08 */	b lbl_805F7F14
lbl_805F7F10:
/* 805F7F10  39 00 00 00 */	li r8, 0
lbl_805F7F14:
/* 805F7F14  38 81 00 08 */	addi r4, r1, 8
/* 805F7F18  7F C7 F3 78 */	mr r7, r30
/* 805F7F1C  7C 86 23 78 */	mr r6, r4
/* 805F7F20  38 60 00 00 */	li r3, 0
/* 805F7F24  7C 84 CA 14 */	add r4, r4, r25
/* 805F7F28  38 A0 00 01 */	li r5, 1
/* 805F7F2C  39 20 00 02 */	li r9, 2
/* 805F7F30  39 40 00 00 */	li r10, 0
/* 805F7F34  4B DF 04 A9 */	bl mSP_SelectRandomItem_New
lbl_805F7F38:
/* 805F7F38  3B DE 00 01 */	addi r30, r30, 1
/* 805F7F3C  3B 39 00 02 */	addi r25, r25, 2
/* 805F7F40  2C 1E 00 03 */	cmpwi r30, 3
/* 805F7F44  41 80 FF 10 */	blt lbl_805F7E54
/* 805F7F48  48 00 00 94 */	b lbl_805F7FDC
lbl_805F7F4C:
/* 805F7F4C  38 00 2A 23 */	li r0, 0x2a23
/* 805F7F50  B0 01 00 08 */	sth r0, 8(r1)
/* 805F7F54  4B A6 4D A1 */	bl fqrand
/* 805F7F58  3C 60 80 65 */	lis r3, lit_876@ha /* 0x8064B870@ha */
/* 805F7F5C  C0 03 B8 70 */	lfs f0, lit_876@l(r3)  /* 0x8064B870@l */
/* 805F7F60  EC 00 00 72 */	fmuls f0, f0, f1
/* 805F7F64  FC 00 00 1E */	fctiwz f0, f0
/* 805F7F68  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805F7F6C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 805F7F70  54 60 E8 04 */	slwi r0, r3, 0x1d
/* 805F7F74  54 63 0F FE */	srwi r3, r3, 0x1f
/* 805F7F78  7C 03 00 50 */	subf r0, r3, r0
/* 805F7F7C  54 00 18 3E */	rotlwi r0, r0, 3
/* 805F7F80  7E E0 1A 14 */	add r23, r0, r3
/* 805F7F84  4B A6 4D 71 */	bl fqrand
/* 805F7F88  3C 80 80 65 */	lis r4, lit_1086@ha /* 0x8064B8B4@ha */
/* 805F7F8C  38 60 00 07 */	li r3, 7
/* 805F7F90  C0 04 B8 B4 */	lfs f0, lit_1086@l(r4)  /* 0x8064B8B4@l */
/* 805F7F94  EC 00 00 72 */	fmuls f0, f0, f1
/* 805F7F98  FC 00 00 1E */	fctiwz f0, f0
/* 805F7F9C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805F7FA0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 805F7FA4  7C 04 1B D6 */	divw r0, r4, r3
/* 805F7FA8  7C 00 19 D6 */	mullw r0, r0, r3
/* 805F7FAC  7C C0 20 50 */	subf r6, r0, r4
/* 805F7FB0  7C 06 B8 00 */	cmpw r6, r23
/* 805F7FB4  41 80 00 08 */	blt lbl_805F7FBC
/* 805F7FB8  38 C6 00 01 */	addi r6, r6, 1
lbl_805F7FBC:
/* 805F7FBC  3C 60 80 66 */	lis r3, mSP_gc_famicom_table@ha /* 0x8065D97C@ha */
/* 805F7FC0  56 E5 08 3C */	slwi r5, r23, 1
/* 805F7FC4  38 83 D9 7C */	addi r4, r3, mSP_gc_famicom_table@l /* 0x8065D97C@l */
/* 805F7FC8  54 C0 08 3C */	slwi r0, r6, 1
/* 805F7FCC  7C 64 2A 2E */	lhzx r3, r4, r5
/* 805F7FD0  7C 04 02 2E */	lhzx r0, r4, r0
/* 805F7FD4  B0 61 00 0A */	sth r3, 0xa(r1)
/* 805F7FD8  B0 01 00 0C */	sth r0, 0xc(r1)
lbl_805F7FDC:
/* 805F7FDC  3B C1 00 10 */	addi r30, r1, 0x10
/* 805F7FE0  3B 21 00 08 */	addi r25, r1, 8
/* 805F7FE4  3A E0 00 00 */	li r23, 0
/* 805F7FE8  3B 60 00 00 */	li r27, 0
/* 805F7FEC  3B 80 00 00 */	li r28, 0
lbl_805F7FF0:
/* 805F7FF0  7F 1E E0 2E */	lwzx r24, r30, r28
/* 805F7FF4  38 C0 00 00 */	li r6, 0
/* 805F7FF8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F7FFC  7C B9 DA 2E */	lhzx r5, r25, r27
/* 805F8000  7F 04 C3 78 */	mr r4, r24
/* 805F8004  4B DE 8E 25 */	bl mPr_SetPossessionItem
/* 805F8008  38 77 00 02 */	addi r3, r23, 2
/* 805F800C  3A F7 00 01 */	addi r23, r23, 1
/* 805F8010  38 18 03 E3 */	addi r0, r24, 0x3e3
/* 805F8014  3B 9C 00 04 */	addi r28, r28, 4
/* 805F8018  2C 17 00 03 */	cmpwi r23, 3
/* 805F801C  7C 7D 01 AE */	stbx r3, r29, r0
/* 805F8020  3B 7B 00 02 */	addi r27, r27, 2
/* 805F8024  41 80 FF CC */	blt lbl_805F7FF0
/* 805F8028  7F 43 D3 78 */	mr r3, r26
/* 805F802C  38 80 00 00 */	li r4, 0
/* 805F8030  38 A0 00 00 */	li r5, 0
/* 805F8034  4B FF 77 81 */	bl mTG_return_tag_init
/* 805F8038  38 60 00 02 */	li r3, 2
/* 805F803C  48 03 5C C9 */	bl sAdo_SysTrgStart
lbl_805F8040:
/* 805F8040  39 61 00 60 */	addi r11, r1, 0x60
/* 805F8044  4B AA 2E C5 */	bl func_8009AF08
/* 805F8048  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805F804C  7C 08 03 A6 */	mtlr r0
/* 805F8050  38 21 00 60 */	addi r1, r1, 0x60
/* 805F8054  4E 80 00 20 */	blr 
