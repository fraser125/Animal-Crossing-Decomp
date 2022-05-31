lbl_80485A30:
/* 80485A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485A34  7C 08 02 A6 */	mflr r0
/* 80485A38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80485A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485A40  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80485A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80485A48  3B E0 00 00 */	li r31, 0
/* 80485A4C  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 80485A50  3C 65 00 02 */	addis r3, r5, 2
/* 80485A54  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80485A58  4B F5 AC D1 */	bl mPr_GetPossessionItemIdx
/* 80485A5C  2C 03 FF FF */	cmpwi r3, -1
/* 80485A60  41 82 00 08 */	beq lbl_80485A68
/* 80485A64  3B E0 00 01 */	li r31, 1
lbl_80485A68:
/* 80485A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485A6C  7F E3 FB 78 */	mr r3, r31
/* 80485A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80485A74  7C 08 03 A6 */	mtlr r0
/* 80485A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80485A7C  4E 80 00 20 */	blr 
