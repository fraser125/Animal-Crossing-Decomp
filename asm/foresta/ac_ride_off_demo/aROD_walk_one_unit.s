lbl_804963BC:
/* 804963BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804963C0  7C 08 02 A6 */	mflr r0
/* 804963C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804963C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804963CC  7C 9F 23 78 */	mr r31, r4
/* 804963D0  93 C1 00 08 */	stw r30, 8(r1)
/* 804963D4  7C 7E 1B 78 */	mr r30, r3
/* 804963D8  7F E3 FB 78 */	mr r3, r31
/* 804963DC  4B F4 32 65 */	bl get_player_actor_withoutCheck
/* 804963E0  28 03 00 00 */	cmplwi r3, 0
/* 804963E4  41 82 00 74 */	beq lbl_80496458
/* 804963E8  3C 80 80 64 */	lis r4, data_80644CA4@ha /* 0x80644CA4@ha */
/* 804963EC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 804963F0  C0 44 4C A4 */	lfs f2, data_80644CA4@l(r4)  /* 0x80644CA4@l */
/* 804963F4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804963F8  4C 41 13 82 */	cror 2, 1, 2
/* 804963FC  40 82 00 48 */	bne lbl_80496444
/* 80496400  80 9E 01 84 */	lwz r4, 0x184(r30)
/* 80496404  3C 60 80 64 */	lis r3, lit_493@ha /* 0x80644CA8@ha */
/* 80496408  C0 03 4C A8 */	lfs f0, lit_493@l(r3)  /* 0x80644CA8@l */
/* 8049640C  C0 24 00 74 */	lfs f1, 0x74(r4)
/* 80496410  FC 20 0A 10 */	fabs f1, f1
/* 80496414  FC 20 08 18 */	frsp f1, f1
/* 80496418  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049641C  40 80 00 3C */	bge lbl_80496458
/* 80496420  7F E3 FB 78 */	mr r3, r31
/* 80496424  4B F4 3D AD */	bl mPlib_request_main_wait_type3
/* 80496428  7F E3 FB 78 */	mr r3, r31
/* 8049642C  38 80 00 00 */	li r4, 0
/* 80496430  38 A0 00 09 */	li r5, 9
/* 80496434  4B EE A2 A5 */	bl Camera2_request_main_normal
/* 80496438  7F C3 F3 78 */	mr r3, r30
/* 8049643C  4B ED E0 05 */	bl Actor_delete
/* 80496440  48 00 00 18 */	b lbl_80496458
lbl_80496444:
/* 80496444  3C 80 80 64 */	lis r4, lit_494@ha /* 0x80644CAC@ha */
/* 80496448  3C 60 80 64 */	lis r3, lit_495@ha /* 0x80644CB0@ha */
/* 8049644C  C0 24 4C AC */	lfs f1, lit_494@l(r4)  /* 0x80644CAC@l */
/* 80496450  C0 63 4C B0 */	lfs f3, lit_495@l(r3)  /* 0x80644CB0@l */
/* 80496454  4B F4 54 81 */	bl mPlib_Set_goal_player_demo_walk
lbl_80496458:
/* 80496458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049645C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80496460  83 C1 00 08 */	lwz r30, 8(r1)
/* 80496464  7C 08 03 A6 */	mtlr r0
/* 80496468  38 21 00 10 */	addi r1, r1, 0x10
/* 8049646C  4E 80 00 20 */	blr 
