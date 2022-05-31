lbl_805C7EA0:
/* 805C7EA0  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805C7EA4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C7EA8  1C 60 00 48 */	mulli r3, r0, 0x48
/* 805C7EAC  38 63 00 54 */	addi r3, r3, 0x54
/* 805C7EB0  7C 65 1A 14 */	add r3, r5, r3
/* 805C7EB4  80 03 00 04 */	lwz r0, 4(r3)
/* 805C7EB8  2C 00 00 00 */	cmpwi r0, 0
/* 805C7EBC  4C 82 00 20 */	bnelr 
/* 805C7EC0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 805C7EC4  2C 00 00 04 */	cmpwi r0, 4
/* 805C7EC8  4C 82 00 20 */	bnelr 
/* 805C7ECC  38 00 00 01 */	li r0, 1
/* 805C7ED0  90 04 00 04 */	stw r0, 4(r4)
/* 805C7ED4  4E 80 00 20 */	blr 
