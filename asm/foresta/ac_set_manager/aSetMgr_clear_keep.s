lbl_80496C04:
/* 80496C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496C08  7C 08 02 A6 */	mflr r0
/* 80496C0C  38 80 03 54 */	li r4, 0x354
/* 80496C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496C14  4B BC 64 55 */	bl bzero
/* 80496C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496C1C  7C 08 03 A6 */	mtlr r0
/* 80496C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80496C24  4E 80 00 20 */	blr 
