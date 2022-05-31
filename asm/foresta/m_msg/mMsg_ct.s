lbl_803BF53C:
/* 803BF53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF540  7C 08 02 A6 */	mflr r0
/* 803BF544  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BF54C  7C 7F 1B 78 */	mr r31, r3
/* 803BF550  48 00 14 FD */	bl mMsg_init
/* 803BF554  3C 60 81 17 */	lis r3, mMsg_window@ha /* 0x81169FC0@ha */
/* 803BF558  7F E4 FB 78 */	mr r4, r31
/* 803BF55C  38 63 9F C0 */	addi r3, r3, mMsg_window@l /* 0x81169FC0@l */
/* 803BF560  38 63 02 E8 */	addi r3, r3, 0x2e8
/* 803BF564  4B FC 3F 95 */	bl mChoice_ct
/* 803BF568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF56C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BF570  7C 08 03 A6 */	mtlr r0
/* 803BF574  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF578  4E 80 00 20 */	blr 
