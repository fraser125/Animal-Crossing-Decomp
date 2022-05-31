lbl_804AB210:
/* 804AB210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB214  7C 08 02 A6 */	mflr r0
/* 804AB218  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB21C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB220  7C 9F 23 78 */	mr r31, r4
/* 804AB224  93 C1 00 08 */	stw r30, 8(r1)
/* 804AB228  7C 7E 1B 78 */	mr r30, r3
/* 804AB22C  48 00 05 31 */	bl aTKC_clip_next_run
/* 804AB230  7F C3 F3 78 */	mr r3, r30
/* 804AB234  7F E4 FB 78 */	mr r4, r31
/* 804AB238  4B FF FF 85 */	bl aTKN1_turn_init
/* 804AB23C  38 60 00 66 */	li r3, 0x66
/* 804AB240  38 00 00 00 */	li r0, 0
/* 804AB244  B0 7E 09 74 */	sth r3, 0x974(r30)
/* 804AB248  98 1E 09 73 */	stb r0, 0x973(r30)
/* 804AB24C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB250  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AB254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB258  7C 08 03 A6 */	mtlr r0
/* 804AB25C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB260  4E 80 00 20 */	blr 
