lbl_80559A00:
/* 80559A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559A04  7C 08 02 A6 */	mflr r0
/* 80559A08  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80559A0C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80559A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559A14  3C A5 00 02 */	addis r5, r5, 2
/* 80559A18  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80559A1C  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80559A20  7D 89 03 A6 */	mtctr r12
/* 80559A24  4E 80 04 21 */	bctrl 
/* 80559A28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80559A2C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80559A30  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80559A34  38 60 00 5D */	li r3, 0x5d
/* 80559A38  3C A4 00 02 */	addis r5, r4, 2
/* 80559A3C  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80559A40  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 80559A44  81 85 00 04 */	lwz r12, 4(r5)
/* 80559A48  7D 89 03 A6 */	mtctr r12
/* 80559A4C  4E 80 04 21 */	bctrl 
/* 80559A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559A54  7C 08 03 A6 */	mtlr r0
/* 80559A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80559A5C  4E 80 00 20 */	blr 
