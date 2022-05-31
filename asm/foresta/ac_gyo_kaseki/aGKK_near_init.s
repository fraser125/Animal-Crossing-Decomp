lbl_805A6914:
/* 805A6914  A0 03 02 40 */	lhz r0, 0x240(r3)
/* 805A6918  3C A0 80 6C */	lis r5, aGKK_speed@ha /* 0x806C4110@ha */
/* 805A691C  3C 80 80 65 */	lis r4, lit_911@ha /* 0x8064A4B8@ha */
/* 805A6920  60 00 00 02 */	ori r0, r0, 2
/* 805A6924  38 A5 41 10 */	addi r5, r5, aGKK_speed@l /* 0x806C4110@l */
/* 805A6928  B0 03 02 40 */	sth r0, 0x240(r3)
/* 805A692C  C0 04 A4 B8 */	lfs f0, lit_911@l(r4)  /* 0x8064A4B8@l */
/* 805A6930  A8 03 01 DC */	lha r0, 0x1dc(r3)
/* 805A6934  54 00 10 3A */	slwi r0, r0, 2
/* 805A6938  7C 25 04 2E */	lfsx f1, r5, r0
/* 805A693C  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 805A6940  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 805A6944  4E 80 00 20 */	blr 
