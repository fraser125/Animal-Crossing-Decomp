lbl_8060108C:
/* 8060108C  3C 80 80 60 */	lis r4, mPM_passwordMake_ovl_move@ha /* 0x80600AFC@ha */
/* 80601090  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80601094  38 04 0A FC */	addi r0, r4, mPM_passwordMake_ovl_move@l /* 0x80600AFC@l */
/* 80601098  3C 60 80 60 */	lis r3, mPM_passwordMake_ovl_draw@ha /* 0x80601034@ha */
/* 8060109C  90 05 09 0C */	stw r0, 0x90c(r5)
/* 806010A0  38 03 10 34 */	addi r0, r3, mPM_passwordMake_ovl_draw@l /* 0x80601034@l */
/* 806010A4  90 05 09 10 */	stw r0, 0x910(r5)
/* 806010A8  4E 80 00 20 */	blr 
