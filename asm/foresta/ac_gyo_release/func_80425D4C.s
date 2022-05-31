lbl_80425D4C:
/* 80425D4C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80425D50  7C 08 02 A6 */	mflr r0
/* 80425D54  90 01 00 64 */	stw r0, 0x64(r1)
/* 80425D58  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80425D5C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80425D60  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80425D64  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80425D68  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80425D6C  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80425D70  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 80425D74  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 80425D78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80425D7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80425D80  7C 7E 1B 78 */	mr r30, r3
/* 80425D84  7C 9F 23 78 */	mr r31, r4
/* 80425D88  A8 C3 00 24 */	lha r6, 0x24(r3)
/* 80425D8C  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 80425D90  38 80 00 6B */	li r4, 0x6b
/* 80425D94  38 A0 00 07 */	li r5, 7
/* 80425D98  38 06 DD 00 */	addi r0, r6, -8960
/* 80425D9C  90 1E 01 78 */	stw r0, 0x178(r30)
/* 80425DA0  4B F4 FF 41 */	bl Actor_info_name_search
/* 80425DA4  90 7E 01 74 */	stw r3, 0x174(r30)
/* 80425DA8  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80425DAC  48 00 03 15 */	bl aGYR_empty_area
/* 80425DB0  90 7E 01 84 */	stw r3, 0x184(r30)
/* 80425DB4  3C 80 80 64 */	lis r4, data_80643F44@ha /* 0x80643F44@ha */
/* 80425DB8  38 A4 3F 44 */	addi r5, r4, data_80643F44@l /* 0x80643F44@l */
/* 80425DBC  3C 60 80 68 */	lis r3, lit_460@ha /* 0x8068305C@ha */
/* 80425DC0  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 80425DC4  38 83 30 5C */	addi r4, r3, lit_460@l /* 0x8068305C@l */
/* 80425DC8  3C C0 80 68 */	lis r6, gyoei_type@ha /* 0x80682C1C@ha */
/* 80425DCC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80425DD0  54 03 10 3A */	slwi r3, r0, 2
/* 80425DD4  81 1E 01 78 */	lwz r8, 0x178(r30)
/* 80425DD8  80 FE 01 74 */	lwz r7, 0x174(r30)
/* 80425DDC  38 63 06 18 */	addi r3, r3, 0x618
/* 80425DE0  38 00 00 01 */	li r0, 1
/* 80425DE4  38 C6 2C 1C */	addi r6, r6, gyoei_type@l /* 0x80682C1C@l */
/* 80425DE8  7D 07 19 2E */	stwx r8, r7, r3
/* 80425DEC  38 61 00 0C */	addi r3, r1, 0xc
/* 80425DF0  38 A0 00 D5 */	li r5, 0xd5
/* 80425DF4  98 1E 00 B5 */	stb r0, 0xb5(r30)
/* 80425DF8  98 1E 01 08 */	stb r0, 0x108(r30)
/* 80425DFC  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 80425E00  54 00 18 38 */	slwi r0, r0, 3
/* 80425E04  7C 06 02 AE */	lhax r0, r6, r0
/* 80425E08  B0 1E 01 7C */	sth r0, 0x17c(r30)
/* 80425E0C  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 80425E10  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80425E14  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80425E18  C0 7F 1F 54 */	lfs f3, 0x1f54(r31)
/* 80425E1C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80425E20  C0 3F 1F 5C */	lfs f1, 0x1f5c(r31)
/* 80425E24  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80425E28  EF E3 10 28 */	fsubs f31, f3, f2
/* 80425E2C  80 DF 1F 54 */	lwz r6, 0x1f54(r31)
/* 80425E30  80 1F 1F 58 */	lwz r0, 0x1f58(r31)
/* 80425E34  EF C1 00 28 */	fsubs f30, f1, f0
/* 80425E38  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80425E3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80425E40  80 1F 1F 5C */	lwz r0, 0x1f5c(r31)
/* 80425E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80425E48  4B F6 E1 71 */	bl mCoBG_GetWaterHeight_File
/* 80425E4C  EC 7F 07 F2 */	fmuls f3, f31, f31
/* 80425E50  3C 60 80 64 */	lis r3, lit_461@ha /* 0x80643F48@ha */
/* 80425E54  EC 5E 07 B2 */	fmuls f2, f30, f30
/* 80425E58  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 80425E5C  C0 03 3F 48 */	lfs f0, lit_461@l(r3)  /* 0x80643F48@l */
/* 80425E60  EC C1 20 28 */	fsubs f6, f1, f4
/* 80425E64  EC A3 10 2A */	fadds f5, f3, f2
/* 80425E68  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80425E6C  40 81 00 68 */	ble lbl_80425ED4
/* 80425E70  FC 20 28 34 */	frsqrte f1, f5
/* 80425E74  3C 60 80 64 */	lis r3, lit_462@ha /* 0x80643F4C@ha */
/* 80425E78  38 83 3F 4C */	addi r4, r3, lit_462@l /* 0x80643F4C@l */
/* 80425E7C  3C 60 80 64 */	lis r3, lit_463@ha /* 0x80643F54@ha */
/* 80425E80  C8 64 00 00 */	lfd f3, 0(r4)
/* 80425E84  FC 01 00 72 */	fmul f0, f1, f1
/* 80425E88  C8 43 3F 54 */	lfd f2, lit_463@l(r3)  /* 0x80643F54@l */
/* 80425E8C  FC 23 00 72 */	fmul f1, f3, f1
/* 80425E90  FC 05 00 32 */	fmul f0, f5, f0
/* 80425E94  FC 02 00 28 */	fsub f0, f2, f0
/* 80425E98  FC 21 00 32 */	fmul f1, f1, f0
/* 80425E9C  FC 01 00 72 */	fmul f0, f1, f1
/* 80425EA0  FC 23 00 72 */	fmul f1, f3, f1
/* 80425EA4  FC 05 00 32 */	fmul f0, f5, f0
/* 80425EA8  FC 02 00 28 */	fsub f0, f2, f0
/* 80425EAC  FC 21 00 32 */	fmul f1, f1, f0
/* 80425EB0  FC 01 00 72 */	fmul f0, f1, f1
/* 80425EB4  FC 23 00 72 */	fmul f1, f3, f1
/* 80425EB8  FC 05 00 32 */	fmul f0, f5, f0
/* 80425EBC  FC 02 00 28 */	fsub f0, f2, f0
/* 80425EC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80425EC4  FC 05 00 32 */	fmul f0, f5, f0
/* 80425EC8  FC 00 00 18 */	frsp f0, f0
/* 80425ECC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80425ED0  C0 A1 00 08 */	lfs f5, 8(r1)
lbl_80425ED4:
/* 80425ED4  3C 60 80 64 */	lis r3, lit_464@ha /* 0x80643F5C@ha */
/* 80425ED8  C0 03 3F 5C */	lfs f0, lit_464@l(r3)  /* 0x80643F5C@l */
/* 80425EDC  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80425EE0  40 81 00 48 */	ble lbl_80425F28
/* 80425EE4  3C 80 80 64 */	lis r4, lit_465@ha /* 0x80643F60@ha */
/* 80425EE8  3C 60 80 64 */	lis r3, lit_467@ha /* 0x80643F68@ha */
/* 80425EEC  38 A4 3F 60 */	addi r5, r4, lit_465@l /* 0x80643F60@l */
/* 80425EF0  C0 23 3F 68 */	lfs f1, lit_467@l(r3)  /* 0x80643F68@l */
/* 80425EF4  C0 85 00 00 */	lfs f4, 0(r5)
/* 80425EF8  3C 80 80 64 */	lis r4, lit_466@ha /* 0x80643F64@ha */
/* 80425EFC  EC 26 08 28 */	fsubs f1, f6, f1
/* 80425F00  3C 60 80 64 */	lis r3, lit_461@ha /* 0x80643F48@ha */
/* 80425F04  EC 65 20 24 */	fdivs f3, f5, f4
/* 80425F08  C0 44 3F 64 */	lfs f2, lit_466@l(r4)  /* 0x80643F64@l */
/* 80425F0C  C0 03 3F 48 */	lfs f0, lit_461@l(r3)  /* 0x80643F48@l */
/* 80425F10  EF 81 20 24 */	fdivs f28, f1, f4
/* 80425F14  EF A3 10 24 */	fdivs f29, f3, f2
/* 80425F18  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 80425F1C  40 80 00 3C */	bge lbl_80425F58
/* 80425F20  FF 80 00 90 */	fmr f28, f0
/* 80425F24  48 00 00 34 */	b lbl_80425F58
lbl_80425F28:
/* 80425F28  3C 60 80 64 */	lis r3, lit_461@ha /* 0x80643F48@ha */
/* 80425F2C  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80643F6C@ha */
/* 80425F30  C0 03 3F 48 */	lfs f0, lit_461@l(r3)  /* 0x80643F48@l */
/* 80425F34  3C 80 80 64 */	lis r4, lit_469@ha /* 0x80643F70@ha */
/* 80425F38  C3 A5 3F 6C */	lfs f29, lit_468@l(r5)  /* 0x80643F6C@l */
/* 80425F3C  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80425F40  C0 04 3F 70 */	lfs f0, lit_469@l(r4)  /* 0x80643F70@l */
/* 80425F44  4C 41 13 82 */	cror 2, 1, 2
/* 80425F48  40 82 00 08 */	bne lbl_80425F50
/* 80425F4C  48 00 00 08 */	b lbl_80425F54
lbl_80425F50:
/* 80425F50  FC A0 28 50 */	fneg f5, f5
lbl_80425F54:
/* 80425F54  EF 80 01 72 */	fmuls f28, f0, f5
lbl_80425F58:
/* 80425F58  FC 20 F0 90 */	fmr f1, f30
/* 80425F5C  FC 40 F8 90 */	fmr f2, f31
/* 80425F60  4B FE 60 A1 */	bl atans_table
/* 80425F64  7C 7F 1B 78 */	mr r31, r3
/* 80425F68  B3 FE 00 36 */	sth r31, 0x36(r30)
/* 80425F6C  B3 FE 00 DE */	sth r31, 0xde(r30)
/* 80425F70  D3 9E 00 6C */	stfs f28, 0x6c(r30)
/* 80425F74  4B F9 4B 7D */	bl sin_s
/* 80425F78  EC 1D 00 72 */	fmuls f0, f29, f1
/* 80425F7C  7F E3 FB 78 */	mr r3, r31
/* 80425F80  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 80425F84  4B F9 4B 19 */	bl cos_s
/* 80425F88  EC 3D 00 72 */	fmuls f1, f29, f1
/* 80425F8C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80643F74@ha */
/* 80425F90  38 A0 00 00 */	li r5, 0
/* 80425F94  38 80 00 B4 */	li r4, 0xb4
/* 80425F98  C0 03 3F 74 */	lfs f0, lit_470@l(r3)  /* 0x80643F74@l */
/* 80425F9C  38 00 00 01 */	li r0, 1
/* 80425FA0  D0 3E 00 70 */	stfs f1, 0x70(r30)
/* 80425FA4  B0 BE 01 A8 */	sth r5, 0x1a8(r30)
/* 80425FA8  B0 BE 01 AA */	sth r5, 0x1aa(r30)
/* 80425FAC  B0 9E 01 AC */	sth r4, 0x1ac(r30)
/* 80425FB0  B0 BE 01 AE */	sth r5, 0x1ae(r30)
/* 80425FB4  D0 1E 01 B0 */	stfs f0, 0x1b0(r30)
/* 80425FB8  98 1E 01 B4 */	stb r0, 0x1b4(r30)
/* 80425FBC  98 BE 01 B5 */	stb r5, 0x1b5(r30)
/* 80425FC0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80425FC4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80425FC8  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80425FCC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80425FD0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80425FD4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80425FD8  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 80425FDC  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 80425FE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80425FE4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80425FE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80425FEC  7C 08 03 A6 */	mtlr r0
/* 80425FF0  38 21 00 60 */	addi r1, r1, 0x60
/* 80425FF4  4E 80 00 20 */	blr 
