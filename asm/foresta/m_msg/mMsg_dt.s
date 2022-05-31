lbl_803BF57C:
/* 803BF57C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF580  7C 08 02 A6 */	mflr r0
/* 803BF584  3C 80 81 17 */	lis r4, mMsg_window@ha /* 0x81169FC0@ha */
/* 803BF588  38 A4 9F C0 */	addi r5, r4, mMsg_window@l /* 0x81169FC0@l */
/* 803BF58C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF590  7C 64 1B 78 */	mr r4, r3
/* 803BF594  38 65 02 E8 */	addi r3, r5, 0x2e8
/* 803BF598  4B FC 3F A5 */	bl mChoice_dt
/* 803BF59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF5A0  7C 08 03 A6 */	mtlr r0
/* 803BF5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF5A8  4E 80 00 20 */	blr 
