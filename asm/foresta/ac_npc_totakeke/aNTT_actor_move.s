lbl_80586330:
/* 80586330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586334  7C 08 02 A6 */	mflr r0
/* 80586338  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058633C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586340  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80586344  3C A5 00 02 */	addis r5, r5, 2
/* 80586348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058634C  7C 7F 1B 78 */	mr r31, r3
/* 80586350  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80586354  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 80586358  7D 89 03 A6 */	mtctr r12
/* 8058635C  4E 80 04 21 */	bctrl 
/* 80586360  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 80586364  2C 00 00 41 */	cmpwi r0, 0x41
/* 80586368  40 82 00 0C */	bne lbl_80586374
/* 8058636C  38 00 00 01 */	li r0, 1
/* 80586370  90 1F 01 BC */	stw r0, 0x1bc(r31)
lbl_80586374:
/* 80586374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058637C  7C 08 03 A6 */	mtlr r0
/* 80586380  38 21 00 10 */	addi r1, r1, 0x10
/* 80586384  4E 80 00 20 */	blr 
