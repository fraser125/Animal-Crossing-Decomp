lbl_8048759C:
/* 8048759C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804875A0  7C 08 02 A6 */	mflr r0
/* 804875A4  28 04 00 00 */	cmplwi r4, 0
/* 804875A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804875AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804875B0  3B E0 00 00 */	li r31, 0
/* 804875B4  93 C1 00 08 */	stw r30, 8(r1)
/* 804875B8  7C 7E 1B 78 */	mr r30, r3
/* 804875BC  41 82 00 50 */	beq lbl_8048760C
/* 804875C0  28 1E 00 00 */	cmplwi r30, 0
/* 804875C4  41 82 00 48 */	beq lbl_8048760C
/* 804875C8  88 1E 00 01 */	lbz r0, 1(r30)
/* 804875CC  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 804875D0  28 00 00 01 */	cmplwi r0, 1
/* 804875D4  40 82 00 38 */	bne lbl_8048760C
/* 804875D8  38 7E 00 0E */	addi r3, r30, 0xe
/* 804875DC  4B F5 8A 69 */	bl mPr_NullCheckPersonalID
/* 804875E0  2C 03 00 00 */	cmpwi r3, 0
/* 804875E4  40 82 00 28 */	bne lbl_8048760C
/* 804875E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804875EC  38 7E 00 0E */	addi r3, r30, 0xe
/* 804875F0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804875F4  3C 84 00 02 */	addis r4, r4, 2
/* 804875F8  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804875FC  4B F5 8B 49 */	bl mPr_CheckCmpPersonalID
/* 80487600  2C 03 00 01 */	cmpwi r3, 1
/* 80487604  40 82 00 08 */	bne lbl_8048760C
/* 80487608  3B E0 00 01 */	li r31, 1
lbl_8048760C:
/* 8048760C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487610  7F E3 FB 78 */	mr r3, r31
/* 80487614  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487618  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048761C  7C 08 03 A6 */	mtlr r0
/* 80487620  38 21 00 10 */	addi r1, r1, 0x10
/* 80487624  4E 80 00 20 */	blr 
