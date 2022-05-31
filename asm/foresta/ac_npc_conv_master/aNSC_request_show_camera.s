lbl_80545BBC:
/* 80545BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545BC0  7C 08 02 A6 */	mflr r0
/* 80545BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80545BCC  7C 9F 23 78 */	mr r31, r4
/* 80545BD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80545BD4  7C 7E 1B 78 */	mr r30, r3
/* 80545BD8  4B EA 3D 8D */	bl mSP_GetShopLevel
/* 80545BDC  20 03 00 03 */	subfic r0, r3, 3
/* 80545BE0  3C 80 80 6A */	lis r4, pcenter@ha /* 0x806A49B8@ha */
/* 80545BE4  7C 00 00 34 */	cntlzw r0, r0
/* 80545BE8  3C 60 80 6A */	lis r3, peye@ha /* 0x806A49E8@ha */
/* 80545BEC  54 00 D9 7E */	srwi r0, r0, 5
/* 80545BF0  38 84 49 B8 */	addi r4, r4, pcenter@l /* 0x806A49B8@l */
/* 80545BF4  1C C0 00 18 */	mulli r6, r0, 0x18
/* 80545BF8  38 03 49 E8 */	addi r0, r3, peye@l /* 0x806A49E8@l */
/* 80545BFC  7F C3 F3 78 */	mr r3, r30
/* 80545C00  1C BF 00 0C */	mulli r5, r31, 0xc
/* 80545C04  7C 84 32 14 */	add r4, r4, r6
/* 80545C08  7C 00 32 14 */	add r0, r0, r6
/* 80545C0C  7C 84 2A 14 */	add r4, r4, r5
/* 80545C10  7C A0 2A 14 */	add r5, r0, r5
/* 80545C14  4B E3 C7 3D */	bl Camera2_request_BuySikimono_WallPaper
/* 80545C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80545C1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80545C20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80545C24  7C 08 03 A6 */	mtlr r0
/* 80545C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80545C2C  4E 80 00 20 */	blr 
