lbl_80580C60:
/* 80580C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580C64  7C 08 02 A6 */	mflr r0
/* 80580C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580C6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80580C70  7C 9F 23 78 */	mr r31, r4
/* 80580C74  93 C1 00 08 */	stw r30, 8(r1)
/* 80580C78  7C 7E 1B 78 */	mr r30, r3
/* 80580C7C  4B E6 8C E9 */	bl mSP_GetShopLevel
/* 80580C80  20 03 00 03 */	subfic r0, r3, 3
/* 80580C84  3C 80 80 6C */	lis r4, pcenter@ha /* 0x806C16D4@ha */
/* 80580C88  7C 00 00 34 */	cntlzw r0, r0
/* 80580C8C  3C 60 80 6C */	lis r3, peye@ha /* 0x806C1704@ha */
/* 80580C90  54 00 D9 7E */	srwi r0, r0, 5
/* 80580C94  38 84 16 D4 */	addi r4, r4, pcenter@l /* 0x806C16D4@l */
/* 80580C98  1C C0 00 18 */	mulli r6, r0, 0x18
/* 80580C9C  38 03 17 04 */	addi r0, r3, peye@l /* 0x806C1704@l */
/* 80580CA0  7F C3 F3 78 */	mr r3, r30
/* 80580CA4  1C BF 00 0C */	mulli r5, r31, 0xc
/* 80580CA8  7C 84 32 14 */	add r4, r4, r6
/* 80580CAC  7C 00 32 14 */	add r0, r0, r6
/* 80580CB0  7C 84 2A 14 */	add r4, r4, r5
/* 80580CB4  7C A0 2A 14 */	add r5, r0, r5
/* 80580CB8  4B E0 16 99 */	bl Camera2_request_BuySikimono_WallPaper
/* 80580CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80580CC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80580CC8  7C 08 03 A6 */	mtlr r0
/* 80580CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80580CD0  4E 80 00 20 */	blr 
