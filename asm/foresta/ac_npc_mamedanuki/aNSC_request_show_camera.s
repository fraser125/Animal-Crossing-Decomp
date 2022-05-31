lbl_8055A4C0:
/* 8055A4C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A4C4  7C 08 02 A6 */	mflr r0
/* 8055A4C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A4CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055A4D0  7C 9F 23 78 */	mr r31, r4
/* 8055A4D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8055A4D8  7C 7E 1B 78 */	mr r30, r3
/* 8055A4DC  4B E8 F4 89 */	bl mSP_GetShopLevel
/* 8055A4E0  20 03 00 03 */	subfic r0, r3, 3
/* 8055A4E4  3C 80 80 6B */	lis r4, pcenter@ha /* 0x806A9D5C@ha */
/* 8055A4E8  7C 00 00 34 */	cntlzw r0, r0
/* 8055A4EC  3C 60 80 6B */	lis r3, peye@ha /* 0x806A9D8C@ha */
/* 8055A4F0  54 00 D9 7E */	srwi r0, r0, 5
/* 8055A4F4  38 84 9D 5C */	addi r4, r4, pcenter@l /* 0x806A9D5C@l */
/* 8055A4F8  1C C0 00 18 */	mulli r6, r0, 0x18
/* 8055A4FC  38 03 9D 8C */	addi r0, r3, peye@l /* 0x806A9D8C@l */
/* 8055A500  7F C3 F3 78 */	mr r3, r30
/* 8055A504  1C BF 00 0C */	mulli r5, r31, 0xc
/* 8055A508  7C 84 32 14 */	add r4, r4, r6
/* 8055A50C  7C 00 32 14 */	add r0, r0, r6
/* 8055A510  7C 84 2A 14 */	add r4, r4, r5
/* 8055A514  7C A0 2A 14 */	add r5, r0, r5
/* 8055A518  4B E2 7E 39 */	bl Camera2_request_BuySikimono_WallPaper
/* 8055A51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A520  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055A524  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055A528  7C 08 03 A6 */	mtlr r0
/* 8055A52C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A530  4E 80 00 20 */	blr 
