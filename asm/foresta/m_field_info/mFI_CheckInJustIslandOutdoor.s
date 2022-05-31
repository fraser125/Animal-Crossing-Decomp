lbl_803A7110:
/* 803A7110  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A7114  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A7118  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803A711C  2C 00 00 07 */	cmpwi r0, 7
/* 803A7120  40 82 00 1C */	bne lbl_803A713C
/* 803A7124  3C 60 81 16 */	lis r3, l_mfi_player_bk_kind@ha /* 0x81167C20@ha */
/* 803A7128  80 03 7C 20 */	lwz r0, l_mfi_player_bk_kind@l(r3)  /* 0x81167C20@l */
/* 803A712C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 803A7130  41 82 00 0C */	beq lbl_803A713C
/* 803A7134  38 60 00 01 */	li r3, 1
/* 803A7138  4E 80 00 20 */	blr 
lbl_803A713C:
/* 803A713C  38 60 00 00 */	li r3, 0
/* 803A7140  4E 80 00 20 */	blr 
