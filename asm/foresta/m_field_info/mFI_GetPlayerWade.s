lbl_803A8B5C:
/* 803A8B5C  3C 60 81 16 */	lis r3, l_player_wade@ha /* 0x81167CA4@ha */
/* 803A8B60  38 63 7C A4 */	addi r3, r3, l_player_wade@l /* 0x81167CA4@l */
/* 803A8B64  80 63 00 00 */	lwz r3, 0(r3)
/* 803A8B68  4E 80 00 20 */	blr 
