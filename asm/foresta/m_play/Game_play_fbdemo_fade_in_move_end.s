lbl_80629F78:
/* 80629F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629F7C  7C 08 02 A6 */	mflr r0
/* 80629F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80629F88  7C 7F 1B 78 */	mr r31, r3
/* 80629F8C  4B FF FD F1 */	bl Game_play_fbdemo_wipe_destroy
/* 80629F90  88 1F 20 D2 */	lbz r0, 0x20d2(r31)
/* 80629F94  28 00 00 03 */	cmplwi r0, 3
/* 80629F98  40 82 00 20 */	bne lbl_80629FB8
/* 80629F9C  3C 60 81 23 */	lis r3, fbdemo@ha /* 0x81233960@ha */
/* 80629FA0  38 63 39 60 */	addi r3, r3, fbdemo@l /* 0x81233960@l */
/* 80629FA4  4B D7 66 61 */	bl fbdemo_cleanup
/* 80629FA8  38 00 00 00 */	li r0, 0
/* 80629FAC  38 60 00 03 */	li r3, 3
/* 80629FB0  98 1F 20 D2 */	stb r0, 0x20d2(r31)
/* 80629FB4  4B DD AE 81 */	bl SetGameFrame
lbl_80629FB8:
/* 80629FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629FBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80629FC0  7C 08 03 A6 */	mtlr r0
/* 80629FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80629FC8  4E 80 00 20 */	blr 
