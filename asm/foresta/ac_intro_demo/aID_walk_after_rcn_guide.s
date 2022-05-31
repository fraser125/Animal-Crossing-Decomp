lbl_8042AF34:
/* 8042AF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042AF38  7C 08 02 A6 */	mflr r0
/* 8042AF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042AF44  7C 9F 23 78 */	mr r31, r4
/* 8042AF48  93 C1 00 08 */	stw r30, 8(r1)
/* 8042AF4C  7C 7E 1B 78 */	mr r30, r3
/* 8042AF50  3C 60 80 64 */	lis r3, lit_571@ha /* 0x80644054@ha */
/* 8042AF54  80 BE 01 88 */	lwz r5, 0x188(r30)
/* 8042AF58  C0 03 40 54 */	lfs f0, lit_571@l(r3)  /* 0x80644054@l */
/* 8042AF5C  C0 45 00 BC */	lfs f2, 0xbc(r5)
/* 8042AF60  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 8042AF64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8042AF68  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 8042AF6C  C0 65 00 74 */	lfs f3, 0x74(r5)
/* 8042AF70  7C 00 00 26 */	mfcr r0
/* 8042AF74  3C 60 80 68 */	lis r3, rate_table@ha /* 0x80684164@ha */
/* 8042AF78  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 8042AF7C  38 63 41 64 */	addi r3, r3, rate_table@l /* 0x80684164@l */
/* 8042AF80  7C 03 04 2E */	lfsx f0, r3, r0
/* 8042AF84  EC 63 00 32 */	fmuls f3, f3, f0
/* 8042AF88  4B FB 09 4D */	bl mPlib_Set_goal_player_demo_walk
/* 8042AF8C  80 7E 01 88 */	lwz r3, 0x188(r30)
/* 8042AF90  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8042AF94  28 00 00 00 */	cmplwi r0, 0
/* 8042AF98  40 82 00 1C */	bne lbl_8042AFB4
/* 8042AF9C  7F E3 FB 78 */	mr r3, r31
/* 8042AFA0  4B FA F2 31 */	bl mPlib_request_main_wait_type3
/* 8042AFA4  7F C3 F3 78 */	mr r3, r30
/* 8042AFA8  7F E4 FB 78 */	mr r4, r31
/* 8042AFAC  38 A0 00 0A */	li r5, 0xa
/* 8042AFB0  48 00 05 65 */	bl aID_setupAction
lbl_8042AFB4:
/* 8042AFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042AFB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042AFBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042AFC0  7C 08 03 A6 */	mtlr r0
/* 8042AFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8042AFC8  4E 80 00 20 */	blr 
