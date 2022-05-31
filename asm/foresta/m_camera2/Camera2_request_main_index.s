lbl_8037EAD0:
/* 8037EAD0  90 83 1B F0 */	stw r4, 0x1bf0(r3)
/* 8037EAD4  38 00 00 01 */	li r0, 1
/* 8037EAD8  90 A3 1B F4 */	stw r5, 0x1bf4(r3)
/* 8037EADC  90 03 1B F8 */	stw r0, 0x1bf8(r3)
/* 8037EAE0  4E 80 00 20 */	blr 
