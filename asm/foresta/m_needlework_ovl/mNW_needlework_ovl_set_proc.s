lbl_805EA750:
/* 805EA750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EA754  7C 08 02 A6 */	mflr r0
/* 805EA758  3C 80 80 5F */	lis r4, mNW_needlework_ovl_move@ha /* 0x805E9F0C@ha */
/* 805EA75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EA760  38 04 9F 0C */	addi r0, r4, mNW_needlework_ovl_move@l /* 0x805E9F0C@l */
/* 805EA764  3C 80 80 5F */	lis r4, mNW_needlework_ovl_draw@ha /* 0x805EA6B0@ha */
/* 805EA768  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EA76C  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805EA770  38 04 A6 B0 */	addi r0, r4, mNW_needlework_ovl_draw@l /* 0x805EA6B0@l */
/* 805EA774  90 05 09 10 */	stw r0, 0x910(r5)
/* 805EA778  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805EA77C  2C 00 00 01 */	cmpwi r0, 1
/* 805EA780  41 82 00 30 */	beq lbl_805EA7B0
/* 805EA784  80 05 09 80 */	lwz r0, 0x980(r5)
/* 805EA788  28 00 00 00 */	cmplwi r0, 0
/* 805EA78C  41 82 00 24 */	beq lbl_805EA7B0
/* 805EA790  80 05 06 FC */	lwz r0, 0x6fc(r5)
/* 805EA794  2C 00 00 04 */	cmpwi r0, 4
/* 805EA798  41 82 00 18 */	beq lbl_805EA7B0
/* 805EA79C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805EA7A0  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805EA7A4  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805EA7A8  7D 89 03 A6 */	mtctr r12
/* 805EA7AC  4E 80 04 21 */	bctrl 
lbl_805EA7B0:
/* 805EA7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EA7B4  7C 08 03 A6 */	mtlr r0
/* 805EA7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805EA7BC  4E 80 00 20 */	blr 
