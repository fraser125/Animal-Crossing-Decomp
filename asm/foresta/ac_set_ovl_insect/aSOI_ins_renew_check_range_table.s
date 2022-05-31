lbl_8049B2E0:
/* 8049B2E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049B2E4  7C 08 02 A6 */	mflr r0
/* 8049B2E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049B2EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B2F0  4B BF FB E5 */	bl func_8009AED4
/* 8049B2F4  7C 7F 1B 78 */	mr r31, r3
/* 8049B2F8  7C 9D 23 78 */	mr r29, r4
/* 8049B2FC  80 63 41 80 */	lwz r3, 0x4180(r3)
/* 8049B300  3B C0 00 00 */	li r30, 0
/* 8049B304  80 9F 41 84 */	lwz r4, 0x4184(r31)
/* 8049B308  4B F0 AF E1 */	bl mFI_BkNum2BlockKind
/* 8049B30C  54 63 02 94 */	rlwinm r3, r3, 0, 0xa, 0xa
/* 8049B310  3C 03 FF E0 */	addis r0, r3, 0xffe0
/* 8049B314  28 00 00 00 */	cmplwi r0, 0
/* 8049B318  40 82 00 0C */	bne lbl_8049B324
/* 8049B31C  3B E0 00 02 */	li r31, 2
/* 8049B320  48 00 00 40 */	b lbl_8049B360
lbl_8049B324:
/* 8049B324  38 60 00 72 */	li r3, 0x72
/* 8049B328  38 80 00 37 */	li r4, 0x37
/* 8049B32C  4B F0 2D B1 */	bl mEv_get_common_area
/* 8049B330  7C 64 1B 79 */	or. r4, r3, r3
/* 8049B334  41 82 00 28 */	beq lbl_8049B35C
/* 8049B338  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 8049B33C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8049B340  41 82 00 1C */	beq lbl_8049B35C
/* 8049B344  7F E3 FB 78 */	mr r3, r31
/* 8049B348  4B FF FF 09 */	bl aSOI_check_hitodama_set_block
/* 8049B34C  2C 03 00 01 */	cmpwi r3, 1
/* 8049B350  40 82 00 0C */	bne lbl_8049B35C
/* 8049B354  3B E0 00 03 */	li r31, 3
/* 8049B358  48 00 00 08 */	b lbl_8049B360
lbl_8049B35C:
/* 8049B35C  3B E0 00 01 */	li r31, 1
lbl_8049B360:
/* 8049B360  88 7D 02 0D */	lbz r3, 0x20d(r29)
/* 8049B364  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8049B368  7C 03 00 40 */	cmplw r3, r0
/* 8049B36C  41 82 00 1C */	beq lbl_8049B388
/* 8049B370  3C 60 80 69 */	lis r3, renew_table@ha /* 0x8068E1EC@ha */
/* 8049B374  9B FD 02 0D */	stb r31, 0x20d(r29)
/* 8049B378  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 8049B37C  38 63 E1 EC */	addi r3, r3, renew_table@l /* 0x8068E1EC@l */
/* 8049B380  7F C3 00 2E */	lwzx r30, r3, r0
/* 8049B384  48 00 00 2C */	b lbl_8049B3B0
lbl_8049B388:
/* 8049B388  28 00 00 03 */	cmplwi r0, 3
/* 8049B38C  41 82 00 24 */	beq lbl_8049B3B0
/* 8049B390  7F A3 EB 78 */	mr r3, r29
/* 8049B394  4B FF F8 B5 */	bl aSOI_ins_not_cmp_time
/* 8049B398  2C 03 00 01 */	cmpwi r3, 1
/* 8049B39C  40 82 00 14 */	bne lbl_8049B3B0
/* 8049B3A0  3C 60 80 69 */	lis r3, renew_table@ha /* 0x8068E1EC@ha */
/* 8049B3A4  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 8049B3A8  38 63 E1 EC */	addi r3, r3, renew_table@l /* 0x8068E1EC@l */
/* 8049B3AC  7F C3 00 2E */	lwzx r30, r3, r0
lbl_8049B3B0:
/* 8049B3B0  7F C3 F3 78 */	mr r3, r30
/* 8049B3B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B3B8  4B BF FB 69 */	bl func_8009AF20
/* 8049B3BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049B3C0  7C 08 03 A6 */	mtlr r0
/* 8049B3C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8049B3C8  4E 80 00 20 */	blr 
