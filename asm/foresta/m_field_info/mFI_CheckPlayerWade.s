lbl_803A8B3C:
/* 803A8B3C  3C 80 81 16 */	lis r4, l_player_wade@ha /* 0x81167CA4@ha */
/* 803A8B40  38 A0 00 00 */	li r5, 0
/* 803A8B44  80 04 7C A4 */	lwz r0, l_player_wade@l(r4)  /* 0x81167CA4@l */
/* 803A8B48  7C 03 00 00 */	cmpw r3, r0
/* 803A8B4C  40 82 00 08 */	bne lbl_803A8B54
/* 803A8B50  38 A0 00 01 */	li r5, 1
lbl_803A8B54:
/* 803A8B54  7C A3 2B 78 */	mr r3, r5
/* 803A8B58  4E 80 00 20 */	blr 
