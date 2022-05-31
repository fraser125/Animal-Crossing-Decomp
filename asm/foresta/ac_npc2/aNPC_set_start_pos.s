lbl_80543C1C:
/* 80543C1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80543C20  7C 08 02 A6 */	mflr r0
/* 80543C24  90 01 00 54 */	stw r0, 0x54(r1)
/* 80543C28  39 61 00 50 */	addi r11, r1, 0x50
/* 80543C2C  4B B5 72 95 */	bl func_8009AEC0
/* 80543C30  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 80543C34  7C 79 1B 78 */	mr r25, r3
/* 80543C38  3B C4 2B 78 */	addi r30, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 80543C3C  38 61 00 08 */	addi r3, r1, 8
/* 80543C40  38 9E 13 44 */	addi r4, r30, 0x1344
/* 80543C44  3B 40 00 00 */	li r26, 0
/* 80543C48  38 A0 00 18 */	li r5, 0x18
/* 80543C4C  4B E7 6D D9 */	bl func_803BAA24
/* 80543C50  3B FE 13 B0 */	addi r31, r30, 0x13b0
/* 80543C54  3B A0 00 00 */	li r29, 0
/* 80543C58  3B 60 00 00 */	li r27, 0
lbl_80543C5C:
/* 80543C5C  57 40 10 3A */	slwi r0, r26, 2
/* 80543C60  7F 1F 00 2E */	lwzx r24, r31, r0
/* 80543C64  4B B1 90 91 */	bl fqrand
/* 80543C68  38 00 00 03 */	li r0, 3
/* 80543C6C  3B 80 00 00 */	li r28, 0
/* 80543C70  38 60 00 00 */	li r3, 0
/* 80543C74  7C 09 03 A6 */	mtctr r0
lbl_80543C78:
/* 80543C78  7C 18 1C 2E */	lfsx f0, r24, r3
/* 80543C7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80543C80  4C 41 13 82 */	cror 2, 1, 2
/* 80543C84  40 82 00 3C */	bne lbl_80543CC0
/* 80543C88  4B B1 90 6D */	bl fqrand
/* 80543C8C  3C 60 80 65 */	lis r3, lit_1015@ha /* 0x806493A0@ha */
/* 80543C90  57 84 18 38 */	slwi r4, r28, 3
/* 80543C94  38 A3 93 A0 */	addi r5, r3, lit_1015@l /* 0x806493A0@l */
/* 80543C98  38 61 00 08 */	addi r3, r1, 8
/* 80543C9C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80543CA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80543CA4  FC 00 00 1E */	fctiwz f0, f0
/* 80543CA8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80543CAC  83 61 00 24 */	lwz r27, 0x24(r1)
/* 80543CB0  57 60 10 3A */	slwi r0, r27, 2
/* 80543CB4  7C 04 02 14 */	add r0, r4, r0
/* 80543CB8  7F A3 00 2E */	lwzx r29, r3, r0
/* 80543CBC  48 00 00 10 */	b lbl_80543CCC
lbl_80543CC0:
/* 80543CC0  3B 9C 00 01 */	addi r28, r28, 1
/* 80543CC4  38 63 00 04 */	addi r3, r3, 4
/* 80543CC8  42 00 FF B0 */	bdnz lbl_80543C78
lbl_80543CCC:
/* 80543CCC  7F 23 CB 78 */	mr r3, r25
/* 80543CD0  7F A4 EB 78 */	mr r4, r29
/* 80543CD4  4B FF FE 29 */	bl aNPC_set_start_pos_sub
/* 80543CD8  2C 03 00 01 */	cmpwi r3, 1
/* 80543CDC  41 82 00 48 */	beq lbl_80543D24
/* 80543CE0  57 80 18 38 */	slwi r0, r28, 3
/* 80543CE4  38 81 00 08 */	addi r4, r1, 8
/* 80543CE8  7C 84 02 14 */	add r4, r4, r0
/* 80543CEC  80 64 00 00 */	lwz r3, 0(r4)
/* 80543CF0  80 04 00 04 */	lwz r0, 4(r4)
/* 80543CF4  7C 03 00 00 */	cmpw r3, r0
/* 80543CF8  40 82 00 14 */	bne lbl_80543D0C
/* 80543CFC  38 00 00 01 */	li r0, 1
/* 80543D00  7C 00 E0 30 */	slw r0, r0, r28
/* 80543D04  7F 5A 03 78 */	or r26, r26, r0
/* 80543D08  4B FF FF 54 */	b lbl_80543C5C
lbl_80543D0C:
/* 80543D0C  6B 63 00 01 */	xori r3, r27, 1
/* 80543D10  57 60 10 3A */	slwi r0, r27, 2
/* 80543D14  54 63 10 3A */	slwi r3, r3, 2
/* 80543D18  7C 64 18 2E */	lwzx r3, r4, r3
/* 80543D1C  7C 64 01 2E */	stwx r3, r4, r0
/* 80543D20  4B FF FF 3C */	b lbl_80543C5C
lbl_80543D24:
/* 80543D24  4B B1 8F D1 */	bl fqrand
/* 80543D28  3C 80 80 65 */	lis r4, lit_1462@ha /* 0x806493B0@ha */
/* 80543D2C  38 7E 13 D0 */	addi r3, r30, 0x13d0
/* 80543D30  C0 04 93 B0 */	lfs f0, lit_1462@l(r4)  /* 0x806493B0@l */
/* 80543D34  39 61 00 50 */	addi r11, r1, 0x50
/* 80543D38  EC 00 00 72 */	fmuls f0, f0, f1
/* 80543D3C  FC 00 00 1E */	fctiwz f0, f0
/* 80543D40  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80543D44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80543D48  54 00 08 3C */	slwi r0, r0, 1
/* 80543D4C  7C 03 02 AE */	lhax r0, r3, r0
/* 80543D50  B0 19 00 DE */	sth r0, 0xde(r25)
/* 80543D54  B0 19 00 36 */	sth r0, 0x36(r25)
/* 80543D58  B0 19 09 24 */	sth r0, 0x924(r25)
/* 80543D5C  4B B5 71 B1 */	bl func_8009AF0C
/* 80543D60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80543D64  7C 08 03 A6 */	mtlr r0
/* 80543D68  38 21 00 50 */	addi r1, r1, 0x50
/* 80543D6C  4E 80 00 20 */	blr 
