lbl_80390EF4:
/* 80390EF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80390EF8  7C 08 02 A6 */	mflr r0
/* 80390EFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80390F00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80390F04  7C 7F 1B 78 */	mr r31, r3
/* 80390F08  38 61 00 08 */	addi r3, r1, 8
/* 80390F0C  80 C4 00 00 */	lwz r6, 0(r4)
/* 80390F10  80 A4 00 04 */	lwz r5, 4(r4)
/* 80390F14  80 04 00 08 */	lwz r0, 8(r4)
/* 80390F18  90 C1 00 08 */	stw r6, 8(r1)
/* 80390F1C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80390F20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80390F24  4B FF F3 21 */	bl mCoBG_Wpos2BgAttribute_Original
/* 80390F28  38 00 FF FF */	li r0, -1
/* 80390F2C  28 03 00 1B */	cmplwi r3, 0x1b
/* 80390F30  B0 1F 00 00 */	sth r0, 0(r31)
/* 80390F34  B0 1F 00 02 */	sth r0, 2(r31)
/* 80390F38  41 80 00 5C */	blt lbl_80390F94
/* 80390F3C  28 03 00 3E */	cmplwi r3, 0x3e
/* 80390F40  41 81 00 54 */	bgt lbl_80390F94
/* 80390F44  38 A3 FF E5 */	addi r5, r3, -27
/* 80390F48  3C 80 80 65 */	lis r4, mCoBG_forbid_vector_idx@ha /* 0x80650904@ha */
/* 80390F4C  3C 60 80 65 */	lis r3, mCoBG_make_vector_table@ha /* 0x80650884@ha */
/* 80390F50  38 00 00 02 */	li r0, 2
/* 80390F54  54 A5 10 3A */	slwi r5, r5, 2
/* 80390F58  38 84 09 04 */	addi r4, r4, mCoBG_forbid_vector_idx@l /* 0x80650904@l */
/* 80390F5C  7C C4 2A 14 */	add r6, r4, r5
/* 80390F60  38 A3 08 84 */	addi r5, r3, mCoBG_make_vector_table@l /* 0x80650884@l */
/* 80390F64  38 60 00 00 */	li r3, 0
/* 80390F68  7C 09 03 A6 */	mtctr r0
lbl_80390F6C:
/* 80390F6C  7C 06 1A AE */	lhax r0, r6, r3
/* 80390F70  2C 00 FF FF */	cmpwi r0, -1
/* 80390F74  41 82 00 18 */	beq lbl_80390F8C
/* 80390F78  54 00 26 76 */	rlwinm r0, r0, 4, 0x19, 0x1b
/* 80390F7C  7C 85 02 AE */	lhax r4, r5, r0
/* 80390F80  3C 84 00 01 */	addis r4, r4, 1
/* 80390F84  38 04 80 00 */	addi r0, r4, -32768
/* 80390F88  7C 1F 1B 2E */	sthx r0, r31, r3
lbl_80390F8C:
/* 80390F8C  38 63 00 02 */	addi r3, r3, 2
/* 80390F90  42 00 FF DC */	bdnz lbl_80390F6C
lbl_80390F94:
/* 80390F94  A8 1F 00 00 */	lha r0, 0(r31)
/* 80390F98  2C 00 FF FF */	cmpwi r0, -1
/* 80390F9C  40 82 00 10 */	bne lbl_80390FAC
/* 80390FA0  A8 1F 00 02 */	lha r0, 2(r31)
/* 80390FA4  2C 00 FF FF */	cmpwi r0, -1
/* 80390FA8  41 82 00 0C */	beq lbl_80390FB4
lbl_80390FAC:
/* 80390FAC  38 60 00 01 */	li r3, 1
/* 80390FB0  48 00 00 08 */	b lbl_80390FB8
lbl_80390FB4:
/* 80390FB4  38 60 00 00 */	li r3, 0
lbl_80390FB8:
/* 80390FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80390FBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80390FC0  7C 08 03 A6 */	mtlr r0
/* 80390FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80390FC8  4E 80 00 20 */	blr 
