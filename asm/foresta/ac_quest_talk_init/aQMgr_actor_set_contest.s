lbl_8048AC9C:
/* 8048AC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ACA0  7C 08 02 A6 */	mflr r0
/* 8048ACA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ACA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048ACAC  93 C1 00 08 */	stw r30, 8(r1)
/* 8048ACB0  7C 7E 1B 78 */	mr r30, r3
/* 8048ACB4  7F C4 F3 78 */	mr r4, r30
/* 8048ACB8  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8048ACBC  7F E3 FB 78 */	mr r3, r31
/* 8048ACC0  4B F5 7D 95 */	bl mQst_CopyQuestInfo
/* 8048ACC4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8048ACC8  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8048ACCC  90 7F 00 02 */	stw r3, 2(r31)
/* 8048ACD0  90 1F 00 06 */	stw r0, 6(r31)
/* 8048ACD4  A0 1E 00 18 */	lhz r0, 0x18(r30)
/* 8048ACD8  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8048ACDC  88 1E 00 00 */	lbz r0, 0(r30)
/* 8048ACE0  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8048ACE4  2C 00 00 03 */	cmpwi r0, 3
/* 8048ACE8  41 82 00 18 */	beq lbl_8048AD00
/* 8048ACEC  40 80 00 08 */	bge lbl_8048ACF4
/* 8048ACF0  48 00 00 38 */	b lbl_8048AD28
lbl_8048ACF4:
/* 8048ACF4  2C 00 00 06 */	cmpwi r0, 6
/* 8048ACF8  41 82 00 1C */	beq lbl_8048AD14
/* 8048ACFC  48 00 00 2C */	b lbl_8048AD28
lbl_8048AD00:
/* 8048AD00  38 00 00 01 */	li r0, 1
/* 8048AD04  98 1F 00 22 */	stb r0, 0x22(r31)
/* 8048AD08  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 8048AD0C  98 1F 00 24 */	stb r0, 0x24(r31)
/* 8048AD10  48 00 00 18 */	b lbl_8048AD28
lbl_8048AD14:
/* 8048AD14  38 60 00 02 */	li r3, 2
/* 8048AD18  38 00 00 00 */	li r0, 0
/* 8048AD1C  98 7F 00 22 */	stb r3, 0x22(r31)
/* 8048AD20  98 1F 00 24 */	stb r0, 0x24(r31)
/* 8048AD24  B0 1F 00 26 */	sth r0, 0x26(r31)
lbl_8048AD28:
/* 8048AD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048AD2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048AD30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048AD34  7C 08 03 A6 */	mtlr r0
/* 8048AD38  38 21 00 10 */	addi r1, r1, 0x10
/* 8048AD3C  4E 80 00 20 */	blr 
