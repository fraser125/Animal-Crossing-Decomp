lbl_8039DB00:
/* 8039DB00  3C C0 81 16 */	lis r6, index_today@ha /* 0x811677AC@ha */
/* 8039DB04  3C A0 81 16 */	lis r5, event_today@ha /* 0x811676AC@ha */
/* 8039DB08  38 C6 77 AC */	addi r6, r6, index_today@l /* 0x811677AC@l */
/* 8039DB0C  7C 66 18 AE */	lbzx r3, r6, r3
/* 8039DB10  38 05 76 AC */	addi r0, r5, event_today@l /* 0x811676AC@l */
/* 8039DB14  28 03 00 FF */	cmplwi r3, 0xff
/* 8039DB18  54 63 25 36 */	rlwinm r3, r3, 4, 0x14, 0x1b
/* 8039DB1C  7C 60 1A 14 */	add r3, r0, r3
/* 8039DB20  40 82 00 0C */	bne lbl_8039DB2C
/* 8039DB24  38 60 00 00 */	li r3, 0
/* 8039DB28  4E 80 00 20 */	blr 
lbl_8039DB2C:
/* 8039DB2C  7C 80 07 34 */	extsh r0, r4
/* 8039DB30  2C 00 00 20 */	cmpwi r0, 0x20
/* 8039DB34  41 82 00 18 */	beq lbl_8039DB4C
/* 8039DB38  A8 03 00 0C */	lha r0, 0xc(r3)
/* 8039DB3C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8039DB40  41 82 00 0C */	beq lbl_8039DB4C
/* 8039DB44  38 60 00 00 */	li r3, 0
/* 8039DB48  4E 80 00 20 */	blr 
lbl_8039DB4C:
/* 8039DB4C  A8 63 00 0C */	lha r3, 0xc(r3)
/* 8039DB50  7C 80 07 34 */	extsh r0, r4
/* 8039DB54  7C 63 00 38 */	and r3, r3, r0
/* 8039DB58  30 03 FF FF */	addic r0, r3, -1
/* 8039DB5C  7C 60 19 10 */	subfe r3, r0, r3
/* 8039DB60  4E 80 00 20 */	blr 
