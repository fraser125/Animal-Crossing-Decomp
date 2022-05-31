lbl_803E5C40:
/* 803E5C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E5C44  7C 08 02 A6 */	mflr r0
/* 803E5C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E5C4C  48 08 DF 01 */	bl aMR_GetFurnitureUnit
/* 803E5C50  38 03 00 01 */	addi r0, r3, 1
/* 803E5C54  30 00 FF FF */	addic r0, r0, -1
/* 803E5C58  7C 00 01 10 */	subfe r0, r0, r0
/* 803E5C5C  7C 63 00 78 */	andc r3, r3, r0
/* 803E5C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E5C64  7C 08 03 A6 */	mtlr r0
/* 803E5C68  38 21 00 10 */	addi r1, r1, 0x10
/* 803E5C6C  4E 80 00 20 */	blr 
