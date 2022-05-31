lbl_805E9F0C:
/* 805E9F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E9F10  7C 08 02 A6 */	mflr r0
/* 805E9F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E9F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E9F1C  93 C1 00 08 */	stw r30, 8(r1)
/* 805E9F20  7C 7E 1B 78 */	mr r30, r3
/* 805E9F24  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E9F28  81 84 06 D8 */	lwz r12, 0x6d8(r4)
/* 805E9F2C  3B E4 06 CC */	addi r31, r4, 0x6cc
/* 805E9F30  7D 89 03 A6 */	mtctr r12
/* 805E9F34  4E 80 04 21 */	bctrl 
/* 805E9F38  80 1F 00 04 */	lwz r0, 4(r31)
/* 805E9F3C  3C 60 80 6D */	lis r3, data_806CE250@ha /* 0x806CE250@ha */
/* 805E9F40  38 A3 E2 50 */	addi r5, r3, data_806CE250@l /* 0x806CE250@l */
/* 805E9F44  7F C3 F3 78 */	mr r3, r30
/* 805E9F48  54 00 10 3A */	slwi r0, r0, 2
/* 805E9F4C  7F E4 FB 78 */	mr r4, r31
/* 805E9F50  7D 85 00 2E */	lwzx r12, r5, r0
/* 805E9F54  7D 89 03 A6 */	mtctr r12
/* 805E9F58  4E 80 04 21 */	bctrl 
/* 805E9F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E9F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E9F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E9F68  7C 08 03 A6 */	mtlr r0
/* 805E9F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E9F70  4E 80 00 20 */	blr 
