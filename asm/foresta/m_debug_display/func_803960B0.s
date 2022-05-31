lbl_803960B0:
/* 803960B0  3C 60 81 16 */	lis r3, debug_display@ha /* 0x81166140@ha */
/* 803960B4  38 00 00 00 */	li r0, 0
/* 803960B8  90 03 61 40 */	stw r0, debug_display@l(r3)  /* 0x81166140@l */
/* 803960BC  4E 80 00 20 */	blr 
