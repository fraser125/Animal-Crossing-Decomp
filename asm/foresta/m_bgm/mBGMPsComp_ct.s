lbl_8037C904:
/* 8037C904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C908  7C 08 02 A6 */	mflr r0
/* 8037C90C  38 80 01 98 */	li r4, 0x198
/* 8037C910  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C914  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C918  7C 7F 1B 78 */	mr r31, r3
/* 8037C91C  4B CE 07 4D */	bl bzero
/* 8037C920  3C 60 80 64 */	lis r3, lit_1325@ha /* 0x80641338@ha */
/* 8037C924  38 80 00 00 */	li r4, 0
/* 8037C928  38 A3 13 38 */	addi r5, r3, lit_1325@l /* 0x80641338@l */
/* 8037C92C  38 60 00 64 */	li r3, 0x64
/* 8037C930  C0 05 00 00 */	lfs f0, 0(r5)
/* 8037C934  38 00 00 02 */	li r0, 2
/* 8037C938  D0 1F 01 3C */	stfs f0, 0x13c(r31)
/* 8037C93C  B0 9F 01 40 */	sth r4, 0x140(r31)
/* 8037C940  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 8037C944  B0 9F 01 48 */	sth r4, 0x148(r31)
/* 8037C948  D0 1F 01 4C */	stfs f0, 0x14c(r31)
/* 8037C94C  B0 7F 01 50 */	sth r3, 0x150(r31)
/* 8037C950  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8037C954  B0 7F 01 58 */	sth r3, 0x158(r31)
/* 8037C958  D0 1F 01 5C */	stfs f0, 0x15c(r31)
/* 8037C95C  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 8037C960  D0 1F 01 6C */	stfs f0, 0x16c(r31)
/* 8037C964  B0 1F 01 70 */	sth r0, 0x170(r31)
/* 8037C968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C96C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C970  7C 08 03 A6 */	mtlr r0
/* 8037C974  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C978  4E 80 00 20 */	blr 