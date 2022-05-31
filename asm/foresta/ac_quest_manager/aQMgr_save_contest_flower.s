lbl_804878DC:
/* 804878DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804878E0  7C 08 02 A6 */	mflr r0
/* 804878E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804878E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804878EC  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 804878F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804878F4  80 A3 00 30 */	lwz r5, 0x30(r3)
/* 804878F8  83 E3 00 08 */	lwz r31, 8(r3)
/* 804878FC  1C 85 09 88 */	mulli r4, r5, 0x988
/* 80487900  7F E3 FB 78 */	mr r3, r31
/* 80487904  7C 80 22 14 */	add r4, r0, r4
/* 80487908  3C A4 00 01 */	addis r5, r4, 1
/* 8048790C  88 85 7C D1 */	lbz r4, 0x7cd1(r5)
/* 80487910  88 A5 7C D2 */	lbz r5, 0x7cd2(r5)
/* 80487914  4B FF FD 99 */	bl aQMgr_actor_check_flower
/* 80487918  2C 03 00 01 */	cmpwi r3, 1
/* 8048791C  40 82 00 24 */	bne lbl_80487940
/* 80487920  38 7F 00 0E */	addi r3, r31, 0xe
/* 80487924  4B F5 87 69 */	bl mPr_ClearPersonalID
/* 80487928  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048792C  38 7F 00 0E */	addi r3, r31, 0xe
/* 80487930  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80487934  3C 84 00 02 */	addis r4, r4, 2
/* 80487938  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8048793C  4B F5 87 E5 */	bl mPr_CopyPersonalID
lbl_80487940:
/* 80487940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487948  7C 08 03 A6 */	mtlr r0
/* 8048794C  38 21 00 10 */	addi r1, r1, 0x10
/* 80487950  4E 80 00 20 */	blr 
