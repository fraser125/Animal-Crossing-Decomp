lbl_80394C6C:
/* 80394C6C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80394C70  28 03 00 FF */	cmplwi r3, 0xff
/* 80394C74  40 82 00 0C */	bne lbl_80394C80
/* 80394C78  38 60 00 00 */	li r3, 0
/* 80394C7C  4E 80 00 20 */	blr 
lbl_80394C80:
/* 80394C80  38 03 FF 02 */	addi r0, r3, -254
/* 80394C84  30 00 FF FF */	addic r0, r0, -1
/* 80394C88  7C 60 01 10 */	subfe r3, r0, r0
/* 80394C8C  38 63 00 02 */	addi r3, r3, 2
/* 80394C90  4E 80 00 20 */	blr 
