lbl_80503944:
/* 80503944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503948  7C 08 02 A6 */	mflr r0
/* 8050394C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503950  88 03 0D 28 */	lbz r0, 0xd28(r3)
/* 80503954  7C 00 07 75 */	extsb. r0, r0
/* 80503958  41 82 00 1C */	beq lbl_80503974
/* 8050395C  38 00 00 01 */	li r0, 1
/* 80503960  98 03 12 1E */	stb r0, 0x121e(r3)
/* 80503964  4B E7 89 65 */	bl mBGMPsComp_delete_ps_quiet
/* 80503968  38 60 00 43 */	li r3, 0x43
/* 8050396C  38 80 01 68 */	li r4, 0x168
/* 80503970  4B E7 84 21 */	bl mBGMPsComp_make_ps_happening
lbl_80503974:
/* 80503974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503978  7C 08 03 A6 */	mtlr r0
/* 8050397C  38 21 00 10 */	addi r1, r1, 0x10
/* 80503980  4E 80 00 20 */	blr 