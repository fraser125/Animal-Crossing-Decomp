lbl_804210F4:
/* 804210F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804210F8  7C 08 02 A6 */	mflr r0
/* 804210FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80421104  3B E0 00 02 */	li r31, 2
/* 80421108  93 C1 00 08 */	stw r30, 8(r1)
/* 8042110C  7C 9E 23 78 */	mr r30, r4
/* 80421110  80 64 00 00 */	lwz r3, 0(r4)
/* 80421114  4B F7 CA D9 */	bl mEv_check_keep
/* 80421118  2C 03 00 00 */	cmpwi r3, 0
/* 8042111C  41 82 00 10 */	beq lbl_8042112C
/* 80421120  80 7E 00 00 */	lwz r3, 0(r30)
/* 80421124  4B F7 CA 95 */	bl mEv_clear_keep
/* 80421128  3B E0 00 01 */	li r31, 1
lbl_8042112C:
/* 8042112C  3C 60 81 1D */	lis r3, wpppp@ha /* 0x811CB95C@ha */
/* 80421130  38 00 00 00 */	li r0, 0
/* 80421134  38 83 B9 5C */	addi r4, r3, wpppp@l /* 0x811CB95C@l */
/* 80421138  7F E3 FB 78 */	mr r3, r31
/* 8042113C  90 04 00 00 */	stw r0, 0(r4)
/* 80421140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80421144  83 C1 00 08 */	lwz r30, 8(r1)
/* 80421148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042114C  7C 08 03 A6 */	mtlr r0
/* 80421150  38 21 00 10 */	addi r1, r1, 0x10
/* 80421154  4E 80 00 20 */	blr 
