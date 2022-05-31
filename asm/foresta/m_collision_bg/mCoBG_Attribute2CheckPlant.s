lbl_8038FF20:
/* 8038FF20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038FF24  7C 08 02 A6 */	mflr r0
/* 8038FF28  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038FF2C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8038FF30  7C 9F 23 78 */	mr r31, r4
/* 8038FF34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8038FF38  7C 7E 1B 78 */	mr r30, r3
/* 8038FF3C  48 01 4D 91 */	bl mFI_GetFieldId
/* 8038FF40  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8038FF44  40 82 00 8C */	bne lbl_8038FFD0
/* 8038FF48  3C 60 80 65 */	lis r3, l_attribute_action_info@ha /* 0x80650DE8@ha */
/* 8038FF4C  28 1E 00 3F */	cmplwi r30, 0x3f
/* 8038FF50  38 63 0D E8 */	addi r3, r3, l_attribute_action_info@l /* 0x80650DE8@l */
/* 8038FF54  7C 03 F0 AE */	lbzx r0, r3, r30
/* 8038FF58  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8038FF5C  40 82 00 60 */	bne lbl_8038FFBC
/* 8038FF60  80 1F 00 08 */	lwz r0, 8(r31)
/* 8038FF64  3C 60 80 64 */	lis r3, lit_789@ha /* 0x806419D0@ha */
/* 8038FF68  80 DF 00 00 */	lwz r6, 0(r31)
/* 8038FF6C  38 83 19 D0 */	addi r4, r3, lit_789@l /* 0x806419D0@l */
/* 8038FF70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8038FF74  38 61 00 08 */	addi r3, r1, 8
/* 8038FF78  80 BF 00 04 */	lwz r5, 4(r31)
/* 8038FF7C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8038FF80  C0 04 00 00 */	lfs f0, 0(r4)
/* 8038FF84  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8038FF88  EC 01 00 2A */	fadds f0, f1, f0
/* 8038FF8C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8038FF90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8038FF94  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8038FF98  90 C1 00 08 */	stw r6, 8(r1)
/* 8038FF9C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8038FFA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8038FFA4  48 01 67 69 */	bl mFI_GetUnitCol
/* 8038FFA8  88 03 00 03 */	lbz r0, 3(r3)
/* 8038FFAC  38 81 00 14 */	addi r4, r1, 0x14
/* 8038FFB0  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 8038FFB4  4B FF FF 6D */	bl mCoBG_Attribute2CheckPlant
/* 8038FFB8  48 00 00 1C */	b lbl_8038FFD4
lbl_8038FFBC:
/* 8038FFBC  28 00 00 07 */	cmplwi r0, 7
/* 8038FFC0  38 60 FF FF */	li r3, -1
/* 8038FFC4  41 82 00 10 */	beq lbl_8038FFD4
/* 8038FFC8  7C 03 03 78 */	mr r3, r0
/* 8038FFCC  48 00 00 08 */	b lbl_8038FFD4
lbl_8038FFD0:
/* 8038FFD0  38 60 FF FF */	li r3, -1
lbl_8038FFD4:
/* 8038FFD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038FFD8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8038FFDC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8038FFE0  7C 08 03 A6 */	mtlr r0
/* 8038FFE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8038FFE8  4E 80 00 20 */	blr 
