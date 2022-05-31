lbl_8042D7C4:
/* 8042D7C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042D7C8  7C 08 02 A6 */	mflr r0
/* 8042D7CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042D7D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042D7D4  7C 9F 23 78 */	mr r31, r4
/* 8042D7D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042D7DC  7C 7E 1B 78 */	mr r30, r3
/* 8042D7E0  7F E3 FB 78 */	mr r3, r31
/* 8042D7E4  4B FA BE 8D */	bl mPlib_get_player_actor_main_index
/* 8042D7E8  2C 03 00 5A */	cmpwi r3, 0x5a
/* 8042D7EC  40 82 00 14 */	bne lbl_8042D800
/* 8042D7F0  7F C3 F3 78 */	mr r3, r30
/* 8042D7F4  38 80 00 03 */	li r4, 3
/* 8042D7F8  48 00 02 2D */	bl aMBX_setupAction
/* 8042D7FC  48 00 00 54 */	b lbl_8042D850
lbl_8042D800:
/* 8042D800  80 DE 03 18 */	lwz r6, 0x318(r30)
/* 8042D804  3C A0 80 68 */	lis r5, posX@ha /* 0x806849F8@ha */
/* 8042D808  3C 80 80 64 */	lis r4, lit_524@ha /* 0x80644110@ha */
/* 8042D80C  3C 60 80 68 */	lis r3, angle@ha /* 0x806849F4@ha */
/* 8042D810  54 C0 17 7A */	rlwinm r0, r6, 2, 0x1d, 0x1d
/* 8042D814  38 A5 49 F8 */	addi r5, r5, posX@l /* 0x806849F8@l */
/* 8042D818  7C 05 04 2E */	lfsx f0, r5, r0
/* 8042D81C  54 C0 0F BC */	rlwinm r0, r6, 1, 0x1e, 0x1e
/* 8042D820  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8042D824  38 63 49 F4 */	addi r3, r3, angle@l /* 0x806849F4@l */
/* 8042D828  C0 24 41 10 */	lfs f1, lit_524@l(r4)  /* 0x80644110@l */
/* 8042D82C  38 81 00 08 */	addi r4, r1, 8
/* 8042D830  EC 02 00 2A */	fadds f0, f2, f0
/* 8042D834  7C A3 02 AE */	lhax r5, r3, r0
/* 8042D838  7F E3 FB 78 */	mr r3, r31
/* 8042D83C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8042D840  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8042D844  EC 01 00 2A */	fadds f0, f1, f0
/* 8042D848  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8042D84C  4B FA D1 5D */	bl mPlib_request_main_mail_jump_type1
lbl_8042D850:
/* 8042D850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D854  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042D858  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042D85C  7C 08 03 A6 */	mtlr r0
/* 8042D860  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D864  4E 80 00 20 */	blr 
