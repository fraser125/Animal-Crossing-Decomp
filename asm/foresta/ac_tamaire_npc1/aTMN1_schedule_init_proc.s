lbl_8058B330:
/* 8058B330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B334  7C 08 02 A6 */	mflr r0
/* 8058B338  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8058B33C  3C A0 80 59 */	lis r5, aTMN1_think_proc@ha /* 0x8058B2F0@ha */
/* 8058B340  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B344  38 05 B2 F0 */	addi r0, r5, aTMN1_think_proc@l /* 0x8058B2F0@l */
/* 8058B348  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8058B34C  38 A0 00 09 */	li r5, 9
/* 8058B350  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8058B354  3C E6 00 02 */	addis r7, r6, 2
/* 8058B358  38 C0 00 00 */	li r6, 0
/* 8058B35C  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8058B360  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058B364  7D 89 03 A6 */	mtctr r12
/* 8058B368  4E 80 04 21 */	bctrl 
/* 8058B36C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B370  7C 08 03 A6 */	mtlr r0
/* 8058B374  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B378  4E 80 00 20 */	blr 
