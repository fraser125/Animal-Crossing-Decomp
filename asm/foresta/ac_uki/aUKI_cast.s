lbl_804AE904:
/* 804AE904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AE908  7C 08 02 A6 */	mflr r0
/* 804AE90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AE910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AE914  7C 9F 23 78 */	mr r31, r4
/* 804AE918  38 80 00 01 */	li r4, 1
/* 804AE91C  93 C1 00 08 */	stw r30, 8(r1)
/* 804AE920  7C 7E 1B 78 */	mr r30, r3
/* 804AE924  4B FF F3 B5 */	bl aUKI_parabola_move
/* 804AE928  88 1E 00 9A */	lbz r0, 0x9a(r30)
/* 804AE92C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 804AE930  41 82 00 68 */	beq lbl_804AE998
/* 804AE934  38 00 00 01 */	li r0, 1
/* 804AE938  7F C3 F3 78 */	mr r3, r30
/* 804AE93C  98 1E 02 61 */	stb r0, 0x261(r30)
/* 804AE940  7F E4 FB 78 */	mr r4, r31
/* 804AE944  38 A0 00 03 */	li r5, 3
/* 804AE948  4B FF F4 75 */	bl aUKI_effect_sibuki
/* 804AE94C  3C 80 80 64 */	lis r4, data_80645F24@ha /* 0x80645F24@ha */
/* 804AE950  38 60 00 32 */	li r3, 0x32
/* 804AE954  38 A4 5F 24 */	addi r5, r4, data_80645F24@l /* 0x80645F24@l */
/* 804AE958  38 80 00 01 */	li r4, 1
/* 804AE95C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804AE960  38 A0 00 00 */	li r5, 0
/* 804AE964  38 C0 00 01 */	li r6, 1
/* 804AE968  38 E0 00 0F */	li r7, 0xf
/* 804AE96C  4B F5 56 01 */	bl mVibctl_simple_entry
/* 804AE970  38 00 00 04 */	li r0, 4
/* 804AE974  38 9E 00 28 */	addi r4, r30, 0x28
/* 804AE978  90 1E 02 38 */	stw r0, 0x238(r30)
/* 804AE97C  38 60 01 0B */	li r3, 0x10b
/* 804AE980  48 17 F6 29 */	bl sAdo_OngenTrgStart
/* 804AE984  7F C3 F3 78 */	mr r3, r30
/* 804AE988  7F E4 FB 78 */	mr r4, r31
/* 804AE98C  38 A0 00 04 */	li r5, 4
/* 804AE990  38 C0 00 00 */	li r6, 0
/* 804AE994  48 00 09 E9 */	bl aUKI_set_proc
lbl_804AE998:
/* 804AE998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AE99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AE9A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AE9A4  7C 08 03 A6 */	mtlr r0
/* 804AE9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804AE9AC  4E 80 00 20 */	blr 
