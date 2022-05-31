lbl_804D5DAC:
/* 804D5DAC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804D5DB0  7C 08 02 A6 */	mflr r0
/* 804D5DB4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804D5DB8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 804D5DBC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 804D5DC0  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 804D5DC4  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 804D5DC8  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 804D5DCC  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 804D5DD0  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 804D5DD4  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 804D5DD8  39 61 00 70 */	addi r11, r1, 0x70
/* 804D5DDC  4B BC 50 F1 */	bl func_8009AECC
/* 804D5DE0  FF 80 08 90 */	fmr f28, f1
/* 804D5DE4  7C 7B 1B 78 */	mr r27, r3
/* 804D5DE8  7C 9C 23 78 */	mr r28, r4
/* 804D5DEC  7C BD 2B 78 */	mr r29, r5
/* 804D5DF0  7C DE 33 78 */	mr r30, r6
/* 804D5DF4  7C FF 3B 78 */	mr r31, r7
/* 804D5DF8  4B FF EC 09 */	bl Player_actor_GetController_move_percentX
/* 804D5DFC  FF C0 08 90 */	fmr f30, f1
/* 804D5E00  4B FF EC 45 */	bl Player_actor_GetController_move_percentY
/* 804D5E04  80 DC 00 00 */	lwz r6, 0(r28)
/* 804D5E08  FF E0 08 90 */	fmr f31, f1
/* 804D5E0C  80 BC 00 04 */	lwz r5, 4(r28)
/* 804D5E10  38 61 00 44 */	addi r3, r1, 0x44
/* 804D5E14  80 1C 00 08 */	lwz r0, 8(r28)
/* 804D5E18  38 81 00 38 */	addi r4, r1, 0x38
/* 804D5E1C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 804D5E20  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 804D5E24  90 01 00 40 */	stw r0, 0x40(r1)
/* 804D5E28  4B EC FB 25 */	bl mFI_WpostoLposInBK
/* 804D5E2C  FC 1E E0 40 */	fcmpo cr0, f30, f28
/* 804D5E30  40 81 00 B4 */	ble lbl_804D5EE4
/* 804D5E34  20 1E 40 00 */	subfic r0, r30, 0x4000
/* 804D5E38  7F A3 07 34 */	extsh r3, r29
/* 804D5E3C  7C 00 18 00 */	cmpw r0, r3
/* 804D5E40  40 80 00 A4 */	bge lbl_804D5EE4
/* 804D5E44  38 1E 40 00 */	addi r0, r30, 0x4000
/* 804D5E48  7C 03 00 00 */	cmpw r3, r0
/* 804D5E4C  40 80 00 98 */	bge lbl_804D5EE4
/* 804D5E50  80 DC 00 00 */	lwz r6, 0(r28)
/* 804D5E54  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D5E58  80 BC 00 04 */	lwz r5, 4(r28)
/* 804D5E5C  38 80 00 01 */	li r4, 1
/* 804D5E60  80 1C 00 08 */	lwz r0, 8(r28)
/* 804D5E64  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804D5E68  90 A1 00 30 */	stw r5, 0x30(r1)
/* 804D5E6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D5E70  4B EC FC 29 */	bl mFI_ScrollCheck
/* 804D5E74  2C 03 00 00 */	cmpwi r3, 0
/* 804D5E78  41 82 00 6C */	beq lbl_804D5EE4
/* 804D5E7C  3C 60 80 64 */	lis r3, lit_1164@ha /* 0x80646A20@ha */
/* 804D5E80  C3 A3 6A 20 */	lfs f29, lit_1164@l(r3)  /* 0x80646A20@l */
/* 804D5E84  4B EB C2 2D */	bl mCoBG_GetBlockBgCheckMode
/* 804D5E88  2C 03 00 01 */	cmpwi r3, 1
/* 804D5E8C  40 82 00 10 */	bne lbl_804D5E9C
/* 804D5E90  3C 60 80 64 */	lis r3, lit_1165@ha /* 0x80646A24@ha */
/* 804D5E94  C0 03 6A 24 */	lfs f0, lit_1165@l(r3)  /* 0x80646A24@l */
/* 804D5E98  EF BD 00 28 */	fsubs f29, f29, f0
lbl_804D5E9C:
/* 804D5E9C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804D5EA0  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 804D5EA4  4C 41 13 82 */	cror 2, 1, 2
/* 804D5EA8  40 82 02 7C */	bne lbl_804D6124
/* 804D5EAC  4B F0 40 95 */	bl mPlib_Get_unable_wade
/* 804D5EB0  2C 03 00 00 */	cmpwi r3, 0
/* 804D5EB4  40 82 00 28 */	bne lbl_804D5EDC
/* 804D5EB8  7F 63 DB 78 */	mr r3, r27
/* 804D5EBC  7F 84 E3 78 */	mr r4, r28
/* 804D5EC0  7F E6 FB 78 */	mr r6, r31
/* 804D5EC4  38 A0 00 01 */	li r5, 1
/* 804D5EC8  4B FF FC FD */	bl Player_actor_CheckAbleMoveWadeBG
/* 804D5ECC  2C 03 00 00 */	cmpwi r3, 0
/* 804D5ED0  41 82 02 54 */	beq lbl_804D6124
/* 804D5ED4  38 60 00 01 */	li r3, 1
/* 804D5ED8  48 00 02 50 */	b lbl_804D6128
lbl_804D5EDC:
/* 804D5EDC  38 60 00 01 */	li r3, 1
/* 804D5EE0  48 00 02 48 */	b lbl_804D6128
lbl_804D5EE4:
/* 804D5EE4  FF A0 E0 50 */	fneg f29, f28
/* 804D5EE8  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 804D5EEC  40 80 00 B4 */	bge lbl_804D5FA0
/* 804D5EF0  20 1E C0 00 */	subfic r0, r30, -16384
/* 804D5EF4  7F A3 07 34 */	extsh r3, r29
/* 804D5EF8  7C 00 18 00 */	cmpw r0, r3
/* 804D5EFC  40 80 00 A4 */	bge lbl_804D5FA0
/* 804D5F00  38 1E C0 00 */	addi r0, r30, -16384
/* 804D5F04  7C 03 00 00 */	cmpw r3, r0
/* 804D5F08  40 80 00 98 */	bge lbl_804D5FA0
/* 804D5F0C  80 DC 00 00 */	lwz r6, 0(r28)
/* 804D5F10  38 61 00 20 */	addi r3, r1, 0x20
/* 804D5F14  80 BC 00 04 */	lwz r5, 4(r28)
/* 804D5F18  38 80 00 02 */	li r4, 2
/* 804D5F1C  80 1C 00 08 */	lwz r0, 8(r28)
/* 804D5F20  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804D5F24  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804D5F28  90 01 00 28 */	stw r0, 0x28(r1)
/* 804D5F2C  4B EC FB 6D */	bl mFI_ScrollCheck
/* 804D5F30  2C 03 00 00 */	cmpwi r3, 0
/* 804D5F34  41 82 00 6C */	beq lbl_804D5FA0
/* 804D5F38  3C 60 80 64 */	lis r3, lit_1075@ha /* 0x80646A14@ha */
/* 804D5F3C  C3 A3 6A 14 */	lfs f29, lit_1075@l(r3)  /* 0x80646A14@l */
/* 804D5F40  4B EB C1 71 */	bl mCoBG_GetBlockBgCheckMode
/* 804D5F44  2C 03 00 01 */	cmpwi r3, 1
/* 804D5F48  40 82 00 10 */	bne lbl_804D5F58
/* 804D5F4C  3C 60 80 64 */	lis r3, lit_1165@ha /* 0x80646A24@ha */
/* 804D5F50  C0 03 6A 24 */	lfs f0, lit_1165@l(r3)  /* 0x80646A24@l */
/* 804D5F54  EF BD 00 2A */	fadds f29, f29, f0
lbl_804D5F58:
/* 804D5F58  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804D5F5C  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 804D5F60  4C 40 13 82 */	cror 2, 0, 2
/* 804D5F64  40 82 01 C0 */	bne lbl_804D6124
/* 804D5F68  4B F0 3F D9 */	bl mPlib_Get_unable_wade
/* 804D5F6C  2C 03 00 00 */	cmpwi r3, 0
/* 804D5F70  40 82 00 28 */	bne lbl_804D5F98
/* 804D5F74  7F 63 DB 78 */	mr r3, r27
/* 804D5F78  7F 84 E3 78 */	mr r4, r28
/* 804D5F7C  7F E6 FB 78 */	mr r6, r31
/* 804D5F80  38 A0 00 02 */	li r5, 2
/* 804D5F84  4B FF FC 41 */	bl Player_actor_CheckAbleMoveWadeBG
/* 804D5F88  2C 03 00 00 */	cmpwi r3, 0
/* 804D5F8C  41 82 01 98 */	beq lbl_804D6124
/* 804D5F90  38 60 00 02 */	li r3, 2
/* 804D5F94  48 00 01 94 */	b lbl_804D6128
lbl_804D5F98:
/* 804D5F98  38 60 00 02 */	li r3, 2
/* 804D5F9C  48 00 01 8C */	b lbl_804D6128
lbl_804D5FA0:
/* 804D5FA0  FC 1F E0 40 */	fcmpo cr0, f31, f28
/* 804D5FA4  40 81 00 BC */	ble lbl_804D6060
/* 804D5FA8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D5FAC  7F A4 07 34 */	extsh r4, r29
/* 804D5FB0  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 804D5FB4  7C 1E 00 50 */	subf r0, r30, r0
/* 804D5FB8  7C 00 20 00 */	cmpw r0, r4
/* 804D5FBC  41 80 00 10 */	blt lbl_804D5FCC
/* 804D5FC0  38 1E 80 00 */	addi r0, r30, -32768
/* 804D5FC4  7C 04 00 00 */	cmpw r4, r0
/* 804D5FC8  40 80 00 98 */	bge lbl_804D6060
lbl_804D5FCC:
/* 804D5FCC  80 DC 00 00 */	lwz r6, 0(r28)
/* 804D5FD0  38 61 00 14 */	addi r3, r1, 0x14
/* 804D5FD4  80 BC 00 04 */	lwz r5, 4(r28)
/* 804D5FD8  38 80 00 03 */	li r4, 3
/* 804D5FDC  80 1C 00 08 */	lwz r0, 8(r28)
/* 804D5FE0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804D5FE4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804D5FE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804D5FEC  4B EC FA AD */	bl mFI_ScrollCheck
/* 804D5FF0  2C 03 00 00 */	cmpwi r3, 0
/* 804D5FF4  41 82 00 6C */	beq lbl_804D6060
/* 804D5FF8  3C 60 80 64 */	lis r3, lit_1075@ha /* 0x80646A14@ha */
/* 804D5FFC  C3 A3 6A 14 */	lfs f29, lit_1075@l(r3)  /* 0x80646A14@l */
/* 804D6000  4B EB C0 B1 */	bl mCoBG_GetBlockBgCheckMode
/* 804D6004  2C 03 00 01 */	cmpwi r3, 1
/* 804D6008  40 82 00 10 */	bne lbl_804D6018
/* 804D600C  3C 60 80 64 */	lis r3, lit_1165@ha /* 0x80646A24@ha */
/* 804D6010  C0 03 6A 24 */	lfs f0, lit_1165@l(r3)  /* 0x80646A24@l */
/* 804D6014  EF BD 00 2A */	fadds f29, f29, f0
lbl_804D6018:
/* 804D6018  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D601C  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 804D6020  4C 40 13 82 */	cror 2, 0, 2
/* 804D6024  40 82 01 00 */	bne lbl_804D6124
/* 804D6028  4B F0 3F 19 */	bl mPlib_Get_unable_wade
/* 804D602C  2C 03 00 00 */	cmpwi r3, 0
/* 804D6030  40 82 00 28 */	bne lbl_804D6058
/* 804D6034  7F 63 DB 78 */	mr r3, r27
/* 804D6038  7F 84 E3 78 */	mr r4, r28
/* 804D603C  7F E6 FB 78 */	mr r6, r31
/* 804D6040  38 A0 00 03 */	li r5, 3
/* 804D6044  4B FF FB 81 */	bl Player_actor_CheckAbleMoveWadeBG
/* 804D6048  2C 03 00 00 */	cmpwi r3, 0
/* 804D604C  41 82 00 D8 */	beq lbl_804D6124
/* 804D6050  38 60 00 03 */	li r3, 3
/* 804D6054  48 00 00 D4 */	b lbl_804D6128
lbl_804D6058:
/* 804D6058  38 60 00 03 */	li r3, 3
/* 804D605C  48 00 00 CC */	b lbl_804D6128
lbl_804D6060:
/* 804D6060  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 804D6064  40 80 00 C0 */	bge lbl_804D6124
/* 804D6068  7C 1E 00 D0 */	neg r0, r30
/* 804D606C  7F A3 07 34 */	extsh r3, r29
/* 804D6070  7C 00 18 00 */	cmpw r0, r3
/* 804D6074  40 80 00 0C */	bge lbl_804D6080
/* 804D6078  2C 03 00 00 */	cmpwi r3, 0
/* 804D607C  40 81 00 14 */	ble lbl_804D6090
lbl_804D6080:
/* 804D6080  2C 03 00 00 */	cmpwi r3, 0
/* 804D6084  41 80 00 A0 */	blt lbl_804D6124
/* 804D6088  7C 03 F0 00 */	cmpw r3, r30
/* 804D608C  40 80 00 98 */	bge lbl_804D6124
lbl_804D6090:
/* 804D6090  80 DC 00 00 */	lwz r6, 0(r28)
/* 804D6094  38 61 00 08 */	addi r3, r1, 8
/* 804D6098  80 BC 00 04 */	lwz r5, 4(r28)
/* 804D609C  38 80 00 04 */	li r4, 4
/* 804D60A0  80 1C 00 08 */	lwz r0, 8(r28)
/* 804D60A4  90 C1 00 08 */	stw r6, 8(r1)
/* 804D60A8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804D60AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D60B0  4B EC F9 E9 */	bl mFI_ScrollCheck
/* 804D60B4  2C 03 00 00 */	cmpwi r3, 0
/* 804D60B8  41 82 00 6C */	beq lbl_804D6124
/* 804D60BC  3C 60 80 64 */	lis r3, lit_1164@ha /* 0x80646A20@ha */
/* 804D60C0  C3 A3 6A 20 */	lfs f29, lit_1164@l(r3)  /* 0x80646A20@l */
/* 804D60C4  4B EB BF ED */	bl mCoBG_GetBlockBgCheckMode
/* 804D60C8  2C 03 00 01 */	cmpwi r3, 1
/* 804D60CC  40 82 00 10 */	bne lbl_804D60DC
/* 804D60D0  3C 60 80 64 */	lis r3, lit_1165@ha /* 0x80646A24@ha */
/* 804D60D4  C0 03 6A 24 */	lfs f0, lit_1165@l(r3)  /* 0x80646A24@l */
/* 804D60D8  EF BD 00 28 */	fsubs f29, f29, f0
lbl_804D60DC:
/* 804D60DC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D60E0  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 804D60E4  4C 41 13 82 */	cror 2, 1, 2
/* 804D60E8  40 82 00 3C */	bne lbl_804D6124
/* 804D60EC  4B F0 3E 55 */	bl mPlib_Get_unable_wade
/* 804D60F0  2C 03 00 00 */	cmpwi r3, 0
/* 804D60F4  40 82 00 28 */	bne lbl_804D611C
/* 804D60F8  7F 63 DB 78 */	mr r3, r27
/* 804D60FC  7F 84 E3 78 */	mr r4, r28
/* 804D6100  7F E6 FB 78 */	mr r6, r31
/* 804D6104  38 A0 00 04 */	li r5, 4
/* 804D6108  4B FF FA BD */	bl Player_actor_CheckAbleMoveWadeBG
/* 804D610C  2C 03 00 00 */	cmpwi r3, 0
/* 804D6110  41 82 00 14 */	beq lbl_804D6124
/* 804D6114  38 60 00 04 */	li r3, 4
/* 804D6118  48 00 00 10 */	b lbl_804D6128
lbl_804D611C:
/* 804D611C  38 60 00 04 */	li r3, 4
/* 804D6120  48 00 00 08 */	b lbl_804D6128
lbl_804D6124:
/* 804D6124  38 60 00 00 */	li r3, 0
lbl_804D6128:
/* 804D6128  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 804D612C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 804D6130  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 804D6134  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 804D6138  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 804D613C  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 804D6140  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 804D6144  39 61 00 70 */	addi r11, r1, 0x70
/* 804D6148  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 804D614C  4B BC 4D CD */	bl func_8009AF18
/* 804D6150  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804D6154  7C 08 03 A6 */	mtlr r0
/* 804D6158  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804D615C  4E 80 00 20 */	blr 
