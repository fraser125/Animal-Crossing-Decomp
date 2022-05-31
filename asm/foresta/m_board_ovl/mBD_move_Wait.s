lbl_805C50D0:
/* 805C50D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C50D4  7C 08 02 A6 */	mflr r0
/* 805C50D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C50DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C50E0  7C 9F 23 78 */	mr r31, r4
/* 805C50E4  93 C1 00 08 */	stw r30, 8(r1)
/* 805C50E8  7C 7E 1B 78 */	mr r30, r3
/* 805C50EC  4B DD 0E 85 */	bl getTrigger
/* 805C50F0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805C50F4  70 00 D0 00 */	andi. r0, r0, 0xd000
/* 805C50F8  41 82 00 24 */	beq lbl_805C511C
/* 805C50FC  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805C5100  7F E3 FB 78 */	mr r3, r31
/* 805C5104  38 80 00 04 */	li r4, 4
/* 805C5108  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805C510C  7D 89 03 A6 */	mtctr r12
/* 805C5110  4E 80 04 21 */	bctrl 
/* 805C5114  38 60 00 5F */	li r3, 0x5f
/* 805C5118  48 06 8B ED */	bl sAdo_SysTrgStart
lbl_805C511C:
/* 805C511C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C5120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C5124  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C5128  7C 08 03 A6 */	mtlr r0
/* 805C512C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C5130  4E 80 00 20 */	blr 
