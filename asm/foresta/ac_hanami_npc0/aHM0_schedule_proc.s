lbl_80529F40:
/* 80529F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529F44  7C 08 02 A6 */	mflr r0
/* 80529F48  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A1204@ha */
/* 80529F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529F50  54 A0 10 3A */	slwi r0, r5, 2
/* 80529F54  38 A6 12 04 */	addi r5, r6, sche_proc@l /* 0x806A1204@l */
/* 80529F58  7D 85 00 2E */	lwzx r12, r5, r0
/* 80529F5C  7D 89 03 A6 */	mtctr r12
/* 80529F60  4E 80 04 21 */	bctrl 
/* 80529F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529F68  7C 08 03 A6 */	mtlr r0
/* 80529F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80529F70  4E 80 00 20 */	blr 
