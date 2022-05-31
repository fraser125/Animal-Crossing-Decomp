lbl_80382ED8:
/* 80382ED8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80382EDC  7C 08 02 A6 */	mflr r0
/* 80382EE0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80382EE4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80382EE8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80382EEC  39 61 00 60 */	addi r11, r1, 0x60
/* 80382EF0  4B D1 7F D9 */	bl func_8009AEC8
/* 80382EF4  7C 7C 1B 78 */	mr r28, r3
/* 80382EF8  83 E3 1C 1C */	lwz r31, 0x1c1c(r3)
/* 80382EFC  3B BC 1C 00 */	addi r29, r28, 0x1c00
/* 80382F00  83 C3 1C 20 */	lwz r30, 0x1c20(r3)
/* 80382F04  28 1F 00 00 */	cmplwi r31, 0
/* 80382F08  40 82 00 0C */	bne lbl_80382F14
/* 80382F0C  28 1E 00 00 */	cmplwi r30, 0
/* 80382F10  41 82 02 F4 */	beq lbl_80383204
lbl_80382F14:
/* 80382F14  38 60 00 47 */	li r3, 0x47
/* 80382F18  38 80 00 0A */	li r4, 0xa
/* 80382F1C  48 01 AE B1 */	bl mEv_get_save_area
/* 80382F20  28 1F 00 00 */	cmplwi r31, 0
/* 80382F24  7C 7B 1B 78 */	mr r27, r3
/* 80382F28  41 82 00 0C */	beq lbl_80382F34
/* 80382F2C  28 1E 00 00 */	cmplwi r30, 0
/* 80382F30  40 82 00 10 */	bne lbl_80382F40
lbl_80382F34:
/* 80382F34  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 80382F38  C3 E3 13 54 */	lfs f31, lit_474@l(r3)  /* 0x80641354@l */
/* 80382F3C  48 00 00 14 */	b lbl_80382F50
lbl_80382F40:
/* 80382F40  38 7F 00 28 */	addi r3, r31, 0x28
/* 80382F44  38 9E 00 28 */	addi r4, r30, 0x28
/* 80382F48  48 03 80 8D */	bl search_position_distance
/* 80382F4C  FF E0 08 90 */	fmr f31, f1
lbl_80382F50:
/* 80382F50  A0 1B 00 02 */	lhz r0, 2(r27)
/* 80382F54  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80382F58  41 82 00 2C */	beq lbl_80382F84
/* 80382F5C  A0 7D 00 2A */	lhz r3, 0x2a(r29)
/* 80382F60  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80382F64  40 82 00 20 */	bne lbl_80382F84
/* 80382F68  54 63 04 3C */	rlwinm r3, r3, 0, 0x10, 0x1e
/* 80382F6C  38 00 00 F0 */	li r0, 0xf0
/* 80382F70  B0 7D 00 2A */	sth r3, 0x2a(r29)
/* 80382F74  A0 7D 00 2A */	lhz r3, 0x2a(r29)
/* 80382F78  60 63 00 02 */	ori r3, r3, 2
/* 80382F7C  B0 7D 00 2A */	sth r3, 0x2a(r29)
/* 80382F80  B0 1D 00 2C */	sth r0, 0x2c(r29)
lbl_80382F84:
/* 80382F84  A0 7D 00 2A */	lhz r3, 0x2a(r29)
/* 80382F88  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80382F8C  41 82 00 7C */	beq lbl_80383008
/* 80382F90  A0 BD 00 2C */	lhz r5, 0x2c(r29)
/* 80382F94  7F 83 E3 78 */	mr r3, r28
/* 80382F98  7F A4 EB 78 */	mr r4, r29
/* 80382F9C  4B FF E0 CD */	bl Camera2_Lock_SetCenterPos
/* 80382FA0  A0 BD 00 2C */	lhz r5, 0x2c(r29)
/* 80382FA4  7F 83 E3 78 */	mr r3, r28
/* 80382FA8  38 9D 00 0C */	addi r4, r29, 0xc
/* 80382FAC  4B FF E1 71 */	bl Camera2_Lock_SetEyePos
/* 80382FB0  7F 83 E3 78 */	mr r3, r28
/* 80382FB4  4B FF A9 B9 */	bl func_8037D96C
/* 80382FB8  A0 7D 00 2C */	lhz r3, 0x2c(r29)
/* 80382FBC  28 03 00 00 */	cmplwi r3, 0
/* 80382FC0  41 82 00 10 */	beq lbl_80382FD0
/* 80382FC4  38 03 FF FF */	addi r0, r3, -1
/* 80382FC8  B0 1D 00 2C */	sth r0, 0x2c(r29)
/* 80382FCC  48 00 02 10 */	b lbl_803831DC
lbl_80382FD0:
/* 80382FD0  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80382FD4  7F 83 E3 78 */	mr r3, r28
/* 80382FD8  38 80 00 00 */	li r4, 0
/* 80382FDC  D0 1C 1B D8 */	stfs f0, 0x1bd8(r28)
/* 80382FE0  80 1D 00 32 */	lwz r0, 0x32(r29)
/* 80382FE4  90 1C 1B C0 */	stw r0, 0x1bc0(r28)
/* 80382FE8  A0 1D 00 36 */	lhz r0, 0x36(r29)
/* 80382FEC  B0 1C 1B C4 */	sth r0, 0x1bc4(r28)
/* 80382FF0  4B FF BA D5 */	bl Camera2_change_priority
/* 80382FF4  7F 83 E3 78 */	mr r3, r28
/* 80382FF8  38 80 00 00 */	li r4, 0
/* 80382FFC  38 A0 00 05 */	li r5, 5
/* 80383000  4B FF D6 D9 */	bl Camera2_request_main_normal
/* 80383004  48 00 01 D8 */	b lbl_803831DC
lbl_80383008:
/* 80383008  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8038300C  41 82 01 38 */	beq lbl_80383144
/* 80383010  A0 9D 00 2C */	lhz r4, 0x2c(r29)
/* 80383014  3C 00 43 30 */	lis r0, 0x4330
/* 80383018  90 01 00 38 */	stw r0, 0x38(r1)
/* 8038301C  3C 60 80 64 */	lis r3, lit_1889@ha /* 0x80641594@ha */
/* 80383020  C8 43 15 94 */	lfd f2, lit_1889@l(r3)  /* 0x80641594@l */
/* 80383024  FC 20 F8 90 */	fmr f1, f31
/* 80383028  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8038302C  3C 80 80 64 */	lis r4, lit_1777@ha /* 0x80641564@ha */
/* 80383030  C0 64 15 64 */	lfs f3, lit_1777@l(r4)  /* 0x80641564@l */
/* 80383034  3B 5C 1B 94 */	addi r26, r28, 0x1b94
/* 80383038  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8038303C  80 DC 1B 94 */	lwz r6, 0x1b94(r28)
/* 80383040  7F 83 E3 78 */	mr r3, r28
/* 80383044  EC 00 10 28 */	fsubs f0, f0, f2
/* 80383048  81 1C 1B 98 */	lwz r8, 0x1b98(r28)
/* 8038304C  80 1C 1B 9C */	lwz r0, 0x1b9c(r28)
/* 80383050  7F E4 FB 78 */	mr r4, r31
/* 80383054  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80383058  7F C5 F3 78 */	mr r5, r30
/* 8038305C  EC 03 00 28 */	fsubs f0, f3, f0
/* 80383060  91 01 00 14 */	stw r8, 0x14(r1)
/* 80383064  3B 7C 1B CC */	addi r27, r28, 0x1bcc
/* 80383068  38 C1 00 28 */	addi r6, r1, 0x28
/* 8038306C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80383070  38 E0 00 00 */	li r7, 0
/* 80383074  EC 40 18 24 */	fdivs f2, f0, f3
/* 80383078  4B FF F9 A1 */	bl Camera2_Staff_Roll_Center
/* 8038307C  A0 BD 00 2C */	lhz r5, 0x2c(r29)
/* 80383080  7F 83 E3 78 */	mr r3, r28
/* 80383084  38 81 00 28 */	addi r4, r1, 0x28
/* 80383088  4B FF DF E1 */	bl Camera2_Lock_SetCenterPos
/* 8038308C  C0 7A 00 00 */	lfs f3, 0(r26)
/* 80383090  FC 20 F8 90 */	fmr f1, f31
/* 80383094  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80383098  7F 83 E3 78 */	mr r3, r28
/* 8038309C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 803830A0  7F E4 FB 78 */	mr r4, r31
/* 803830A4  EC 63 00 28 */	fsubs f3, f3, f0
/* 803830A8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 803830AC  7F C5 F3 78 */	mr r5, r30
/* 803830B0  38 C1 00 08 */	addi r6, r1, 8
/* 803830B4  D0 7B 00 00 */	stfs f3, 0(r27)
/* 803830B8  C0 7A 00 04 */	lfs f3, 4(r26)
/* 803830BC  EC 43 10 28 */	fsubs f2, f3, f2
/* 803830C0  D0 5B 00 04 */	stfs f2, 4(r27)
/* 803830C4  C0 5A 00 08 */	lfs f2, 8(r26)
/* 803830C8  EC 02 00 28 */	fsubs f0, f2, f0
/* 803830CC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 803830D0  4B FF FC 5D */	bl Camera2_Staff_Roll_DistAngle
/* 803830D4  A8 A1 00 08 */	lha r5, 8(r1)
/* 803830D8  38 61 00 1C */	addi r3, r1, 0x1c
/* 803830DC  A8 81 00 0A */	lha r4, 0xa(r1)
/* 803830E0  38 C1 00 28 */	addi r6, r1, 0x28
/* 803830E4  3C A5 00 01 */	addis r5, r5, 1
/* 803830E8  C0 3C 1B D8 */	lfs f1, 0x1bd8(r28)
/* 803830EC  3C 84 00 01 */	addis r4, r4, 1
/* 803830F0  38 A5 80 00 */	addi r5, r5, -32768
/* 803830F4  38 04 80 00 */	addi r0, r4, -32768
/* 803830F8  7C A4 07 34 */	extsh r4, r5
/* 803830FC  7C 05 07 34 */	extsh r5, r0
/* 80383100  4B FF AA 21 */	bl Camera2_PolaPosCalc
/* 80383104  A0 BD 00 2C */	lhz r5, 0x2c(r29)
/* 80383108  7F 83 E3 78 */	mr r3, r28
/* 8038310C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80383110  4B FF E0 0D */	bl Camera2_Lock_SetEyePos
/* 80383114  A0 7D 00 2C */	lhz r3, 0x2c(r29)
/* 80383118  28 03 00 00 */	cmplwi r3, 0
/* 8038311C  41 82 00 10 */	beq lbl_8038312C
/* 80383120  38 03 FF FF */	addi r0, r3, -1
/* 80383124  B0 1D 00 2C */	sth r0, 0x2c(r29)
/* 80383128  48 00 00 10 */	b lbl_80383138
lbl_8038312C:
/* 8038312C  A0 1D 00 2A */	lhz r0, 0x2a(r29)
/* 80383130  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80383134  B0 1D 00 2A */	sth r0, 0x2a(r29)
lbl_80383138:
/* 80383138  7F 83 E3 78 */	mr r3, r28
/* 8038313C  4B FF A8 31 */	bl func_8037D96C
/* 80383140  48 00 00 9C */	b lbl_803831DC
lbl_80383144:
/* 80383144  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 80383148  FC 20 F8 90 */	fmr f1, f31
/* 8038314C  38 83 13 6C */	addi r4, r3, lit_508@l /* 0x8064136C@l */
/* 80383150  7F 83 E3 78 */	mr r3, r28
/* 80383154  C0 44 00 00 */	lfs f2, 0(r4)
/* 80383158  7F E4 FB 78 */	mr r4, r31
/* 8038315C  7F C5 F3 78 */	mr r5, r30
/* 80383160  38 C1 00 28 */	addi r6, r1, 0x28
/* 80383164  38 E0 00 01 */	li r7, 1
/* 80383168  4B FF F8 B1 */	bl Camera2_Staff_Roll_Center
/* 8038316C  FC 20 F8 90 */	fmr f1, f31
/* 80383170  7F 83 E3 78 */	mr r3, r28
/* 80383174  7F E4 FB 78 */	mr r4, r31
/* 80383178  7F C5 F3 78 */	mr r5, r30
/* 8038317C  38 C1 00 08 */	addi r6, r1, 8
/* 80383180  4B FF FB AD */	bl Camera2_Staff_Roll_DistAngle
/* 80383184  7F 83 E3 78 */	mr r3, r28
/* 80383188  38 81 00 08 */	addi r4, r1, 8
/* 8038318C  38 A0 00 00 */	li r5, 0
/* 80383190  4B FF AB 2D */	bl Camera2_MoveDirectionAngleXYZ_morph
/* 80383194  7F 83 E3 78 */	mr r3, r28
/* 80383198  4B FF AA FD */	bl Camera2_SetEyePos_fromCenterPos
/* 8038319C  A8 7D 00 26 */	lha r3, 0x26(r29)
/* 803831A0  38 03 00 01 */	addi r0, r3, 1
/* 803831A4  B0 1D 00 26 */	sth r0, 0x26(r29)
/* 803831A8  A8 1D 00 26 */	lha r0, 0x26(r29)
/* 803831AC  2C 00 11 F8 */	cmpwi r0, 0x11f8
/* 803831B0  40 81 00 0C */	ble lbl_803831BC
/* 803831B4  38 00 00 00 */	li r0, 0
/* 803831B8  B0 1D 00 26 */	sth r0, 0x26(r29)
lbl_803831BC:
/* 803831BC  A8 7D 00 28 */	lha r3, 0x28(r29)
/* 803831C0  38 03 00 01 */	addi r0, r3, 1
/* 803831C4  B0 1D 00 28 */	sth r0, 0x28(r29)
/* 803831C8  A8 1D 00 28 */	lha r0, 0x28(r29)
/* 803831CC  2C 00 0F A0 */	cmpwi r0, 0xfa0
/* 803831D0  40 81 00 0C */	ble lbl_803831DC
/* 803831D4  38 00 00 00 */	li r0, 0
/* 803831D8  B0 1D 00 28 */	sth r0, 0x28(r29)
lbl_803831DC:
/* 803831DC  A8 7D 00 24 */	lha r3, 0x24(r29)
/* 803831E0  38 03 00 01 */	addi r0, r3, 1
/* 803831E4  B0 1D 00 24 */	sth r0, 0x24(r29)
/* 803831E8  A8 1D 00 24 */	lha r0, 0x24(r29)
/* 803831EC  2C 00 0A 28 */	cmpwi r0, 0xa28
/* 803831F0  40 81 00 0C */	ble lbl_803831FC
/* 803831F4  38 00 00 00 */	li r0, 0
/* 803831F8  B0 1D 00 24 */	sth r0, 0x24(r29)
lbl_803831FC:
/* 803831FC  7F 83 E3 78 */	mr r3, r28
/* 80383200  4B FF AD 3D */	bl Camera2_SetView
lbl_80383204:
/* 80383204  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80383208  39 61 00 60 */	addi r11, r1, 0x60
/* 8038320C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80383210  4B D1 7D 05 */	bl func_8009AF14
/* 80383214  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80383218  7C 08 03 A6 */	mtlr r0
/* 8038321C  38 21 00 70 */	addi r1, r1, 0x70
/* 80383220  4E 80 00 20 */	blr 
