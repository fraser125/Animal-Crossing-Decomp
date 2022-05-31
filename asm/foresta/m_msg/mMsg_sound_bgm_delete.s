lbl_803C2388:
/* 803C2388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C238C  7C 08 02 A6 */	mflr r0
/* 803C2390  2C 03 00 00 */	cmpwi r3, 0
/* 803C2394  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2398  40 82 00 0C */	bne lbl_803C23A4
/* 803C239C  4B FB 9F 2D */	bl mBGMPsComp_delete_ps_quiet
/* 803C23A0  48 00 00 24 */	b lbl_803C23C4
lbl_803C23A4:
/* 803C23A4  3C C0 80 65 */	lis r6, mMsg_bgm_num@ha /* 0x80657228@ha */
/* 803C23A8  3C A0 80 65 */	lis r5, mMsg_bgm_stop@ha /* 0x80657234@ha */
/* 803C23AC  38 C6 72 28 */	addi r6, r6, mMsg_bgm_num@l /* 0x80657228@l */
/* 803C23B0  54 80 08 3C */	slwi r0, r4, 1
/* 803C23B4  38 85 72 34 */	addi r4, r5, mMsg_bgm_stop@l /* 0x80657234@l */
/* 803C23B8  7C 66 18 AE */	lbzx r3, r6, r3
/* 803C23BC  7C 84 02 2E */	lhzx r4, r4, r0
/* 803C23C0  4B FB 9F 65 */	bl mBGMPsComp_delete_ps_demo
lbl_803C23C4:
/* 803C23C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C23C8  7C 08 03 A6 */	mtlr r0
/* 803C23CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C23D0  4E 80 00 20 */	blr 
