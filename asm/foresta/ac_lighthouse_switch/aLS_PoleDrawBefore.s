lbl_8042C434:
/* 8042C434  2C 05 00 0D */	cmpwi r5, 0xd
/* 8042C438  40 82 00 0C */	bne lbl_8042C444
/* 8042C43C  38 00 00 00 */	li r0, 0
/* 8042C440  90 06 00 00 */	stw r0, 0(r6)
lbl_8042C444:
/* 8042C444  38 60 00 01 */	li r3, 1
/* 8042C448  4E 80 00 20 */	blr 