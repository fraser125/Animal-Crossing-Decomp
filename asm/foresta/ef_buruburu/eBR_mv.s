lbl_80606850:
/* 80606850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80606854  7C 08 02 A6 */	mflr r0
/* 80606858  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8060685C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80606860  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80606864  3C C5 00 02 */	addis r6, r5, 2
/* 80606868  38 80 00 08 */	li r4, 8
/* 8060686C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80606870  7C 7F 1B 78 */	mr r31, r3
/* 80606874  38 A0 00 08 */	li r5, 8
/* 80606878  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 8060687C  81 86 00 10 */	lwz r12, 0x10(r6)
/* 80606880  7D 89 03 A6 */	mtctr r12
/* 80606884  4E 80 04 21 */	bctrl 
/* 80606888  7F E3 FB 78 */	mr r3, r31
/* 8060688C  38 BF 00 10 */	addi r5, r31, 0x10
/* 80606890  38 80 00 2D */	li r4, 0x2d
/* 80606894  48 02 76 B1 */	bl sAdo_OngenPos
/* 80606898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060689C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806068A0  7C 08 03 A6 */	mtlr r0
/* 806068A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806068A8  4E 80 00 20 */	blr 