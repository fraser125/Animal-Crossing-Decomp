lbl_8063E734:
/* 8063E734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063E738  7C 08 02 A6 */	mflr r0
/* 8063E73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063E740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063E744  7C 7F 1B 78 */	mr r31, r3
/* 8063E748  88 03 01 2C */	lbz r0, 0x12c(r3)
/* 8063E74C  28 00 00 00 */	cmplwi r0, 0
/* 8063E750  41 82 00 34 */	beq lbl_8063E784
/* 8063E754  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8063E758  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063E75C  41 82 00 28 */	beq lbl_8063E784
/* 8063E760  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063E764  41 82 00 20 */	beq lbl_8063E784
/* 8063E768  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063E76C  41 82 00 18 */	beq lbl_8063E784
/* 8063E770  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063E774  41 82 00 10 */	beq lbl_8063E784
/* 8063E778  38 BF 00 08 */	addi r5, r31, 8
/* 8063E77C  38 80 00 5E */	li r4, 0x5e
/* 8063E780  4B FE F7 C5 */	bl sAdo_OngenPos
lbl_8063E784:
/* 8063E784  88 1F 01 2D */	lbz r0, 0x12d(r31)
/* 8063E788  28 00 00 00 */	cmplwi r0, 0
/* 8063E78C  41 82 00 2C */	beq lbl_8063E7B8
/* 8063E790  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8063E794  28 00 00 00 */	cmplwi r0, 0
/* 8063E798  41 82 00 14 */	beq lbl_8063E7AC
/* 8063E79C  38 9F 00 08 */	addi r4, r31, 8
/* 8063E7A0  38 60 00 16 */	li r3, 0x16
/* 8063E7A4  4B FE F8 05 */	bl sAdo_OngenTrgStart
/* 8063E7A8  48 00 00 10 */	b lbl_8063E7B8
lbl_8063E7AC:
/* 8063E7AC  38 9F 00 08 */	addi r4, r31, 8
/* 8063E7B0  38 60 00 17 */	li r3, 0x17
/* 8063E7B4  4B FE F7 F5 */	bl sAdo_OngenTrgStart
lbl_8063E7B8:
/* 8063E7B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063E7BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063E7C0  7C 08 03 A6 */	mtlr r0
/* 8063E7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8063E7C8  4E 80 00 20 */	blr 
