lbl_80406778:
/* 80406778  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 8040677C  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80406780  54 C3 0F FE */	srwi r3, r6, 0x1f
/* 80406784  38 A0 00 00 */	li r5, 0
/* 80406788  7C 03 00 50 */	subf r0, r3, r0
/* 8040678C  54 00 10 3E */	rotlwi r0, r0, 2
/* 80406790  7C 00 1A 15 */	add. r0, r0, r3
/* 80406794  40 82 00 18 */	bne lbl_804067AC
/* 80406798  38 60 00 64 */	li r3, 0x64
/* 8040679C  7C 06 1B D6 */	divw r0, r6, r3
/* 804067A0  7C 00 19 D6 */	mullw r0, r0, r3
/* 804067A4  7C 00 30 51 */	subf. r0, r0, r6
/* 804067A8  40 82 00 18 */	bne lbl_804067C0
lbl_804067AC:
/* 804067AC  38 60 01 90 */	li r3, 0x190
/* 804067B0  7C 06 1B D6 */	divw r0, r6, r3
/* 804067B4  7C 00 19 D6 */	mullw r0, r0, r3
/* 804067B8  7C 00 30 51 */	subf. r0, r0, r6
/* 804067BC  40 82 00 08 */	bne lbl_804067C4
lbl_804067C0:
/* 804067C0  38 A0 00 01 */	li r5, 1
lbl_804067C4:
/* 804067C4  20 05 00 01 */	subfic r0, r5, 1
/* 804067C8  3C 60 80 64 */	lis r3, data_8064360C@ha /* 0x8064360C@ha */
/* 804067CC  7C 05 00 34 */	cntlzw r5, r0
/* 804067D0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 804067D4  38 63 36 0C */	addi r3, r3, data_8064360C@l /* 0x8064360C@l */
/* 804067D8  54 A4 D9 7E */	srwi r4, r5, 5
/* 804067DC  1C 84 00 0D */	mulli r4, r4, 0xd
/* 804067E0  7C 63 22 14 */	add r3, r3, r4
/* 804067E4  7C 63 00 AE */	lbzx r3, r3, r0
/* 804067E8  4E 80 00 20 */	blr 