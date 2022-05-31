lbl_805EED28:
/* 805EED28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EED2C  7C 08 02 A6 */	mflr r0
/* 805EED30  3C 80 80 6D */	lis r4, mSM_program_dlftbl@ha /* 0x806CF1A4@ha */
/* 805EED34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EED38  38 04 F1 A4 */	addi r0, r4, mSM_program_dlftbl@l /* 0x806CF1A4@l */
/* 805EED3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EED40  93 C1 00 08 */	stw r30, 8(r1)
/* 805EED44  7C 7E 1B 78 */	mr r30, r3
/* 805EED48  83 E3 00 04 */	lwz r31, 4(r3)
/* 805EED4C  57 E4 28 34 */	slwi r4, r31, 5
/* 805EED50  7C 80 22 14 */	add r4, r0, r4
/* 805EED54  81 84 00 18 */	lwz r12, 0x18(r4)
/* 805EED58  7D 89 03 A6 */	mtctr r12
/* 805EED5C  4E 80 04 21 */	bctrl 
/* 805EED60  93 FE 00 08 */	stw r31, 8(r30)
/* 805EED64  1C 7F 00 48 */	mulli r3, r31, 0x48
/* 805EED68  38 A0 00 00 */	li r5, 0
/* 805EED6C  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EED70  38 03 00 68 */	addi r0, r3, 0x68
/* 805EED74  7C A4 01 2E */	stwx r5, r4, r0
/* 805EED78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EED7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EED80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EED84  7C 08 03 A6 */	mtlr r0
/* 805EED88  38 21 00 10 */	addi r1, r1, 0x10
/* 805EED8C  4E 80 00 20 */	blr 
