lbl_803F1BBC:
/* 803F1BBC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F1BC0  7C 08 02 A6 */	mflr r0
/* 803F1BC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F1BC8  39 61 00 40 */	addi r11, r1, 0x40
/* 803F1BCC  4B CA 93 09 */	bl func_8009AED4
/* 803F1BD0  7C 7E 1B 78 */	mr r30, r3
/* 803F1BD4  7C 9F 23 78 */	mr r31, r4
/* 803F1BD8  A0 83 00 00 */	lhz r4, 0(r3)
/* 803F1BDC  38 60 00 00 */	li r3, 0
/* 803F1BE0  28 04 A0 08 */	cmplwi r4, 0xa008
/* 803F1BE4  41 80 01 08 */	blt lbl_803F1CEC
/* 803F1BE8  28 04 A0 10 */	cmplwi r4, 0xa010
/* 803F1BEC  41 81 01 00 */	bgt lbl_803F1CEC
/* 803F1BF0  3C 64 FF FF */	addis r3, r4, 0xffff
/* 803F1BF4  38 00 00 03 */	li r0, 3
/* 803F1BF8  38 63 5F F8 */	addi r3, r3, 0x5ff8
/* 803F1BFC  2C 1F 00 00 */	cmpwi r31, 0
/* 803F1C00  7F A3 03 D6 */	divw r29, r3, r0
/* 803F1C04  40 80 00 28 */	bge lbl_803F1C2C
/* 803F1C08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F1C0C  38 00 00 00 */	li r0, 0
/* 803F1C10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F1C14  3B E0 00 01 */	li r31, 1
/* 803F1C18  3C 63 00 02 */	addis r3, r3, 2
/* 803F1C1C  98 03 13 8F */	stb r0, 0x138f(r3)
/* 803F1C20  98 03 13 90 */	stb r0, 0x1390(r3)
/* 803F1C24  98 03 13 91 */	stb r0, 0x1391(r3)
/* 803F1C28  98 03 13 92 */	stb r0, 0x1392(r3)
lbl_803F1C2C:
/* 803F1C2C  7F C3 F3 78 */	mr r3, r30
/* 803F1C30  7F E4 FB 78 */	mr r4, r31
/* 803F1C34  4B FF FE 99 */	bl func_803F1ACC
/* 803F1C38  2C 03 00 00 */	cmpwi r3, 0
/* 803F1C3C  40 82 00 14 */	bne lbl_803F1C50
/* 803F1C40  7F C3 F3 78 */	mr r3, r30
/* 803F1C44  7F A4 EB 78 */	mr r4, r29
/* 803F1C48  4B FF FE D5 */	bl mSN_ClearSnowmanData
/* 803F1C4C  48 00 00 9C */	b lbl_803F1CE8
lbl_803F1C50:
/* 803F1C50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F1C54  A0 1E 00 00 */	lhz r0, 0(r30)
/* 803F1C58  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803F1C5C  57 A6 10 3A */	slwi r6, r29, 2
/* 803F1C60  3C 80 80 64 */	lis r4, data_8064322C@ha /* 0x8064322C@ha */
/* 803F1C64  3C 60 80 64 */	lis r3, lit_410@ha /* 0x80643234@ha */
/* 803F1C68  7C 00 FA 14 */	add r0, r0, r31
/* 803F1C6C  7C A5 32 14 */	add r5, r5, r6
/* 803F1C70  C8 23 32 34 */	lfd f1, lit_410@l(r3)  /* 0x80643234@l */
/* 803F1C74  3C A5 00 02 */	addis r5, r5, 2
/* 803F1C78  B0 1E 00 00 */	sth r0, 0(r30)
/* 803F1C7C  3C 60 43 30 */	lis r3, 0x4330
/* 803F1C80  C0 44 32 2C */	lfs f2, data_8064322C@l(r4)  /* 0x8064322C@l */
/* 803F1C84  7F E9 03 A6 */	mtctr r31
/* 803F1C88  2C 1F 00 00 */	cmpwi r31, 0
/* 803F1C8C  38 A5 0E F8 */	addi r5, r5, 0xef8
/* 803F1C90  41 82 00 58 */	beq lbl_803F1CE8
lbl_803F1C94:
/* 803F1C94  88 05 00 01 */	lbz r0, 1(r5)
/* 803F1C98  90 61 00 08 */	stw r3, 8(r1)
/* 803F1C9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F1CA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803F1CA4  90 61 00 18 */	stw r3, 0x18(r1)
/* 803F1CA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 803F1CAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 803F1CB0  FC 00 00 1E */	fctiwz f0, f0
/* 803F1CB4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803F1CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1CBC  98 05 00 01 */	stb r0, 1(r5)
/* 803F1CC0  88 05 00 02 */	lbz r0, 2(r5)
/* 803F1CC4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803F1CC8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803F1CCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 803F1CD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 803F1CD4  FC 00 00 1E */	fctiwz f0, f0
/* 803F1CD8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803F1CDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F1CE0  98 05 00 02 */	stb r0, 2(r5)
/* 803F1CE4  42 00 FF B0 */	bdnz lbl_803F1C94
lbl_803F1CE8:
/* 803F1CE8  38 60 00 01 */	li r3, 1
lbl_803F1CEC:
/* 803F1CEC  39 61 00 40 */	addi r11, r1, 0x40
/* 803F1CF0  4B CA 92 31 */	bl func_8009AF20
/* 803F1CF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F1CF8  7C 08 03 A6 */	mtlr r0
/* 803F1CFC  38 21 00 40 */	addi r1, r1, 0x40
/* 803F1D00  4E 80 00 20 */	blr 
