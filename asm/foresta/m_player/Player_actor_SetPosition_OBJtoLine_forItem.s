lbl_804D6CB4:
/* 804D6CB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804D6CB8  7C 08 02 A6 */	mflr r0
/* 804D6CBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804D6CC0  39 61 00 50 */	addi r11, r1, 0x50
/* 804D6CC4  4B BC 42 05 */	bl func_8009AEC8
/* 804D6CC8  7C 7B 1B 78 */	mr r27, r3
/* 804D6CCC  7C 9C 23 78 */	mr r28, r4
/* 804D6CD0  A8 C3 00 DE */	lha r6, 0xde(r3)
/* 804D6CD4  3B FB 0F 54 */	addi r31, r27, 0xf54
/* 804D6CD8  3B DB 0F AC */	addi r30, r27, 0xfac
/* 804D6CDC  38 81 00 2C */	addi r4, r1, 0x2c
/* 804D6CE0  38 A6 FA 4B */	addi r5, r6, -1461
/* 804D6CE4  38 06 05 B5 */	addi r0, r6, 0x5b5
/* 804D6CE8  7C BA 07 34 */	extsh r26, r5
/* 804D6CEC  7C 1D 07 34 */	extsh r29, r0
/* 804D6CF0  4B FF FD 1D */	bl Player_actor_Get_player_move_position
/* 804D6CF4  3C 60 80 64 */	lis r3, lit_1373@ha /* 0x80646A28@ha */
/* 804D6CF8  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 804D6CFC  38 A3 6A 28 */	addi r5, r3, lit_1373@l /* 0x80646A28@l */
/* 804D6D00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D6D04  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 804D6D08  7F 43 D3 78 */	mr r3, r26
/* 804D6D0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 804D6D10  90 81 00 20 */	stw r4, 0x20(r1)
/* 804D6D14  EC 01 00 2A */	fadds f0, f1, f0
/* 804D6D18  90 01 00 28 */	stw r0, 0x28(r1)
/* 804D6D1C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804D6D20  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804D6D24  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D6D28  4B EE 3D C9 */	bl sin_s
/* 804D6D2C  3C 60 80 64 */	lis r3, lit_1374@ha /* 0x80646A2C@ha */
/* 804D6D30  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804D6D34  38 83 6A 2C */	addi r4, r3, lit_1374@l /* 0x80646A2C@l */
/* 804D6D38  7F 43 D3 78 */	mr r3, r26
/* 804D6D3C  C0 44 00 00 */	lfs f2, 0(r4)
/* 804D6D40  EC 22 00 72 */	fmuls f1, f2, f1
/* 804D6D44  EC 00 08 2A */	fadds f0, f0, f1
/* 804D6D48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804D6D4C  4B EE 3D 51 */	bl cos_s
/* 804D6D50  3C 60 80 64 */	lis r3, lit_1374@ha /* 0x80646A2C@ha */
/* 804D6D54  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804D6D58  C0 03 6A 2C */	lfs f0, lit_1374@l(r3)  /* 0x80646A2C@l */
/* 804D6D5C  7F A3 EB 78 */	mr r3, r29
/* 804D6D60  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804D6D64  EC 20 00 72 */	fmuls f1, f0, f1
/* 804D6D68  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804D6D6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D6D70  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804D6D74  EC 00 08 2A */	fadds f0, f0, f1
/* 804D6D78  90 81 00 18 */	stw r4, 0x18(r1)
/* 804D6D7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804D6D80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804D6D84  4B EE 3D 6D */	bl sin_s
/* 804D6D88  3C 60 80 64 */	lis r3, lit_1374@ha /* 0x80646A2C@ha */
/* 804D6D8C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804D6D90  38 83 6A 2C */	addi r4, r3, lit_1374@l /* 0x80646A2C@l */
/* 804D6D94  7F A3 EB 78 */	mr r3, r29
/* 804D6D98  C0 44 00 00 */	lfs f2, 0(r4)
/* 804D6D9C  EC 22 00 72 */	fmuls f1, f2, f1
/* 804D6DA0  EC 00 08 2A */	fadds f0, f0, f1
/* 804D6DA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D6DA8  4B EE 3C F5 */	bl cos_s
/* 804D6DAC  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 804D6DB0  3C 60 80 64 */	lis r3, lit_1374@ha /* 0x80646A2C@ha */
/* 804D6DB4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804D6DB8  38 A3 6A 2C */	addi r5, r3, lit_1374@l /* 0x80646A2C@l */
/* 804D6DBC  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804D6DC0  7F 83 E3 78 */	mr r3, r28
/* 804D6DC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 804D6DC8  90 06 00 04 */	stw r0, 4(r6)
/* 804D6DCC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 804D6DD0  EC 20 00 72 */	fmuls f1, f0, f1
/* 804D6DD4  90 86 00 08 */	stw r4, 8(r6)
/* 804D6DD8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804D6DDC  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 804D6DE0  EC 00 08 2A */	fadds f0, f0, f1
/* 804D6DE4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804D6DE8  90 A6 00 0C */	stw r5, 0xc(r6)
/* 804D6DEC  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 804D6DF0  90 06 00 10 */	stw r0, 0x10(r6)
/* 804D6DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6DF8  90 86 00 14 */	stw r4, 0x14(r6)
/* 804D6DFC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 804D6E00  90 A6 00 18 */	stw r5, 0x18(r6)
/* 804D6E04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D6E08  90 06 00 1C */	stw r0, 0x1c(r6)
/* 804D6E0C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804D6E10  90 86 00 20 */	stw r4, 0x20(r6)
/* 804D6E14  90 06 00 24 */	stw r0, 0x24(r6)
/* 804D6E18  4B F0 28 59 */	bl mPlib_get_player_actor_main_index
/* 804D6E1C  2C 03 00 2C */	cmpwi r3, 0x2c
/* 804D6E20  40 82 00 78 */	bne lbl_804D6E98
/* 804D6E24  81 1B 11 3C */	lwz r8, 0x113c(r27)
/* 804D6E28  3C 60 80 64 */	lis r3, lit_1375@ha /* 0x80646A30@ha */
/* 804D6E2C  80 FB 11 40 */	lwz r7, 0x1140(r27)
/* 804D6E30  38 A3 6A 30 */	addi r5, r3, lit_1375@l /* 0x80646A30@l */
/* 804D6E34  80 DB 11 44 */	lwz r6, 0x1144(r27)
/* 804D6E38  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 804D6E3C  80 7B 11 30 */	lwz r3, 0x1130(r27)
/* 804D6E40  80 1B 11 34 */	lwz r0, 0x1134(r27)
/* 804D6E44  90 E1 00 0C */	stw r7, 0xc(r1)
/* 804D6E48  C0 05 00 00 */	lfs f0, 0(r5)
/* 804D6E4C  90 64 00 04 */	stw r3, 4(r4)
/* 804D6E50  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804D6E54  90 04 00 08 */	stw r0, 8(r4)
/* 804D6E58  EC 01 00 2A */	fadds f0, f1, f0
/* 804D6E5C  80 1B 11 38 */	lwz r0, 0x1138(r27)
/* 804D6E60  91 01 00 08 */	stw r8, 8(r1)
/* 804D6E64  90 04 00 0C */	stw r0, 0xc(r4)
/* 804D6E68  80 1B 11 3C */	lwz r0, 0x113c(r27)
/* 804D6E6C  80 7B 11 40 */	lwz r3, 0x1140(r27)
/* 804D6E70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804D6E74  90 04 00 10 */	stw r0, 0x10(r4)
/* 804D6E78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D6E7C  90 64 00 14 */	stw r3, 0x14(r4)
/* 804D6E80  80 7B 11 44 */	lwz r3, 0x1144(r27)
/* 804D6E84  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804D6E88  90 64 00 18 */	stw r3, 0x18(r4)
/* 804D6E8C  91 04 00 1C */	stw r8, 0x1c(r4)
/* 804D6E90  90 04 00 20 */	stw r0, 0x20(r4)
/* 804D6E94  90 C4 00 24 */	stw r6, 0x24(r4)
lbl_804D6E98:
/* 804D6E98  3B 5C 23 28 */	addi r26, r28, 0x2328
/* 804D6E9C  7F 83 E3 78 */	mr r3, r28
/* 804D6EA0  7F 44 D3 78 */	mr r4, r26
/* 804D6EA4  7F E5 FB 78 */	mr r5, r31
/* 804D6EA8  4B EB E9 D5 */	bl CollisionCheck_setOCC
/* 804D6EAC  7F 83 E3 78 */	mr r3, r28
/* 804D6EB0  7F 44 D3 78 */	mr r4, r26
/* 804D6EB4  7F C5 F3 78 */	mr r5, r30
/* 804D6EB8  4B EB E9 C5 */	bl CollisionCheck_setOCC
/* 804D6EBC  39 61 00 50 */	addi r11, r1, 0x50
/* 804D6EC0  4B BC 40 55 */	bl func_8009AF14
/* 804D6EC4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804D6EC8  7C 08 03 A6 */	mtlr r0
/* 804D6ECC  38 21 00 50 */	addi r1, r1, 0x50
/* 804D6ED0  4E 80 00 20 */	blr 
