lbl_80558C38:
/* 80558C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80558C3C  7C 08 02 A6 */	mflr r0
/* 80558C40  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80558C44  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80558C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80558C4C  3C A5 00 02 */	addis r5, r5, 2
/* 80558C50  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80558C54  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 80558C58  7D 89 03 A6 */	mtctr r12
/* 80558C5C  4E 80 04 21 */	bctrl 
/* 80558C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558C64  7C 08 03 A6 */	mtlr r0
/* 80558C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80558C6C  4E 80 00 20 */	blr 
