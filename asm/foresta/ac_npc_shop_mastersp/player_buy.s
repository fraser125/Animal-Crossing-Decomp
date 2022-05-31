lbl_8057CAD0:
/* 8057CAD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8057CAD4  7C 08 02 A6 */	mflr r0
/* 8057CAD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8057CADC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8057CAE0  7C 7F 1B 78 */	mr r31, r3
/* 8057CAE4  7C 83 23 78 */	mr r3, r4
/* 8057CAE8  4B E5 CB 59 */	bl get_player_actor_withoutCheck
/* 8057CAEC  A8 9F 09 AE */	lha r4, 0x9ae(r31)
/* 8057CAF0  7C 67 1B 78 */	mr r7, r3
/* 8057CAF4  2C 04 00 00 */	cmpwi r4, 0
/* 8057CAF8  40 81 00 14 */	ble lbl_8057CB0C
/* 8057CAFC  38 04 FF FF */	addi r0, r4, -1
/* 8057CB00  38 60 00 00 */	li r3, 0
/* 8057CB04  B0 1F 09 AE */	sth r0, 0x9ae(r31)
/* 8057CB08  48 00 00 90 */	b lbl_8057CB98
lbl_8057CB0C:
/* 8057CB0C  28 07 00 00 */	cmplwi r7, 0
/* 8057CB10  41 82 00 84 */	beq lbl_8057CB94
/* 8057CB14  80 07 13 8C */	lwz r0, 0x138c(r7)
/* 8057CB18  2C 00 00 01 */	cmpwi r0, 1
/* 8057CB1C  40 82 00 78 */	bne lbl_8057CB94
/* 8057CB20  80 C7 13 98 */	lwz r6, 0x1398(r7)
/* 8057CB24  38 61 00 0C */	addi r3, r1, 0xc
/* 8057CB28  80 07 13 9C */	lwz r0, 0x139c(r7)
/* 8057CB2C  38 81 00 08 */	addi r4, r1, 8
/* 8057CB30  38 A1 00 10 */	addi r5, r1, 0x10
/* 8057CB34  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8057CB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CB3C  80 07 13 A0 */	lwz r0, 0x13a0(r7)
/* 8057CB40  90 01 00 18 */	stw r0, 0x18(r1)
/* 8057CB44  4B E2 88 25 */	bl mFI_Wpos2UtNum
/* 8057CB48  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057CB4C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8057CB50  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8057CB54  80 81 00 08 */	lwz r4, 8(r1)
/* 8057CB58  3C A5 00 02 */	addis r5, r5, 2
/* 8057CB5C  80 A5 60 60 */	lwz r5, 0x6060(r5)
/* 8057CB60  81 85 00 04 */	lwz r12, 4(r5)
/* 8057CB64  7D 89 03 A6 */	mtctr r12
/* 8057CB68  4E 80 04 21 */	bctrl 
/* 8057CB6C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8057CB70  41 82 00 24 */	beq lbl_8057CB94
/* 8057CB74  28 00 FE 10 */	cmplwi r0, 0xfe10
/* 8057CB78  41 82 00 1C */	beq lbl_8057CB94
/* 8057CB7C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8057CB80  41 82 00 14 */	beq lbl_8057CB94
/* 8057CB84  38 00 00 0A */	li r0, 0xa
/* 8057CB88  38 60 00 01 */	li r3, 1
/* 8057CB8C  B0 1F 09 AE */	sth r0, 0x9ae(r31)
/* 8057CB90  48 00 00 08 */	b lbl_8057CB98
lbl_8057CB94:
/* 8057CB94  38 60 00 00 */	li r3, 0
lbl_8057CB98:
/* 8057CB98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8057CB9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8057CBA0  7C 08 03 A6 */	mtlr r0
/* 8057CBA4  38 21 00 30 */	addi r1, r1, 0x30
/* 8057CBA8  4E 80 00 20 */	blr 
