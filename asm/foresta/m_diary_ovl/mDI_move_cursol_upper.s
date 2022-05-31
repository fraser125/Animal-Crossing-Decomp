lbl_805CF4A4:
/* 805CF4A4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 805CF4A8  2C 04 00 00 */	cmpwi r4, 0
/* 805CF4AC  4C 81 00 20 */	blelr 
/* 805CF4B0  38 84 FF FF */	addi r4, r4, -1
/* 805CF4B4  38 00 00 01 */	li r0, 1
/* 805CF4B8  90 83 00 18 */	stw r4, 0x18(r3)
/* 805CF4BC  90 03 00 14 */	stw r0, 0x14(r3)
/* 805CF4C0  4E 80 00 20 */	blr 
