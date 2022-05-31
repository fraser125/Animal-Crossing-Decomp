lbl_80577154:
/* 80577154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80577158  7C 08 02 A6 */	mflr r0
/* 8057715C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80577160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80577164  7C 9F 23 78 */	mr r31, r4
/* 80577168  93 C1 00 08 */	stw r30, 8(r1)
/* 8057716C  7C 7E 1B 78 */	mr r30, r3
/* 80577170  4B E7 27 F5 */	bl mSP_GetShopLevel
/* 80577174  20 03 00 03 */	subfic r0, r3, 3
/* 80577178  3C 80 80 6C */	lis r4, pcenter@ha /* 0x806C0190@ha */
/* 8057717C  7C 00 00 34 */	cntlzw r0, r0
/* 80577180  3C 60 80 6C */	lis r3, peye@ha /* 0x806C01C0@ha */
/* 80577184  54 00 D9 7E */	srwi r0, r0, 5
/* 80577188  38 84 01 90 */	addi r4, r4, pcenter@l /* 0x806C0190@l */
/* 8057718C  1C C0 00 18 */	mulli r6, r0, 0x18
/* 80577190  38 03 01 C0 */	addi r0, r3, peye@l /* 0x806C01C0@l */
/* 80577194  7F C3 F3 78 */	mr r3, r30
/* 80577198  1C BF 00 0C */	mulli r5, r31, 0xc
/* 8057719C  7C 84 32 14 */	add r4, r4, r6
/* 805771A0  7C 00 32 14 */	add r0, r0, r6
/* 805771A4  7C 84 2A 14 */	add r4, r4, r5
/* 805771A8  7C A0 2A 14 */	add r5, r0, r5
/* 805771AC  4B E0 B1 A5 */	bl Camera2_request_BuySikimono_WallPaper
/* 805771B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805771B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805771B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805771BC  7C 08 03 A6 */	mtlr r0
/* 805771C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805771C4  4E 80 00 20 */	blr 
