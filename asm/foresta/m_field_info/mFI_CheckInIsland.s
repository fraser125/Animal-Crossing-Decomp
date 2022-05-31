lbl_803A70D8:
/* 803A70D8  3C 80 81 16 */	lis r4, l_mfi_player_bk_kind@ha /* 0x81167C20@ha */
/* 803A70DC  38 60 00 00 */	li r3, 0
/* 803A70E0  80 04 7C 20 */	lwz r0, l_mfi_player_bk_kind@l(r4)  /* 0x81167C20@l */
/* 803A70E4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 803A70E8  40 82 00 20 */	bne lbl_803A7108
/* 803A70EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A70F0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A70F4  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803A70F8  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803A70FC  41 82 00 0C */	beq lbl_803A7108
/* 803A7100  2C 00 00 30 */	cmpwi r0, 0x30
/* 803A7104  4C 82 00 20 */	bnelr 
lbl_803A7108:
/* 803A7108  38 60 00 01 */	li r3, 1
/* 803A710C  4E 80 00 20 */	blr 
