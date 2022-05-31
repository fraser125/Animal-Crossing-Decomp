lbl_8039EC20:
/* 8039EC20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8039EC24  7C 08 02 A6 */	mflr r0
/* 8039EC28  90 01 00 44 */	stw r0, 0x44(r1)
/* 8039EC2C  39 61 00 40 */	addi r11, r1, 0x40
/* 8039EC30  4B CF C2 A5 */	bl func_8009AED4
/* 8039EC34  3C 60 80 64 */	lis r3, lit_2115@ha /* 0x80641E34@ha */
/* 8039EC38  38 00 00 03 */	li r0, 3
/* 8039EC3C  38 63 1E 34 */	addi r3, r3, lit_2115@l /* 0x80641E34@l */
/* 8039EC40  38 A1 00 14 */	addi r5, r1, 0x14
/* 8039EC44  38 83 FF FC */	addi r4, r3, -4
/* 8039EC48  7C 09 03 A6 */	mtctr r0
lbl_8039EC4C:
/* 8039EC4C  80 64 00 04 */	lwz r3, 4(r4)
/* 8039EC50  84 04 00 08 */	lwzu r0, 8(r4)
/* 8039EC54  90 65 00 04 */	stw r3, 4(r5)
/* 8039EC58  94 05 00 08 */	stwu r0, 8(r5)
/* 8039EC5C  42 00 FF F0 */	bdnz lbl_8039EC4C
/* 8039EC60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039EC64  3B E0 00 00 */	li r31, 0
/* 8039EC68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039EC6C  3B C0 00 00 */	li r30, 0
/* 8039EC70  3F A3 00 02 */	addis r29, r3, 2
/* 8039EC74  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8039EC78  28 00 00 06 */	cmplwi r0, 6
/* 8039EC7C  41 81 00 14 */	bgt lbl_8039EC90
/* 8039EC80  54 00 10 3A */	slwi r0, r0, 2
/* 8039EC84  38 61 00 18 */	addi r3, r1, 0x18
/* 8039EC88  7C 63 00 2E */	lwzx r3, r3, r0
/* 8039EC8C  48 00 00 0C */	b lbl_8039EC98
lbl_8039EC90:
/* 8039EC90  38 60 00 00 */	li r3, 0
/* 8039EC94  48 00 00 DC */	b lbl_8039ED70
lbl_8039EC98:
/* 8039EC98  89 1D 61 25 */	lbz r8, 0x6125(r29)
/* 8039EC9C  39 20 00 00 */	li r9, 0
/* 8039ECA0  88 FD 61 23 */	lbz r7, 0x6123(r29)
/* 8039ECA4  2C 03 00 4E */	cmpwi r3, 0x4e
/* 8039ECA8  88 1D 61 22 */	lbz r0, 0x6122(r29)
/* 8039ECAC  88 DD 04 9D */	lbz r6, 0x49d(r29)
/* 8039ECB0  88 BD 04 9B */	lbz r5, 0x49b(r29)
/* 8039ECB4  88 9D 04 9A */	lbz r4, 0x49a(r29)
/* 8039ECB8  99 21 00 10 */	stb r9, 0x10(r1)
/* 8039ECBC  99 01 00 11 */	stb r8, 0x11(r1)
/* 8039ECC0  98 E1 00 12 */	stb r7, 0x12(r1)
/* 8039ECC4  98 01 00 13 */	stb r0, 0x13(r1)
/* 8039ECC8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8039ECCC  99 21 00 0C */	stb r9, 0xc(r1)
/* 8039ECD0  90 01 00 08 */	stw r0, 8(r1)
/* 8039ECD4  98 C1 00 0D */	stb r6, 0xd(r1)
/* 8039ECD8  98 A1 00 0E */	stb r5, 0xe(r1)
/* 8039ECDC  98 81 00 0F */	stb r4, 0xf(r1)
/* 8039ECE0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8039ECE4  99 21 00 0B */	stb r9, 0xb(r1)
/* 8039ECE8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8039ECEC  99 21 00 17 */	stb r9, 0x17(r1)
/* 8039ECF0  40 82 00 14 */	bne lbl_8039ED04
/* 8039ECF4  7C 04 00 40 */	cmplw r4, r0
/* 8039ECF8  40 82 00 20 */	bne lbl_8039ED18
/* 8039ECFC  3B E0 00 01 */	li r31, 1
/* 8039ED00  48 00 00 18 */	b lbl_8039ED18
lbl_8039ED04:
/* 8039ED04  38 80 00 01 */	li r4, 1
/* 8039ED08  4B FF ED F9 */	bl mEv_check_status
/* 8039ED0C  2C 03 00 00 */	cmpwi r3, 0
/* 8039ED10  41 82 00 08 */	beq lbl_8039ED18
/* 8039ED14  3B E0 00 01 */	li r31, 1
lbl_8039ED18:
/* 8039ED18  2C 1F 00 00 */	cmpwi r31, 0
/* 8039ED1C  41 82 00 0C */	beq lbl_8039ED28
/* 8039ED20  3B C0 00 03 */	li r30, 3
/* 8039ED24  48 00 00 48 */	b lbl_8039ED6C
lbl_8039ED28:
/* 8039ED28  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8039ED2C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8039ED30  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8039ED34  4B FF C4 BD */	bl check_ymdh_range
/* 8039ED38  2C 03 00 00 */	cmpwi r3, 0
/* 8039ED3C  41 82 00 0C */	beq lbl_8039ED48
/* 8039ED40  3B C0 00 02 */	li r30, 2
/* 8039ED44  48 00 00 28 */	b lbl_8039ED6C
lbl_8039ED48:
/* 8039ED48  80 7D 04 A0 */	lwz r3, 0x4a0(r29)
/* 8039ED4C  3C 03 00 01 */	addis r0, r3, 1
/* 8039ED50  28 00 FF FF */	cmplwi r0, 0xffff
/* 8039ED54  41 82 00 18 */	beq lbl_8039ED6C
/* 8039ED58  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8039ED5C  80 01 00 08 */	lwz r0, 8(r1)
/* 8039ED60  7C 03 00 40 */	cmplw r3, r0
/* 8039ED64  40 81 00 08 */	ble lbl_8039ED6C
/* 8039ED68  3B C0 00 01 */	li r30, 1
lbl_8039ED6C:
/* 8039ED6C  7F C3 F3 78 */	mr r3, r30
lbl_8039ED70:
/* 8039ED70  39 61 00 40 */	addi r11, r1, 0x40
/* 8039ED74  4B CF C1 AD */	bl func_8009AF20
/* 8039ED78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8039ED7C  7C 08 03 A6 */	mtlr r0
/* 8039ED80  38 21 00 40 */	addi r1, r1, 0x40
/* 8039ED84  4E 80 00 20 */	blr 
