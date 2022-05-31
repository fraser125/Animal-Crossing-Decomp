lbl_80571F34:
/* 80571F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571F38  7C 08 02 A6 */	mflr r0
/* 80571F3C  3C C0 80 6C */	lis r6, sche_proc@ha /* 0x806BF3F0@ha */
/* 80571F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571F44  54 A0 10 3A */	slwi r0, r5, 2
/* 80571F48  38 A6 F3 F0 */	addi r5, r6, sche_proc@l /* 0x806BF3F0@l */
/* 80571F4C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80571F50  7D 89 03 A6 */	mtctr r12
/* 80571F54  4E 80 04 21 */	bctrl 
/* 80571F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571F5C  7C 08 03 A6 */	mtlr r0
/* 80571F60  38 21 00 10 */	addi r1, r1, 0x10
/* 80571F64  4E 80 00 20 */	blr 
