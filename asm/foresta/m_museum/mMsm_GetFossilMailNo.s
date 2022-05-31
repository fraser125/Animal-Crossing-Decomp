lbl_803C6340:
/* 803C6340  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803C6344  38 80 00 00 */	li r4, 0
/* 803C6348  28 00 1E EC */	cmplwi r0, 0x1eec
/* 803C634C  41 80 00 10 */	blt lbl_803C635C
/* 803C6350  28 00 1F 4F */	cmplwi r0, 0x1f4f
/* 803C6354  41 81 00 08 */	bgt lbl_803C635C
/* 803C6358  38 80 00 01 */	li r4, 1
lbl_803C635C:
/* 803C635C  20 04 00 00 */	subfic r0, r4, 0
/* 803C6360  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803C6364  7C A0 01 10 */	subfe r5, r0, r0
/* 803C6368  3C 60 80 66 */	lis r3, mail_no_table@ha /* 0x8065A190@ha */
/* 803C636C  38 04 E1 14 */	addi r0, r4, -7916
/* 803C6370  7C 00 16 70 */	srawi r0, r0, 2
/* 803C6374  38 63 A1 90 */	addi r3, r3, mail_no_table@l /* 0x8065A190@l */
/* 803C6378  7C 00 28 38 */	and r0, r0, r5
/* 803C637C  54 00 10 3A */	slwi r0, r0, 2
/* 803C6380  7C 63 00 2E */	lwzx r3, r3, r0
/* 803C6384  4E 80 00 20 */	blr 
