lbl_8057649C:
/* 8057649C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805764A0  7C 08 02 A6 */	mflr r0
/* 805764A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805764A8  80 A3 01 4C */	lwz r5, 0x14c(r3)
/* 805764AC  28 05 00 00 */	cmplwi r5, 0
/* 805764B0  41 82 00 10 */	beq lbl_805764C0
/* 805764B4  38 00 00 00 */	li r0, 0
/* 805764B8  90 03 01 4C */	stw r0, 0x14c(r3)
/* 805764BC  90 05 09 CC */	stw r0, 0x9cc(r5)
lbl_805764C0:
/* 805764C0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805764C4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805764C8  3C A5 00 02 */	addis r5, r5, 2
/* 805764CC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805764D0  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 805764D4  7D 89 03 A6 */	mtctr r12
/* 805764D8  4E 80 04 21 */	bctrl 
/* 805764DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805764E0  7C 08 03 A6 */	mtlr r0
/* 805764E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805764E8  4E 80 00 20 */	blr 
