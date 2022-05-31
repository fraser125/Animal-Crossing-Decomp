lbl_80619B5C:
/* 80619B5C  A8 03 00 06 */	lha r0, 6(r3)
/* 80619B60  3C 80 80 6D */	lis r4, timer_table@ha /* 0x806D3270@ha */
/* 80619B64  38 84 32 70 */	addi r4, r4, timer_table@l /* 0x806D3270@l */
/* 80619B68  54 00 08 3C */	slwi r0, r0, 1
/* 80619B6C  7C 04 02 AE */	lhax r0, r4, r0
/* 80619B70  B0 03 00 00 */	sth r0, 0(r3)
/* 80619B74  4E 80 00 20 */	blr 
