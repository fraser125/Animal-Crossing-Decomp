lbl_8049A9E4:
/* 8049A9E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049A9E8  7C 08 02 A6 */	mflr r0
/* 8049A9EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049A9F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8049A9F4  4B C0 04 D5 */	bl func_8009AEC8
/* 8049A9F8  7C 7A 1B 78 */	mr r26, r3
/* 8049A9FC  7C 9B 23 78 */	mr r27, r4
/* 8049AA00  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8049AA04  7C BC 2B 78 */	mr r28, r5
/* 8049AA08  2C 00 00 00 */	cmpwi r0, 0
/* 8049AA0C  41 81 00 0C */	bgt lbl_8049AA18
/* 8049AA10  38 60 00 00 */	li r3, 0
/* 8049AA14  48 00 00 A8 */	b lbl_8049AABC
lbl_8049AA18:
/* 8049AA18  4B BC 22 DD */	bl fqrand
/* 8049AA1C  80 9A 00 20 */	lwz r4, 0x20(r26)
/* 8049AA20  3C 00 43 30 */	lis r0, 0x4330
/* 8049AA24  90 01 00 08 */	stw r0, 8(r1)
/* 8049AA28  3C 60 80 64 */	lis r3, data_80644D14@ha /* 0x80644D14@ha */
/* 8049AA2C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8049AA30  C8 43 4D 14 */	lfd f2, data_80644D14@l(r3)  /* 0x80644D14@l */
/* 8049AA34  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049AA38  3B E0 00 02 */	li r31, 2
/* 8049AA3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049AA40  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049AA44  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049AA48  FC 00 00 1E */	fctiwz f0, f0
/* 8049AA4C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8049AA50  83 A1 00 14 */	lwz r29, 0x14(r1)
lbl_8049AA54:
/* 8049AA54  3B C0 00 02 */	li r30, 2
lbl_8049AA58:
/* 8049AA58  7F 43 D3 78 */	mr r3, r26
/* 8049AA5C  7F C4 F3 78 */	mr r4, r30
/* 8049AA60  7F E5 FB 78 */	mr r5, r31
/* 8049AA64  4B FF FF 59 */	bl aSOI_get_live_ut_sub
/* 8049AA68  2C 03 00 01 */	cmpwi r3, 1
/* 8049AA6C  40 82 00 34 */	bne lbl_8049AAA0
/* 8049AA70  2C 1D 00 00 */	cmpwi r29, 0
/* 8049AA74  41 81 00 28 */	bgt lbl_8049AA9C
/* 8049AA78  93 DB 00 00 */	stw r30, 0(r27)
/* 8049AA7C  7F 43 D3 78 */	mr r3, r26
/* 8049AA80  7F C4 F3 78 */	mr r4, r30
/* 8049AA84  7F E5 FB 78 */	mr r5, r31
/* 8049AA88  93 FC 00 00 */	stw r31, 0(r28)
/* 8049AA8C  38 C0 00 00 */	li r6, 0
/* 8049AA90  4B FF FE C9 */	bl aSOI_set_live_ut
/* 8049AA94  38 60 00 01 */	li r3, 1
/* 8049AA98  48 00 00 24 */	b lbl_8049AABC
lbl_8049AA9C:
/* 8049AA9C  3B BD FF FF */	addi r29, r29, -1
lbl_8049AAA0:
/* 8049AAA0  3B DE 00 01 */	addi r30, r30, 1
/* 8049AAA4  2C 1E 00 0E */	cmpwi r30, 0xe
/* 8049AAA8  41 80 FF B0 */	blt lbl_8049AA58
/* 8049AAAC  3B FF 00 01 */	addi r31, r31, 1
/* 8049AAB0  2C 1F 00 0E */	cmpwi r31, 0xe
/* 8049AAB4  41 80 FF A0 */	blt lbl_8049AA54
/* 8049AAB8  38 60 00 00 */	li r3, 0
lbl_8049AABC:
/* 8049AABC  39 61 00 30 */	addi r11, r1, 0x30
/* 8049AAC0  4B C0 04 55 */	bl func_8009AF14
/* 8049AAC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049AAC8  7C 08 03 A6 */	mtlr r0
/* 8049AACC  38 21 00 30 */	addi r1, r1, 0x30
/* 8049AAD0  4E 80 00 20 */	blr 
