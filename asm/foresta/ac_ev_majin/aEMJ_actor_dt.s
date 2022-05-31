lbl_80592A30:
/* 80592A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592A34  7C 08 02 A6 */	mflr r0
/* 80592A38  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592A3C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592A44  3C A5 00 02 */	addis r5, r5, 2
/* 80592A48  80 A5 61 00 */	lwz r5, 0x6100(r5)
/* 80592A4C  28 05 00 00 */	cmplwi r5, 0
/* 80592A50  41 82 00 0C */	beq lbl_80592A5C
/* 80592A54  38 00 00 00 */	li r0, 0
/* 80592A58  90 05 00 04 */	stw r0, 4(r5)
lbl_80592A5C:
/* 80592A5C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592A60  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592A64  3C A5 00 02 */	addis r5, r5, 2
/* 80592A68  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80592A6C  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80592A70  7D 89 03 A6 */	mtctr r12
/* 80592A74  4E 80 04 21 */	bctrl 
/* 80592A78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80592A7C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80592A80  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80592A84  38 60 00 5D */	li r3, 0x5d
/* 80592A88  3C A4 00 02 */	addis r5, r4, 2
/* 80592A8C  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80592A90  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 80592A94  81 85 00 04 */	lwz r12, 4(r5)
/* 80592A98  7D 89 03 A6 */	mtctr r12
/* 80592A9C  4E 80 04 21 */	bctrl 
/* 80592AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592AA4  7C 08 03 A6 */	mtlr r0
/* 80592AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80592AAC  4E 80 00 20 */	blr 
