lbl_8056E098:
/* 8056E098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056E09C  7C 08 02 A6 */	mflr r0
/* 8056E0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056E0A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8056E0AC  88 03 09 9B */	lbz r0, 0x99b(r3)
/* 8056E0B0  7C 00 07 74 */	extsb r0, r0
/* 8056E0B4  2C 00 FF FF */	cmpwi r0, -1
/* 8056E0B8  41 82 00 5C */	beq lbl_8056E114
/* 8056E0BC  1C 80 26 B0 */	mulli r4, r0, 0x26b0
/* 8056E0C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056E0C4  7C 1E 03 78 */	mr r30, r0
/* 8056E0C8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8056E0CC  7C 60 22 14 */	add r3, r0, r4
/* 8056E0D0  3F E3 00 01 */	addis r31, r3, 1
/* 8056E0D4  3B FF 9C E8 */	addi r31, r31, -25368
/* 8056E0D8  48 00 00 34 */	b lbl_8056E10C
lbl_8056E0DC:
/* 8056E0DC  7F E3 FB 78 */	mr r3, r31
/* 8056E0E0  4B E7 1F 65 */	bl mPr_NullCheckPersonalID
/* 8056E0E4  2C 03 00 00 */	cmpwi r3, 0
/* 8056E0E8  40 82 00 1C */	bne lbl_8056E104
/* 8056E0EC  7F C3 F3 78 */	mr r3, r30
/* 8056E0F0  4B FF FF 05 */	bl aPMAN_check_delivery
/* 8056E0F4  2C 03 00 01 */	cmpwi r3, 1
/* 8056E0F8  40 82 00 0C */	bne lbl_8056E104
/* 8056E0FC  7F C3 07 74 */	extsb r3, r30
/* 8056E100  48 00 00 18 */	b lbl_8056E118
lbl_8056E104:
/* 8056E104  3B FF 26 B0 */	addi r31, r31, 0x26b0
/* 8056E108  3B DE 00 01 */	addi r30, r30, 1
lbl_8056E10C:
/* 8056E10C  2C 1E 00 04 */	cmpwi r30, 4
/* 8056E110  41 80 FF CC */	blt lbl_8056E0DC
lbl_8056E114:
/* 8056E114  38 60 FF FF */	li r3, -1
lbl_8056E118:
/* 8056E118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056E11C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056E120  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056E124  7C 08 03 A6 */	mtlr r0
/* 8056E128  38 21 00 10 */	addi r1, r1, 0x10
/* 8056E12C  4E 80 00 20 */	blr 
