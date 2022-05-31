lbl_8057C904:
/* 8057C904  A8 A3 09 B0 */	lha r5, 0x9b0(r3)
/* 8057C908  3C 80 80 6C */	lis r4, root_table@ha /* 0x806C06FC@ha */
/* 8057C90C  38 84 06 FC */	addi r4, r4, root_table@l /* 0x806C06FC@l */
/* 8057C910  A8 03 09 B2 */	lha r0, 0x9b2(r3)
/* 8057C914  54 A5 10 3A */	slwi r5, r5, 2
/* 8057C918  7C 84 28 2E */	lwzx r4, r4, r5
/* 8057C91C  7C 04 00 AE */	lbzx r0, r4, r0
/* 8057C920  B0 03 09 B4 */	sth r0, 0x9b4(r3)
/* 8057C924  4E 80 00 20 */	blr 
