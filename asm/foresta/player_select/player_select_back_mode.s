lbl_8062C110:
/* 8062C110  80 A3 00 00 */	lwz r5, 0(r3)
/* 8062C114  38 05 FF FF */	addi r0, r5, -1
/* 8062C118  90 03 00 00 */	stw r0, 0(r3)
/* 8062C11C  80 03 00 00 */	lwz r0, 0(r3)
/* 8062C120  2C 00 00 00 */	cmpwi r0, 0
/* 8062C124  4C 80 00 20 */	bgelr 
/* 8062C128  38 04 FF FF */	addi r0, r4, -1
/* 8062C12C  90 03 00 00 */	stw r0, 0(r3)
/* 8062C130  4E 80 00 20 */	blr 
