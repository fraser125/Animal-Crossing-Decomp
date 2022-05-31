lbl_8039CE50:
/* 8039CE50  3C 80 81 16 */	lis r4, index_today@ha /* 0x811677AC@ha */
/* 8039CE54  38 84 77 AC */	addi r4, r4, index_today@l /* 0x811677AC@l */
/* 8039CE58  7C 04 18 AE */	lbzx r0, r4, r3
/* 8039CE5C  28 00 00 FF */	cmplwi r0, 0xff
/* 8039CE60  41 82 00 28 */	beq lbl_8039CE88
/* 8039CE64  3C 60 81 16 */	lis r3, event_today@ha /* 0x811676AC@ha */
/* 8039CE68  54 04 25 36 */	rlwinm r4, r0, 4, 0x14, 0x1b
/* 8039CE6C  38 03 76 AC */	addi r0, r3, event_today@l /* 0x811676AC@l */
/* 8039CE70  38 60 00 01 */	li r3, 1
/* 8039CE74  7C 80 22 14 */	add r4, r0, r4
/* 8039CE78  80 04 00 04 */	lwz r0, 4(r4)
/* 8039CE7C  64 00 10 00 */	oris r0, r0, 0x1000
/* 8039CE80  90 04 00 04 */	stw r0, 4(r4)
/* 8039CE84  4E 80 00 20 */	blr 
lbl_8039CE88:
/* 8039CE88  38 60 00 00 */	li r3, 0
/* 8039CE8C  4E 80 00 20 */	blr 
