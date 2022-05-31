lbl_8054D4D4:
/* 8054D4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D4D8  7C 08 02 A6 */	mflr r0
/* 8054D4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D4E4  7C 9F 23 78 */	mr r31, r4
/* 8054D4E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8054D4EC  7C 7E 1B 78 */	mr r30, r3
/* 8054D4F0  4B E9 C4 75 */	bl mSP_GetShopLevel
/* 8054D4F4  20 03 00 03 */	subfic r0, r3, 3
/* 8054D4F8  3C 80 80 6A */	lis r4, pcenter@ha /* 0x806A5BCC@ha */
/* 8054D4FC  7C 00 00 34 */	cntlzw r0, r0
/* 8054D500  3C 60 80 6A */	lis r3, peye@ha /* 0x806A5BFC@ha */
/* 8054D504  54 00 D9 7E */	srwi r0, r0, 5
/* 8054D508  38 84 5B CC */	addi r4, r4, pcenter@l /* 0x806A5BCC@l */
/* 8054D50C  1C C0 00 18 */	mulli r6, r0, 0x18
/* 8054D510  38 03 5B FC */	addi r0, r3, peye@l /* 0x806A5BFC@l */
/* 8054D514  7F C3 F3 78 */	mr r3, r30
/* 8054D518  1C BF 00 0C */	mulli r5, r31, 0xc
/* 8054D51C  7C 84 32 14 */	add r4, r4, r6
/* 8054D520  7C 00 32 14 */	add r0, r0, r6
/* 8054D524  7C 84 2A 14 */	add r4, r4, r5
/* 8054D528  7C A0 2A 14 */	add r5, r0, r5
/* 8054D52C  4B E3 4E 25 */	bl Camera2_request_BuySikimono_WallPaper
/* 8054D530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D534  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D538  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054D53C  7C 08 03 A6 */	mtlr r0
/* 8054D540  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D544  4E 80 00 20 */	blr 
