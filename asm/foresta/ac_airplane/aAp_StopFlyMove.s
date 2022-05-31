lbl_8040FD00:
/* 8040FD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040FD04  7C 08 02 A6 */	mflr r0
/* 8040FD08  3C A0 80 64 */	lis r5, data_8064377C@ha /* 0x8064377C@ha */
/* 8040FD0C  3C 80 80 64 */	lis r4, lit_557@ha /* 0x806437F4@ha */
/* 8040FD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040FD14  C0 25 37 7C */	lfs f1, data_8064377C@l(r5)  /* 0x8064377C@l */
/* 8040FD18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040FD1C  7C 7F 1B 78 */	mr r31, r3
/* 8040FD20  C0 04 37 F4 */	lfs f0, lit_557@l(r4)  /* 0x806437F4@l */
/* 8040FD24  D0 3F 01 78 */	stfs f1, 0x178(r31)
/* 8040FD28  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8040FD2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040FD30  4C 40 13 82 */	cror 2, 0, 2
/* 8040FD34  40 82 00 20 */	bne lbl_8040FD54
/* 8040FD38  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8040FD3C  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 8040FD40  4B F8 61 D1 */	bl chkTrigger
/* 8040FD44  2C 03 00 00 */	cmpwi r3, 0
/* 8040FD48  41 82 00 0C */	beq lbl_8040FD54
/* 8040FD4C  38 00 00 06 */	li r0, 6
/* 8040FD50  B0 1F 01 74 */	sth r0, 0x174(r31)
lbl_8040FD54:
/* 8040FD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040FD58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040FD5C  7C 08 03 A6 */	mtlr r0
/* 8040FD60  38 21 00 10 */	addi r1, r1, 0x10
/* 8040FD64  4E 80 00 20 */	blr 
