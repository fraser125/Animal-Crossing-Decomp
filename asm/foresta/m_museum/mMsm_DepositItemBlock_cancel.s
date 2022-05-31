lbl_803C6C14:
/* 803C6C14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803C6C18  7C 08 02 A6 */	mflr r0
/* 803C6C1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803C6C20  39 61 00 40 */	addi r11, r1, 0x40
/* 803C6C24  4B CD 42 9D */	bl func_8009AEC0
/* 803C6C28  7C 7B 1B 78 */	mr r27, r3
/* 803C6C2C  7C 9C 23 78 */	mr r28, r4
/* 803C6C30  7C BD 2B 78 */	mr r29, r5
/* 803C6C34  7C DE 33 78 */	mr r30, r6
/* 803C6C38  7C FF 3B 78 */	mr r31, r7
/* 803C6C3C  7D 18 43 78 */	mr r24, r8
/* 803C6C40  4B C9 60 B5 */	bl fqrand
/* 803C6C44  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 803C6C48  3C 00 43 30 */	lis r0, 0x4330
/* 803C6C4C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803C6C50  3C 60 80 64 */	lis r3, lit_683@ha /* 0x80642854@ha */
/* 803C6C54  C8 43 28 54 */	lfd f2, lit_683@l(r3)  /* 0x80642854@l */
/* 803C6C58  3B 20 00 00 */	li r25, 0
/* 803C6C5C  90 01 00 08 */	stw r0, 8(r1)
/* 803C6C60  C8 01 00 08 */	lfd f0, 8(r1)
/* 803C6C64  EC 00 10 28 */	fsubs f0, f0, f2
/* 803C6C68  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C6C6C  FC 00 00 1E */	fctiwz f0, f0
/* 803C6C70  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803C6C74  83 41 00 14 */	lwz r26, 0x14(r1)
/* 803C6C78  48 00 00 88 */	b lbl_803C6D00
lbl_803C6C7C:
/* 803C6C7C  3B 00 00 00 */	li r24, 0
lbl_803C6C80:
/* 803C6C80  A0 1F 00 00 */	lhz r0, 0(r31)
/* 803C6C84  7C 00 C6 30 */	sraw r0, r0, r24
/* 803C6C88  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803C6C8C  2C 00 00 01 */	cmpwi r0, 1
/* 803C6C90  41 82 00 50 */	beq lbl_803C6CE0
/* 803C6C94  A0 1B 00 00 */	lhz r0, 0(r27)
/* 803C6C98  28 00 00 00 */	cmplwi r0, 0
/* 803C6C9C  40 82 00 44 */	bne lbl_803C6CE0
/* 803C6CA0  88 1D 00 03 */	lbz r0, 3(r29)
/* 803C6CA4  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 803C6CA8  4B FC 97 71 */	bl mCoBG_CheckHole_OrgAttr
/* 803C6CAC  2C 03 00 00 */	cmpwi r3, 0
/* 803C6CB0  41 82 00 30 */	beq lbl_803C6CE0
/* 803C6CB4  2C 1A 00 00 */	cmpwi r26, 0
/* 803C6CB8  40 82 00 24 */	bne lbl_803C6CDC
/* 803C6CBC  B3 9B 00 00 */	sth r28, 0(r27)
/* 803C6CC0  38 00 00 01 */	li r0, 1
/* 803C6CC4  7C 00 C0 30 */	slw r0, r0, r24
/* 803C6CC8  3B 20 00 10 */	li r25, 0x10
/* 803C6CCC  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803C6CD0  7C 60 03 78 */	or r0, r3, r0
/* 803C6CD4  B0 1E 00 00 */	sth r0, 0(r30)
/* 803C6CD8  48 00 00 1C */	b lbl_803C6CF4
lbl_803C6CDC:
/* 803C6CDC  3B 5A FF FF */	addi r26, r26, -1
lbl_803C6CE0:
/* 803C6CE0  3B 18 00 01 */	addi r24, r24, 1
/* 803C6CE4  3B BD 00 04 */	addi r29, r29, 4
/* 803C6CE8  2C 18 00 10 */	cmpwi r24, 0x10
/* 803C6CEC  3B 7B 00 02 */	addi r27, r27, 2
/* 803C6CF0  41 80 FF 90 */	blt lbl_803C6C80
lbl_803C6CF4:
/* 803C6CF4  3B DE 00 02 */	addi r30, r30, 2
/* 803C6CF8  3B FF 00 02 */	addi r31, r31, 2
/* 803C6CFC  3B 39 00 01 */	addi r25, r25, 1
lbl_803C6D00:
/* 803C6D00  2C 19 00 10 */	cmpwi r25, 0x10
/* 803C6D04  41 80 FF 78 */	blt lbl_803C6C7C
/* 803C6D08  39 61 00 40 */	addi r11, r1, 0x40
/* 803C6D0C  4B CD 42 01 */	bl func_8009AF0C
/* 803C6D10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803C6D14  7C 08 03 A6 */	mtlr r0
/* 803C6D18  38 21 00 40 */	addi r1, r1, 0x40
/* 803C6D1C  4E 80 00 20 */	blr 
