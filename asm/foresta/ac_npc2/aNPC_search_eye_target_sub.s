lbl_8053CAE4:
/* 8053CAE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053CAE8  7C 08 02 A6 */	mflr r0
/* 8053CAEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053CAF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8053CAF4  4B B5 E3 E1 */	bl func_8009AED4
/* 8053CAF8  7C 7D 1B 78 */	mr r29, r3
/* 8053CAFC  7C BF 2B 78 */	mr r31, r5
/* 8053CB00  7C DE 33 78 */	mr r30, r6
/* 8053CB04  38 7D 00 48 */	addi r3, r29, 0x48
/* 8053CB08  4B E7 E6 61 */	bl search_position_angleX
/* 8053CB0C  7C 03 00 D0 */	neg r0, r3
/* 8053CB10  7F E4 FB 78 */	mr r4, r31
/* 8053CB14  7C 1F 07 34 */	extsh r31, r0
/* 8053CB18  38 7D 00 28 */	addi r3, r29, 0x28
/* 8053CB1C  4B E7 E6 15 */	bl search_position_angleY
/* 8053CB20  A8 1E 00 00 */	lha r0, 0(r30)
/* 8053CB24  A8 9E 00 02 */	lha r4, 2(r30)
/* 8053CB28  7F FF 02 14 */	add r31, r31, r0
/* 8053CB2C  7F E0 07 34 */	extsh r0, r31
/* 8053CB30  7F C4 18 50 */	subf r30, r4, r3
/* 8053CB34  2C 00 E8 00 */	cmpwi r0, -6144
/* 8053CB38  40 80 00 08 */	bge lbl_8053CB40
/* 8053CB3C  3B E0 E8 00 */	li r31, -6144
lbl_8053CB40:
/* 8053CB40  7F C0 07 35 */	extsh. r0, r30
/* 8053CB44  7F C0 07 34 */	extsh r0, r30
/* 8053CB48  7C 60 00 D0 */	neg r3, r0
/* 8053CB4C  41 80 00 08 */	blt lbl_8053CB54
/* 8053CB50  7C 03 03 78 */	mr r3, r0
lbl_8053CB54:
/* 8053CB54  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8053CB58  40 81 00 18 */	ble lbl_8053CB70
/* 8053CB5C  7F C0 07 35 */	extsh. r0, r30
/* 8053CB60  40 80 00 0C */	bge lbl_8053CB6C
/* 8053CB64  3B C0 D0 00 */	li r30, -12288
/* 8053CB68  48 00 00 08 */	b lbl_8053CB70
lbl_8053CB6C:
/* 8053CB6C  3B C0 30 00 */	li r30, 0x3000
lbl_8053CB70:
/* 8053CB70  A8 BD 08 B8 */	lha r5, 0x8b8(r29)
/* 8053CB74  38 7D 08 B4 */	addi r3, r29, 0x8b4
/* 8053CB78  7F E4 07 34 */	extsh r4, r31
/* 8053CB7C  4B E7 DF C9 */	bl chase_angle
/* 8053CB80  A8 BD 08 BA */	lha r5, 0x8ba(r29)
/* 8053CB84  38 7D 08 B6 */	addi r3, r29, 0x8b6
/* 8053CB88  7F C4 07 34 */	extsh r4, r30
/* 8053CB8C  4B E7 DF B9 */	bl chase_angle
/* 8053CB90  39 61 00 20 */	addi r11, r1, 0x20
/* 8053CB94  4B B5 E3 8D */	bl func_8009AF20
/* 8053CB98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053CB9C  7C 08 03 A6 */	mtlr r0
/* 8053CBA0  38 21 00 20 */	addi r1, r1, 0x20
/* 8053CBA4  4E 80 00 20 */	blr 
