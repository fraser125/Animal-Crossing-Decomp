lbl_805C172C:
/* 805C172C  3C A0 80 6C */	lis r5, process@ha /* 0x806C74B8@ha */
/* 805C1730  54 80 10 3A */	slwi r0, r4, 2
/* 805C1734  38 A5 74 B8 */	addi r5, r5, process@l /* 0x806C74B8@l */
/* 805C1738  7C 05 00 2E */	lwzx r0, r5, r0
/* 805C173C  90 03 02 A0 */	stw r0, 0x2a0(r3)
/* 805C1740  90 83 02 B4 */	stw r4, 0x2b4(r3)
/* 805C1744  4E 80 00 20 */	blr 
