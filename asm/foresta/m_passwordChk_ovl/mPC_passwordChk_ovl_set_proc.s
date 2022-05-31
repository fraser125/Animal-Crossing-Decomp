lbl_80601734:
/* 80601734  3C 80 80 60 */	lis r4, mPC_passwordChk_ovl_move@ha /* 0x8060128C@ha */
/* 80601738  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 8060173C  38 04 12 8C */	addi r0, r4, mPC_passwordChk_ovl_move@l /* 0x8060128C@l */
/* 80601740  3C 60 80 60 */	lis r3, mPC_passwordChk_ovl_draw@ha /* 0x806016DC@ha */
/* 80601744  90 05 09 0C */	stw r0, 0x90c(r5)
/* 80601748  38 03 16 DC */	addi r0, r3, mPC_passwordChk_ovl_draw@l /* 0x806016DC@l */
/* 8060174C  90 05 09 10 */	stw r0, 0x910(r5)
/* 80601750  4E 80 00 20 */	blr 
