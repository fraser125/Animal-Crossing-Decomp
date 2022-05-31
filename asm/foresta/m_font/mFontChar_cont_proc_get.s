lbl_803B077C:
/* 803B077C  2C 03 00 50 */	cmpwi r3, 0x50
/* 803B0780  40 82 00 10 */	bne lbl_803B0790
/* 803B0784  3C 60 80 3B */	lis r3, mFontChar_ContProc_set_color_char@ha /* 0x803B06AC@ha */
/* 803B0788  38 63 06 AC */	addi r3, r3, mFontChar_ContProc_set_color_char@l /* 0x803B06AC@l */
/* 803B078C  4E 80 00 20 */	blr 
lbl_803B0790:
/* 803B0790  2C 03 00 54 */	cmpwi r3, 0x54
/* 803B0794  38 60 00 00 */	li r3, 0
/* 803B0798  4C 82 00 20 */	bnelr 
/* 803B079C  3C 60 80 3B */	lis r3, mFontChar_ContProc_set_char_scale@ha /* 0x803B0710@ha */
/* 803B07A0  38 63 07 10 */	addi r3, r3, mFontChar_ContProc_set_char_scale@l /* 0x803B0710@l */
/* 803B07A4  4E 80 00 20 */	blr 
