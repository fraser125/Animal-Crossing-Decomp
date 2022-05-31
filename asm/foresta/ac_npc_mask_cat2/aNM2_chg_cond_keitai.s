lbl_8055FC78:
/* 8055FC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055FC7C  7C 08 02 A6 */	mflr r0
/* 8055FC80  7C 85 23 78 */	mr r5, r4
/* 8055FC84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055FC88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055FC8C  3B E0 00 00 */	li r31, 0
/* 8055FC90  80 03 08 A0 */	lwz r0, 0x8a0(r3)
/* 8055FC94  28 00 00 00 */	cmplwi r0, 0
/* 8055FC98  41 82 00 38 */	beq lbl_8055FCD0
/* 8055FC9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055FCA0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055FCA4  3C 84 00 02 */	addis r4, r4, 2
/* 8055FCA8  80 84 60 A0 */	lwz r4, 0x60a0(r4)
/* 8055FCAC  28 04 00 00 */	cmplwi r4, 0
/* 8055FCB0  41 82 00 20 */	beq lbl_8055FCD0
/* 8055FCB4  81 84 00 04 */	lwz r12, 4(r4)
/* 8055FCB8  7C 04 03 78 */	mr r4, r0
/* 8055FCBC  7D 89 03 A6 */	mtctr r12
/* 8055FCC0  4E 80 04 21 */	bctrl 
/* 8055FCC4  2C 03 00 01 */	cmpwi r3, 1
/* 8055FCC8  40 82 00 08 */	bne lbl_8055FCD0
/* 8055FCCC  3B E0 00 01 */	li r31, 1
lbl_8055FCD0:
/* 8055FCD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055FCD4  7F E3 FB 78 */	mr r3, r31
/* 8055FCD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055FCDC  7C 08 03 A6 */	mtlr r0
/* 8055FCE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055FCE4  4E 80 00 20 */	blr 
