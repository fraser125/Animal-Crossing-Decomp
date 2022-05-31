lbl_803BF67C:
/* 803BF67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF680  7C 08 02 A6 */	mflr r0
/* 803BF684  3C A0 81 17 */	lis r5, mMsg_window@ha /* 0x81169FC0@ha */
/* 803BF688  7C 64 1B 78 */	mr r4, r3
/* 803BF68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF690  38 65 9F C0 */	addi r3, r5, mMsg_window@l /* 0x81169FC0@l */
/* 803BF694  4B FF FD 91 */	bl mMsg_Draw_Window
/* 803BF698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF69C  7C 08 03 A6 */	mtlr r0
/* 803BF6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF6A4  4E 80 00 20 */	blr 
