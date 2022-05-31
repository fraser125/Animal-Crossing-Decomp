lbl_803C230C:
/* 803C230C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2310  7C 08 02 A6 */	mflr r0
/* 803C2314  2C 03 00 00 */	cmpwi r3, 0
/* 803C2318  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C231C  40 82 00 1C */	bne lbl_803C2338
/* 803C2320  3C 60 80 65 */	lis r3, mMsg_bgm_stop@ha /* 0x80657234@ha */
/* 803C2324  54 80 08 3C */	slwi r0, r4, 1
/* 803C2328  38 63 72 34 */	addi r3, r3, mMsg_bgm_stop@l /* 0x80657234@l */
/* 803C232C  7C 63 02 2E */	lhzx r3, r3, r0
/* 803C2330  4B FB 98 55 */	bl mBGMPsComp_make_ps_quiet
/* 803C2334  48 00 00 44 */	b lbl_803C2378
lbl_803C2338:
/* 803C2338  2C 03 00 06 */	cmpwi r3, 6
/* 803C233C  40 82 00 1C */	bne lbl_803C2358
/* 803C2340  3C 60 80 65 */	lis r3, mMsg_bgm_stop@ha /* 0x80657234@ha */
/* 803C2344  54 80 08 3C */	slwi r0, r4, 1
/* 803C2348  38 63 72 34 */	addi r3, r3, mMsg_bgm_stop@l /* 0x80657234@l */
/* 803C234C  7C 63 02 2E */	lhzx r3, r3, r0
/* 803C2350  4B FB 9C 61 */	bl mBGMPsComp_make_ps_fc_quietField
/* 803C2354  48 00 00 24 */	b lbl_803C2378
lbl_803C2358:
/* 803C2358  3C C0 80 65 */	lis r6, mMsg_bgm_num@ha /* 0x80657228@ha */
/* 803C235C  3C A0 80 65 */	lis r5, mMsg_bgm_stop@ha /* 0x80657234@ha */
/* 803C2360  38 C6 72 28 */	addi r6, r6, mMsg_bgm_num@l /* 0x80657228@l */
/* 803C2364  54 80 08 3C */	slwi r0, r4, 1
/* 803C2368  38 85 72 34 */	addi r4, r5, mMsg_bgm_stop@l /* 0x80657234@l */
/* 803C236C  7C 66 18 AE */	lbzx r3, r6, r3
/* 803C2370  7C 84 02 2E */	lhzx r4, r4, r0
/* 803C2374  4B FB 99 95 */	bl mBGMPsComp_make_ps_demo
lbl_803C2378:
/* 803C2378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C237C  7C 08 03 A6 */	mtlr r0
/* 803C2380  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2384  4E 80 00 20 */	blr 
