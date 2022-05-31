lbl_8061CB44:
/* 8061CB44  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061CB48  7C 08 02 A6 */	mflr r0
/* 8061CB4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061CB50  39 61 00 40 */	addi r11, r1, 0x40
/* 8061CB54  4B A7 E3 6D */	bl func_8009AEC0
/* 8061CB58  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061CB5C  7C 7E 1B 78 */	mr r30, r3
/* 8061CB60  38 00 00 16 */	li r0, 0x16
/* 8061CB64  7C 9F 23 78 */	mr r31, r4
/* 8061CB68  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8061CB6C  B0 1E 00 00 */	sth r0, 0(r30)
/* 8061CB70  3F 23 00 02 */	addis r25, r3, 2
/* 8061CB74  80 19 60 9C */	lwz r0, 0x609c(r25)
/* 8061CB78  28 00 00 00 */	cmplwi r0, 0
/* 8061CB7C  41 82 00 94 */	beq lbl_8061CC10
/* 8061CB80  A8 1E 00 00 */	lha r0, 0(r30)
/* 8061CB84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8061CB88  41 82 00 88 */	beq lbl_8061CC10
/* 8061CB8C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8061CB90  3C 60 80 65 */	lis r3, lit_396@ha /* 0x8064CB40@ha */
/* 8061CB94  83 5E 00 10 */	lwz r26, 0x10(r30)
/* 8061CB98  3B 00 00 00 */	li r24, 0
/* 8061CB9C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061CBA0  3B A0 00 00 */	li r29, 0
/* 8061CBA4  83 7E 00 18 */	lwz r27, 0x18(r30)
/* 8061CBA8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8061CBAC  C0 03 CB 40 */	lfs f0, lit_396@l(r3)  /* 0x8064CB40@l */
/* 8061CBB0  93 41 00 14 */	stw r26, 0x14(r1)
/* 8061CBB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8061CBB8  93 61 00 1C */	stw r27, 0x1c(r1)
/* 8061CBBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8061CBC0  83 81 00 18 */	lwz r28, 0x18(r1)
lbl_8061CBC4:
/* 8061CBC4  93 41 00 08 */	stw r26, 8(r1)
/* 8061CBC8  7F E7 FB 78 */	mr r7, r31
/* 8061CBCC  80 B9 60 9C */	lwz r5, 0x609c(r25)
/* 8061CBD0  38 81 00 08 */	addi r4, r1, 8
/* 8061CBD4  93 81 00 0C */	stw r28, 0xc(r1)
/* 8061CBD8  7F A9 07 34 */	extsh r9, r29
/* 8061CBDC  38 60 00 0F */	li r3, 0xf
/* 8061CBE0  38 C0 00 00 */	li r6, 0
/* 8061CBE4  93 61 00 10 */	stw r27, 0x10(r1)
/* 8061CBE8  39 40 00 00 */	li r10, 0
/* 8061CBEC  81 85 00 00 */	lwz r12, 0(r5)
/* 8061CBF0  88 BE 00 0E */	lbz r5, 0xe(r30)
/* 8061CBF4  A1 1E 00 0C */	lhz r8, 0xc(r30)
/* 8061CBF8  7D 89 03 A6 */	mtctr r12
/* 8061CBFC  4E 80 04 21 */	bctrl 
/* 8061CC00  3B 18 00 01 */	addi r24, r24, 1
/* 8061CC04  3B BD 00 04 */	addi r29, r29, 4
/* 8061CC08  2C 18 00 05 */	cmpwi r24, 5
/* 8061CC0C  41 80 FF B8 */	blt lbl_8061CBC4
lbl_8061CC10:
/* 8061CC10  39 61 00 40 */	addi r11, r1, 0x40
/* 8061CC14  4B A7 E2 F9 */	bl func_8009AF0C
/* 8061CC18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061CC1C  7C 08 03 A6 */	mtlr r0
/* 8061CC20  38 21 00 40 */	addi r1, r1, 0x40
/* 8061CC24  4E 80 00 20 */	blr 
