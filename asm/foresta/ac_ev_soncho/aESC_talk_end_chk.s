lbl_805245D0:
/* 805245D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805245D4  7C 08 02 A6 */	mflr r0
/* 805245D8  3C A0 80 6A */	lis r5, proc@ha /* 0x806A0C78@ha */
/* 805245DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805245E0  38 A5 0C 78 */	addi r5, r5, proc@l /* 0x806A0C78@l */
/* 805245E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805245E8  3B E0 00 00 */	li r31, 0
/* 805245EC  93 C1 00 08 */	stw r30, 8(r1)
/* 805245F0  7C 7E 1B 78 */	mr r30, r3
/* 805245F4  88 03 09 94 */	lbz r0, 0x994(r3)
/* 805245F8  54 00 10 3A */	slwi r0, r0, 2
/* 805245FC  7D 85 00 2E */	lwzx r12, r5, r0
/* 80524600  7D 89 03 A6 */	mtctr r12
/* 80524604  4E 80 04 21 */	bctrl 
/* 80524608  7F C4 F3 78 */	mr r4, r30
/* 8052460C  38 60 00 07 */	li r3, 7
/* 80524610  4B E7 5C 55 */	bl mDemo_Check
/* 80524614  2C 03 00 00 */	cmpwi r3, 0
/* 80524618  40 82 00 08 */	bne lbl_80524620
/* 8052461C  3B E0 00 01 */	li r31, 1
lbl_80524620:
/* 80524620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80524624  7F E3 FB 78 */	mr r3, r31
/* 80524628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052462C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80524630  7C 08 03 A6 */	mtlr r0
/* 80524634  38 21 00 10 */	addi r1, r1, 0x10
/* 80524638  4E 80 00 20 */	blr 