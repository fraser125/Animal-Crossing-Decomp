lbl_803D9A0C:
/* 803D9A0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D9A10  7C 08 02 A6 */	mflr r0
/* 803D9A14  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D9A18  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9A1C  4B CC 14 B1 */	bl func_8009AECC
/* 803D9A20  7C 7B 1B 78 */	mr r27, r3
/* 803D9A24  7C 9C 23 78 */	mr r28, r4
/* 803D9A28  4B FF FE 85 */	bl mPlib_Get_change_data_from_submenu_p
/* 803D9A2C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803D9A30  7C 7E 1B 78 */	mr r30, r3
/* 803D9A34  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803D9A38  80 63 00 00 */	lwz r3, 0(r3)
/* 803D9A3C  3B BE 00 10 */	addi r29, r30, 0x10
/* 803D9A40  4B FF FC 01 */	bl get_player_actor_withoutCheck
/* 803D9A44  38 00 00 53 */	li r0, 0x53
/* 803D9A48  38 80 00 01 */	li r4, 1
/* 803D9A4C  90 1E 00 00 */	stw r0, 0(r30)
/* 803D9A50  38 00 00 00 */	li r0, 0
/* 803D9A54  7C 7F 1B 78 */	mr r31, r3
/* 803D9A58  90 9E 00 04 */	stw r4, 4(r30)
/* 803D9A5C  90 1E 00 08 */	stw r0, 8(r30)
/* 803D9A60  93 9E 00 0C */	stw r28, 0xc(r30)
/* 803D9A64  A8 63 00 DE */	lha r3, 0xde(r3)
/* 803D9A68  4B FE 10 89 */	bl sin_s
/* 803D9A6C  3C 80 80 64 */	lis r4, lit_750@ha /* 0x80642AE8@ha */
/* 803D9A70  3C 60 80 64 */	lis r3, lit_751@ha /* 0x80642AEC@ha */
/* 803D9A74  C0 64 2A E8 */	lfs f3, lit_750@l(r4)  /* 0x80642AE8@l */
/* 803D9A78  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 803D9A7C  EC 23 00 72 */	fmuls f1, f3, f1
/* 803D9A80  C0 43 2A EC */	lfs f2, lit_751@l(r3)  /* 0x80642AEC@l */
/* 803D9A84  EC 00 08 2A */	fadds f0, f0, f1
/* 803D9A88  D0 1D 00 00 */	stfs f0, 0(r29)
/* 803D9A8C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 803D9A90  EC 02 00 2A */	fadds f0, f2, f0
/* 803D9A94  D0 1D 00 04 */	stfs f0, 4(r29)
/* 803D9A98  A8 7F 00 DE */	lha r3, 0xde(r31)
/* 803D9A9C  4B FE 10 01 */	bl cos_s
/* 803D9AA0  3C 60 80 64 */	lis r3, lit_750@ha /* 0x80642AE8@ha */
/* 803D9AA4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 803D9AA8  C0 43 2A E8 */	lfs f2, lit_750@l(r3)  /* 0x80642AE8@l */
/* 803D9AAC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9AB0  EC 22 00 72 */	fmuls f1, f2, f1
/* 803D9AB4  EC 00 08 2A */	fadds f0, f0, f1
/* 803D9AB8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 803D9ABC  93 7D 00 0C */	stw r27, 0xc(r29)
/* 803D9AC0  4B CC 14 59 */	bl func_8009AF18
/* 803D9AC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D9AC8  7C 08 03 A6 */	mtlr r0
/* 803D9ACC  38 21 00 20 */	addi r1, r1, 0x20
/* 803D9AD0  4E 80 00 20 */	blr 
