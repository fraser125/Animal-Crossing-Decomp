lbl_80406540:
/* 80406540  3C 60 80 66 */	lis r3, l_lbRTC_isInitial@ha /* 0x8065EBD0@ha */
/* 80406544  84 03 EB D0 */	lwzu r0, l_lbRTC_isInitial@l(r3)  /* 0x8065EBD0@l */
/* 80406548  2C 00 00 01 */	cmpwi r0, 1
/* 8040654C  40 82 00 0C */	bne lbl_80406558
/* 80406550  38 00 00 00 */	li r0, 0
/* 80406554  90 03 00 00 */	stw r0, 0(r3)
lbl_80406558:
/* 80406558  38 60 00 00 */	li r3, 0
/* 8040655C  4E 80 00 20 */	blr 
