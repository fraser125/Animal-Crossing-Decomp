lbl_8055324C:
/* 8055324C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553250  7C 08 02 A6 */	mflr r0
/* 80553254  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80553258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055325C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80553260  3C A5 00 02 */	addis r5, r5, 2
/* 80553264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80553268  3B E0 00 00 */	li r31, 0
/* 8055326C  80 A5 60 A0 */	lwz r5, 0x60a0(r5)
/* 80553270  28 05 00 00 */	cmplwi r5, 0
/* 80553274  41 82 00 24 */	beq lbl_80553298
/* 80553278  81 85 00 04 */	lwz r12, 4(r5)
/* 8055327C  7C 85 23 78 */	mr r5, r4
/* 80553280  80 83 08 A0 */	lwz r4, 0x8a0(r3)
/* 80553284  7D 89 03 A6 */	mtctr r12
/* 80553288  4E 80 04 21 */	bctrl 
/* 8055328C  2C 03 00 01 */	cmpwi r3, 1
/* 80553290  40 82 00 08 */	bne lbl_80553298
/* 80553294  3B E0 00 01 */	li r31, 1
lbl_80553298:
/* 80553298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055329C  7F E3 FB 78 */	mr r3, r31
/* 805532A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805532A4  7C 08 03 A6 */	mtlr r0
/* 805532A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805532AC  4E 80 00 20 */	blr 