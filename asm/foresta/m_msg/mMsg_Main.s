lbl_803BF630:
/* 803BF630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF634  7C 08 02 A6 */	mflr r0
/* 803BF638  3C 80 81 17 */	lis r4, mMsg_window@ha /* 0x81169FC0@ha */
/* 803BF63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BF644  7C 7F 1B 78 */	mr r31, r3
/* 803BF648  38 64 9F C0 */	addi r3, r4, mMsg_window@l /* 0x81169FC0@l */
/* 803BF64C  7F E4 FB 78 */	mr r4, r31
/* 803BF650  4B FF FD 81 */	bl mMsg_Main_Window
/* 803BF654  3C 60 81 17 */	lis r3, mMsg_window@ha /* 0x81169FC0@ha */
/* 803BF658  7F E4 FB 78 */	mr r4, r31
/* 803BF65C  38 63 9F C0 */	addi r3, r3, mMsg_window@l /* 0x81169FC0@l */
/* 803BF660  38 63 02 E8 */	addi r3, r3, 0x2e8
/* 803BF664  4B FC 3D 59 */	bl mChoice_Main
/* 803BF668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BF670  7C 08 03 A6 */	mtlr r0
/* 803BF674  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF678  4E 80 00 20 */	blr 
