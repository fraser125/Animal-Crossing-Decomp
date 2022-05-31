lbl_803FAACC:
/* 803FAACC  38 00 00 00 */	li r0, 0
/* 803FAAD0  7C 05 20 00 */	cmpw r5, r4
/* 803FAAD4  90 03 00 00 */	stw r0, 0(r3)
/* 803FAAD8  40 80 00 10 */	bge lbl_803FAAE8
/* 803FAADC  38 00 00 01 */	li r0, 1
/* 803FAAE0  7C A4 2B 78 */	mr r4, r5
/* 803FAAE4  90 03 00 00 */	stw r0, 0(r3)
lbl_803FAAE8:
/* 803FAAE8  7C 83 23 78 */	mr r3, r4
/* 803FAAEC  4E 80 00 20 */	blr 
