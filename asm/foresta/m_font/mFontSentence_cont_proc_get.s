lbl_803B0D40:
/* 803B0D40  2C 03 00 52 */	cmpwi r3, 0x52
/* 803B0D44  40 82 00 10 */	bne lbl_803B0D54
/* 803B0D48  3C 60 80 3B */	lis r3, mFontSentence_ContProc_set_line_offset@ha /* 0x803B0BE8@ha */
/* 803B0D4C  38 63 0B E8 */	addi r3, r3, mFontSentence_ContProc_set_line_offset@l /* 0x803B0BE8@l */
/* 803B0D50  4E 80 00 20 */	blr 
lbl_803B0D54:
/* 803B0D54  2C 03 00 53 */	cmpwi r3, 0x53
/* 803B0D58  40 82 00 10 */	bne lbl_803B0D68
/* 803B0D5C  3C 60 80 3B */	lis r3, mFontSentence_ContProc_set_line_type@ha /* 0x803B0C3C@ha */
/* 803B0D60  38 63 0C 3C */	addi r3, r3, mFontSentence_ContProc_set_line_type@l /* 0x803B0C3C@l */
/* 803B0D64  4E 80 00 20 */	blr 
lbl_803B0D68:
/* 803B0D68  2C 03 00 5A */	cmpwi r3, 0x5a
/* 803B0D6C  40 82 00 10 */	bne lbl_803B0D7C
/* 803B0D70  3C 60 80 3B */	lis r3, mFontSentence_ContProc_set_line_scale@ha /* 0x803B0C84@ha */
/* 803B0D74  38 63 0C 84 */	addi r3, r3, mFontSentence_ContProc_set_line_scale@l /* 0x803B0C84@l */
/* 803B0D78  4E 80 00 20 */	blr 
lbl_803B0D7C:
/* 803B0D7C  2C 03 00 67 */	cmpwi r3, 0x67
/* 803B0D80  38 60 00 00 */	li r3, 0
/* 803B0D84  4C 82 00 20 */	bnelr 
/* 803B0D88  3C 60 80 3B */	lis r3, mFontSentence_ContProc_space@ha /* 0x803B0CF0@ha */
/* 803B0D8C  38 63 0C F0 */	addi r3, r3, mFontSentence_ContProc_space@l /* 0x803B0CF0@l */
/* 803B0D90  4E 80 00 20 */	blr 
