lbl_804DE450:
/* 804DE450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE454  7C 08 02 A6 */	mflr r0
/* 804DE458  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804DE45C  38 A0 00 00 */	li r5, 0
/* 804DE460  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804DE464  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE468  3C 84 00 03 */	addis r4, r4, 3
/* 804DE46C  98 A4 88 39 */	stb r5, -0x77c7(r4)
/* 804DE470  88 03 12 1E */	lbz r0, 0x121e(r3)
/* 804DE474  7C 00 07 75 */	extsb. r0, r0
/* 804DE478  41 82 00 14 */	beq lbl_804DE48C
/* 804DE47C  98 A3 12 1E */	stb r5, 0x121e(r3)
/* 804DE480  38 60 00 43 */	li r3, 0x43
/* 804DE484  38 80 00 00 */	li r4, 0
/* 804DE488  4B E9 DE F9 */	bl mBGMPsComp_delete_ps_happening
lbl_804DE48C:
/* 804DE48C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE490  7C 08 03 A6 */	mtlr r0
/* 804DE494  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE498  4E 80 00 20 */	blr 
