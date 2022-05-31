lbl_80519C2C:
/* 80519C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519C30  7C 08 02 A6 */	mflr r0
/* 80519C34  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80519C38  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80519C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519C40  3C A5 00 02 */	addis r5, r5, 2
/* 80519C44  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80519C48  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80519C4C  7D 89 03 A6 */	mtctr r12
/* 80519C50  4E 80 04 21 */	bctrl 
/* 80519C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519C58  7C 08 03 A6 */	mtlr r0
/* 80519C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80519C60  4E 80 00 20 */	blr 
