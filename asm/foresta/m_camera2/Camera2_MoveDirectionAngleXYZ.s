lbl_8037DDD4:
/* 8037DDD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037DDD8  7C 08 02 A6 */	mflr r0
/* 8037DDDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037DDE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8037DDE4  4B D1 D0 E5 */	bl func_8009AEC8
/* 8037DDE8  2C 05 00 00 */	cmpwi r5, 0
/* 8037DDEC  7C 9A 23 78 */	mr r26, r4
/* 8037DDF0  3B E3 1B C0 */	addi r31, r3, 0x1bc0
/* 8037DDF4  3B C3 1B C6 */	addi r30, r3, 0x1bc6
/* 8037DDF8  41 82 00 30 */	beq lbl_8037DE28
/* 8037DDFC  A8 7A 00 00 */	lha r3, 0(r26)
/* 8037DE00  38 00 00 00 */	li r0, 0
/* 8037DE04  B0 7F 00 00 */	sth r3, 0(r31)
/* 8037DE08  A8 7A 00 02 */	lha r3, 2(r26)
/* 8037DE0C  B0 7F 00 02 */	sth r3, 2(r31)
/* 8037DE10  A8 7A 00 04 */	lha r3, 4(r26)
/* 8037DE14  B0 7F 00 04 */	sth r3, 4(r31)
/* 8037DE18  B0 1E 00 00 */	sth r0, 0(r30)
/* 8037DE1C  B0 1E 00 02 */	sth r0, 2(r30)
/* 8037DE20  B0 1E 00 04 */	sth r0, 4(r30)
/* 8037DE24  48 00 00 94 */	b lbl_8037DEB8
lbl_8037DE28:
/* 8037DE28  3C 60 80 64 */	lis r3, lit_521@ha /* 0x80641370@ha */
/* 8037DE2C  A8 9A 00 00 */	lha r4, 0(r26)
/* 8037DE30  38 A3 13 70 */	addi r5, r3, lit_521@l /* 0x80641370@l */
/* 8037DE34  AB BF 00 00 */	lha r29, 0(r31)
/* 8037DE38  C0 25 00 00 */	lfs f1, 0(r5)
/* 8037DE3C  7F E3 FB 78 */	mr r3, r31
/* 8037DE40  AB 9F 00 02 */	lha r28, 2(r31)
/* 8037DE44  38 A0 2A F8 */	li r5, 0x2af8
/* 8037DE48  AB 7F 00 04 */	lha r27, 4(r31)
/* 8037DE4C  38 C0 00 64 */	li r6, 0x64
/* 8037DE50  48 03 D4 C1 */	bl add_calc_short_angle2
/* 8037DE54  3C 60 80 64 */	lis r3, lit_521@ha /* 0x80641370@ha */
/* 8037DE58  A8 9A 00 02 */	lha r4, 2(r26)
/* 8037DE5C  38 A3 13 70 */	addi r5, r3, lit_521@l /* 0x80641370@l */
/* 8037DE60  38 C0 00 4B */	li r6, 0x4b
/* 8037DE64  C0 25 00 00 */	lfs f1, 0(r5)
/* 8037DE68  38 7F 00 02 */	addi r3, r31, 2
/* 8037DE6C  38 A0 2A F8 */	li r5, 0x2af8
/* 8037DE70  48 03 D4 A1 */	bl add_calc_short_angle2
/* 8037DE74  3C 60 80 64 */	lis r3, lit_521@ha /* 0x80641370@ha */
/* 8037DE78  A8 9A 00 04 */	lha r4, 4(r26)
/* 8037DE7C  38 A3 13 70 */	addi r5, r3, lit_521@l /* 0x80641370@l */
/* 8037DE80  38 C0 00 96 */	li r6, 0x96
/* 8037DE84  C0 25 00 00 */	lfs f1, 0(r5)
/* 8037DE88  38 7F 00 04 */	addi r3, r31, 4
/* 8037DE8C  38 A0 2A F8 */	li r5, 0x2af8
/* 8037DE90  48 03 D4 81 */	bl add_calc_short_angle2
/* 8037DE94  A8 1F 00 00 */	lha r0, 0(r31)
/* 8037DE98  7C 1D 00 50 */	subf r0, r29, r0
/* 8037DE9C  B0 1E 00 00 */	sth r0, 0(r30)
/* 8037DEA0  A8 1F 00 02 */	lha r0, 2(r31)
/* 8037DEA4  7C 1C 00 50 */	subf r0, r28, r0
/* 8037DEA8  B0 1E 00 02 */	sth r0, 2(r30)
/* 8037DEAC  A8 1F 00 04 */	lha r0, 4(r31)
/* 8037DEB0  7C 1B 00 50 */	subf r0, r27, r0
/* 8037DEB4  B0 1E 00 04 */	sth r0, 4(r30)
lbl_8037DEB8:
/* 8037DEB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8037DEBC  4B D1 D0 59 */	bl func_8009AF14
/* 8037DEC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037DEC4  7C 08 03 A6 */	mtlr r0
/* 8037DEC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8037DECC  4E 80 00 20 */	blr 
