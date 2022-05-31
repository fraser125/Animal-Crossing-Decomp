lbl_805FAE04:
/* 805FAE04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FAE08  7C 08 02 A6 */	mflr r0
/* 805FAE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FAE10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FAE14  7C 7F 1B 78 */	mr r31, r3
/* 805FAE18  7C A3 2B 78 */	mr r3, r5
/* 805FAE1C  93 C1 00 08 */	stw r30, 8(r1)
/* 805FAE20  7C 9E 23 78 */	mr r30, r4
/* 805FAE24  4B FF 4D 3D */	bl mTG_get_table_idx
/* 805FAE28  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805FAE2C  54 60 08 3C */	slwi r0, r3, 1
/* 805FAE30  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805FAE34  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 805FAE38  3C C5 00 02 */	addis r6, r5, 2
/* 805FAE3C  80 C6 61 3C */	lwz r6, 0x613c(r6)
/* 805FAE40  7C 65 1B 78 */	mr r5, r3
/* 805FAE44  80 E4 09 88 */	lwz r7, 0x988(r4)
/* 805FAE48  38 60 00 00 */	li r3, 0
/* 805FAE4C  7C 86 02 14 */	add r4, r6, r0
/* 805FAE50  A0 84 00 68 */	lhz r4, 0x68(r4)
/* 805FAE54  28 04 00 00 */	cmplwi r4, 0
/* 805FAE58  41 82 00 A0 */	beq lbl_805FAEF8
/* 805FAE5C  80 1E 00 00 */	lwz r0, 0(r30)
/* 805FAE60  2C 00 00 01 */	cmpwi r0, 1
/* 805FAE64  40 82 00 90 */	bne lbl_805FAEF4
/* 805FAE68  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FAE6C  28 00 00 10 */	cmplwi r0, 0x10
/* 805FAE70  41 81 00 88 */	bgt lbl_805FAEF8
/* 805FAE74  3C C0 80 6D */	lis r6, lit_4211@ha /* 0x806D0DD8@ha */
/* 805FAE78  54 00 10 3A */	slwi r0, r0, 2
/* 805FAE7C  38 C6 0D D8 */	addi r6, r6, lit_4211@l /* 0x806D0DD8@l */
/* 805FAE80  7C 06 00 2E */	lwzx r0, r6, r0
/* 805FAE84  7C 09 03 A6 */	mtctr r0
/* 805FAE88  4E 80 04 20 */	bctr 
lbl_805FAE8C:
/* 805FAE8C  7F E3 FB 78 */	mr r3, r31
/* 805FAE90  4B FF FB B5 */	bl mTG_select_tag_decide_item_normal
/* 805FAE94  48 00 00 64 */	b lbl_805FAEF8
lbl_805FAE98:
/* 805FAE98  A0 67 05 E0 */	lhz r3, 0x5e0(r7)
/* 805FAE9C  28 03 00 00 */	cmplwi r3, 0
/* 805FAEA0  41 82 00 1C */	beq lbl_805FAEBC
/* 805FAEA4  38 00 00 01 */	li r0, 1
/* 805FAEA8  7C 00 28 30 */	slw r0, r0, r5
/* 805FAEAC  7C 60 00 39 */	and. r0, r3, r0
/* 805FAEB0  41 82 00 0C */	beq lbl_805FAEBC
/* 805FAEB4  38 60 00 30 */	li r3, 0x30
/* 805FAEB8  48 00 00 40 */	b lbl_805FAEF8
lbl_805FAEBC:
/* 805FAEBC  38 60 00 1C */	li r3, 0x1c
/* 805FAEC0  48 00 00 38 */	b lbl_805FAEF8
lbl_805FAEC4:
/* 805FAEC4  38 60 00 1D */	li r3, 0x1d
/* 805FAEC8  48 00 00 30 */	b lbl_805FAEF8
lbl_805FAECC:
/* 805FAECC  38 60 00 1B */	li r3, 0x1b
/* 805FAED0  48 00 00 28 */	b lbl_805FAEF8
lbl_805FAED4:
/* 805FAED4  38 60 00 24 */	li r3, 0x24
/* 805FAED8  48 00 00 20 */	b lbl_805FAEF8
lbl_805FAEDC:
/* 805FAEDC  38 60 00 23 */	li r3, 0x23
/* 805FAEE0  48 00 00 18 */	b lbl_805FAEF8
lbl_805FAEE4:
/* 805FAEE4  38 60 00 35 */	li r3, 0x35
/* 805FAEE8  48 00 00 10 */	b lbl_805FAEF8
lbl_805FAEEC:
/* 805FAEEC  38 60 00 4D */	li r3, 0x4d
/* 805FAEF0  48 00 00 08 */	b lbl_805FAEF8
lbl_805FAEF4:
/* 805FAEF4  38 60 00 08 */	li r3, 8
lbl_805FAEF8:
/* 805FAEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FAEFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FAF00  83 C1 00 08 */	lwz r30, 8(r1)
/* 805FAF04  7C 08 03 A6 */	mtlr r0
/* 805FAF08  38 21 00 10 */	addi r1, r1, 0x10
/* 805FAF0C  4E 80 00 20 */	blr 
