lbl_803BADA0:
/* 803BADA0  A8 03 00 00 */	lha r0, 0(r3)
/* 803BADA4  7C 86 07 34 */	extsh r6, r4
/* 803BADA8  7C A0 2A 14 */	add r5, r0, r5
/* 803BADAC  7C 06 00 50 */	subf r0, r6, r0
/* 803BADB0  B0 A3 00 00 */	sth r5, 0(r3)
/* 803BADB4  7C 00 07 34 */	extsh r0, r0
/* 803BADB8  A8 A3 00 00 */	lha r5, 0(r3)
/* 803BADBC  7C C6 28 50 */	subf r6, r6, r5
/* 803BADC0  7C C5 07 34 */	extsh r5, r6
/* 803BADC4  7C 05 01 D7 */	mullw. r0, r5, r0
/* 803BADC8  41 81 00 28 */	bgt lbl_803BADF0
/* 803BADCC  7C C0 07 35 */	extsh. r0, r6
/* 803BADD0  7C 05 00 D0 */	neg r0, r5
/* 803BADD4  41 80 00 08 */	blt lbl_803BADDC
/* 803BADD8  7C A0 2B 78 */	mr r0, r5
lbl_803BADDC:
/* 803BADDC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803BADE0  40 80 00 10 */	bge lbl_803BADF0
/* 803BADE4  B0 83 00 00 */	sth r4, 0(r3)
/* 803BADE8  38 60 00 01 */	li r3, 1
/* 803BADEC  4E 80 00 20 */	blr 
lbl_803BADF0:
/* 803BADF0  38 60 00 00 */	li r3, 0
/* 803BADF4  4E 80 00 20 */	blr 
