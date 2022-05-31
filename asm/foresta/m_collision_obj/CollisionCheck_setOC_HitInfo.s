lbl_80394C94:
/* 80394C94  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80394C98  7C 08 02 A6 */	mflr r0
/* 80394C9C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80394CA0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80394CA4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80394CA8  39 61 00 40 */	addi r11, r1, 0x40
/* 80394CAC  4B D0 62 19 */	bl func_8009AEC4
/* 80394CB0  83 C3 00 00 */	lwz r30, 0(r3)
/* 80394CB4  FF E0 08 90 */	fmr f31, f1
/* 80394CB8  83 A6 00 00 */	lwz r29, 0(r6)
/* 80394CBC  7C 79 1B 78 */	mr r25, r3
/* 80394CC0  7C DB 33 78 */	mr r27, r6
/* 80394CC4  7C BA 2B 78 */	mr r26, r5
/* 80394CC8  93 A3 00 04 */	stw r29, 4(r3)
/* 80394CCC  7D 1C 43 78 */	mr r28, r8
/* 80394CD0  88 03 00 08 */	lbz r0, 8(r3)
/* 80394CD4  60 00 00 02 */	ori r0, r0, 2
/* 80394CD8  98 03 00 08 */	stb r0, 8(r3)
/* 80394CDC  88 04 00 00 */	lbz r0, 0(r4)
/* 80394CE0  60 00 00 02 */	ori r0, r0, 2
/* 80394CE4  98 04 00 00 */	stb r0, 0(r4)
/* 80394CE8  88 06 00 09 */	lbz r0, 9(r6)
/* 80394CEC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80394CF0  41 82 00 10 */	beq lbl_80394D00
/* 80394CF4  88 19 00 09 */	lbz r0, 9(r25)
/* 80394CF8  60 00 00 01 */	ori r0, r0, 1
/* 80394CFC  98 19 00 09 */	stb r0, 9(r25)
lbl_80394D00:
/* 80394D00  93 DB 00 04 */	stw r30, 4(r27)
/* 80394D04  88 1B 00 08 */	lbz r0, 8(r27)
/* 80394D08  60 00 00 02 */	ori r0, r0, 2
/* 80394D0C  98 1B 00 08 */	stb r0, 8(r27)
/* 80394D10  88 07 00 00 */	lbz r0, 0(r7)
/* 80394D14  60 00 00 02 */	ori r0, r0, 2
/* 80394D18  98 07 00 00 */	stb r0, 0(r7)
/* 80394D1C  88 19 00 09 */	lbz r0, 9(r25)
/* 80394D20  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80394D24  41 82 00 10 */	beq lbl_80394D34
/* 80394D28  88 1B 00 09 */	lbz r0, 9(r27)
/* 80394D2C  60 00 00 01 */	ori r0, r0, 1
/* 80394D30  98 1B 00 09 */	stb r0, 9(r27)
lbl_80394D34:
/* 80394D34  28 1E 00 00 */	cmplwi r30, 0
/* 80394D38  41 82 02 E8 */	beq lbl_80395020
/* 80394D3C  28 1D 00 00 */	cmplwi r29, 0
/* 80394D40  40 82 00 08 */	bne lbl_80394D48
/* 80394D44  48 00 02 DC */	b lbl_80395020
lbl_80394D48:
/* 80394D48  88 19 00 08 */	lbz r0, 8(r25)
/* 80394D4C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80394D50  40 82 02 D0 */	bne lbl_80395020
/* 80394D54  88 1B 00 08 */	lbz r0, 8(r27)
/* 80394D58  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80394D5C  41 82 00 08 */	beq lbl_80394D64
/* 80394D60  48 00 02 C0 */	b lbl_80395020
lbl_80394D64:
/* 80394D64  88 7E 00 D6 */	lbz r3, 0xd6(r30)
/* 80394D68  4B FF FF 05 */	bl get_type
/* 80394D6C  7C 7F 1B 78 */	mr r31, r3
/* 80394D70  88 7D 00 D6 */	lbz r3, 0xd6(r29)
/* 80394D74  4B FF FE F9 */	bl get_type
/* 80394D78  88 DE 00 D6 */	lbz r6, 0xd6(r30)
/* 80394D7C  3C A0 43 30 */	lis r5, 0x4330
/* 80394D80  88 1D 00 D6 */	lbz r0, 0xd6(r29)
/* 80394D84  3C 80 80 64 */	lis r4, lit_695@ha /* 0x80641C2C@ha */
/* 80394D88  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80394D8C  38 C4 1C 2C */	addi r6, r4, lit_695@l /* 0x80641C2C@l */
/* 80394D90  3C 80 80 64 */	lis r4, lit_687@ha /* 0x80641C00@ha */
/* 80394D94  C8 66 00 00 */	lfd f3, 0(r6)
/* 80394D98  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80394D9C  C0 04 1C 00 */	lfs f0, lit_687@l(r4)  /* 0x80641C00@l */
/* 80394DA0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80394DA4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80394DA8  EC 41 18 28 */	fsubs f2, f1, f3
/* 80394DAC  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80394DB0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80394DB4  EC 61 18 28 */	fsubs f3, f1, f3
/* 80394DB8  EC 82 18 2A */	fadds f4, f2, f3
/* 80394DBC  FC 20 22 10 */	fabs f1, f4
/* 80394DC0  FC 20 08 18 */	frsp f1, f1
/* 80394DC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80394DC8  40 80 00 18 */	bge lbl_80394DE0
/* 80394DCC  3C A0 80 64 */	lis r5, lit_688@ha /* 0x80641C04@ha */
/* 80394DD0  3C 80 80 64 */	lis r4, lit_689@ha /* 0x80641C08@ha */
/* 80394DD4  C0 65 1C 04 */	lfs f3, lit_688@l(r5)  /* 0x80641C04@l */
/* 80394DD8  C0 84 1C 08 */	lfs f4, lit_689@l(r4)  /* 0x80641C08@l */
/* 80394DDC  FC 40 18 90 */	fmr f2, f3
lbl_80394DE0:
/* 80394DE0  3C A0 80 64 */	lis r5, lit_688@ha /* 0x80641C04@ha */
/* 80394DE4  3C 80 80 64 */	lis r4, lit_690@ha /* 0x80641C0C@ha */
/* 80394DE8  C0 25 1C 04 */	lfs f1, lit_688@l(r5)  /* 0x80641C04@l */
/* 80394DEC  C0 FC 00 00 */	lfs f7, 0(r28)
/* 80394DF0  EC 81 20 24 */	fdivs f4, f1, f4
/* 80394DF4  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80394DF8  C0 DC 00 08 */	lfs f6, 8(r28)
/* 80394DFC  C0 3A 00 08 */	lfs f1, 8(r26)
/* 80394E00  C0 A4 1C 0C */	lfs f5, lit_690@l(r4)  /* 0x80641C0C@l */
/* 80394E04  EC 07 00 28 */	fsubs f0, f7, f0
/* 80394E08  EC 26 08 28 */	fsubs f1, f6, f1
/* 80394E0C  EC E0 00 32 */	fmuls f7, f0, f0
/* 80394E10  EC C1 00 72 */	fmuls f6, f1, f1
/* 80394E14  ED 27 30 2A */	fadds f9, f7, f6
/* 80394E18  FC 09 28 40 */	fcmpo cr0, f9, f5
/* 80394E1C  40 81 00 68 */	ble lbl_80394E84
/* 80394E20  FC C0 48 34 */	frsqrte f6, f9
/* 80394E24  3C 80 80 64 */	lis r4, lit_691@ha /* 0x80641C14@ha */
/* 80394E28  38 A4 1C 14 */	addi r5, r4, lit_691@l /* 0x80641C14@l */
/* 80394E2C  3C 80 80 64 */	lis r4, lit_692@ha /* 0x80641C1C@ha */
/* 80394E30  C9 05 00 00 */	lfd f8, 0(r5)
/* 80394E34  FC A6 01 B2 */	fmul f5, f6, f6
/* 80394E38  C8 E4 1C 1C */	lfd f7, lit_692@l(r4)  /* 0x80641C1C@l */
/* 80394E3C  FC C8 01 B2 */	fmul f6, f8, f6
/* 80394E40  FC A9 01 72 */	fmul f5, f9, f5
/* 80394E44  FC A7 28 28 */	fsub f5, f7, f5
/* 80394E48  FC C6 01 72 */	fmul f6, f6, f5
/* 80394E4C  FC A6 01 B2 */	fmul f5, f6, f6
/* 80394E50  FC C8 01 B2 */	fmul f6, f8, f6
/* 80394E54  FC A9 01 72 */	fmul f5, f9, f5
/* 80394E58  FC A7 28 28 */	fsub f5, f7, f5
/* 80394E5C  FC C6 01 72 */	fmul f6, f6, f5
/* 80394E60  FC A6 01 B2 */	fmul f5, f6, f6
/* 80394E64  FC C8 01 B2 */	fmul f6, f8, f6
/* 80394E68  FC A9 01 72 */	fmul f5, f9, f5
/* 80394E6C  FC A7 28 28 */	fsub f5, f7, f5
/* 80394E70  FC A6 01 72 */	fmul f5, f6, f5
/* 80394E74  FC A9 01 72 */	fmul f5, f9, f5
/* 80394E78  FC A0 28 18 */	frsp f5, f5
/* 80394E7C  D0 A1 00 08 */	stfs f5, 8(r1)
/* 80394E80  C1 21 00 08 */	lfs f9, 8(r1)
lbl_80394E84:
/* 80394E84  2C 1F 00 00 */	cmpwi r31, 0
/* 80394E88  40 82 00 20 */	bne lbl_80394EA8
/* 80394E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80394E90  41 82 01 90 */	beq lbl_80395020
/* 80394E94  3C 80 80 64 */	lis r4, lit_690@ha /* 0x80641C0C@ha */
/* 80394E98  3C 60 80 64 */	lis r3, lit_688@ha /* 0x80641C04@ha */
/* 80394E9C  C0 C4 1C 0C */	lfs f6, lit_690@l(r4)  /* 0x80641C0C@l */
/* 80394EA0  C0 E3 1C 04 */	lfs f7, lit_688@l(r3)  /* 0x80641C04@l */
/* 80394EA4  48 00 00 78 */	b lbl_80394F1C
lbl_80394EA8:
/* 80394EA8  2C 1F 00 01 */	cmpwi r31, 1
/* 80394EAC  40 82 00 4C */	bne lbl_80394EF8
/* 80394EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80394EB4  40 82 00 18 */	bne lbl_80394ECC
/* 80394EB8  3C 80 80 64 */	lis r4, lit_688@ha /* 0x80641C04@ha */
/* 80394EBC  3C 60 80 64 */	lis r3, lit_690@ha /* 0x80641C0C@ha */
/* 80394EC0  C0 C4 1C 04 */	lfs f6, lit_688@l(r4)  /* 0x80641C04@l */
/* 80394EC4  C0 E3 1C 0C */	lfs f7, lit_690@l(r3)  /* 0x80641C0C@l */
/* 80394EC8  48 00 00 54 */	b lbl_80394F1C
lbl_80394ECC:
/* 80394ECC  2C 03 00 01 */	cmpwi r3, 1
/* 80394ED0  40 82 00 14 */	bne lbl_80394EE4
/* 80394ED4  3C 60 80 64 */	lis r3, lit_693@ha /* 0x80641C24@ha */
/* 80394ED8  C0 C3 1C 24 */	lfs f6, lit_693@l(r3)  /* 0x80641C24@l */
/* 80394EDC  FC E0 30 90 */	fmr f7, f6
/* 80394EE0  48 00 00 3C */	b lbl_80394F1C
lbl_80394EE4:
/* 80394EE4  3C 80 80 64 */	lis r4, lit_690@ha /* 0x80641C0C@ha */
/* 80394EE8  3C 60 80 64 */	lis r3, lit_688@ha /* 0x80641C04@ha */
/* 80394EEC  C0 C4 1C 0C */	lfs f6, lit_690@l(r4)  /* 0x80641C0C@l */
/* 80394EF0  C0 E3 1C 04 */	lfs f7, lit_688@l(r3)  /* 0x80641C04@l */
/* 80394EF4  48 00 00 28 */	b lbl_80394F1C
lbl_80394EF8:
/* 80394EF8  2C 03 00 02 */	cmpwi r3, 2
/* 80394EFC  40 82 00 10 */	bne lbl_80394F0C
/* 80394F00  EC C3 01 32 */	fmuls f6, f3, f4
/* 80394F04  EC E2 01 32 */	fmuls f7, f2, f4
/* 80394F08  48 00 00 14 */	b lbl_80394F1C
lbl_80394F0C:
/* 80394F0C  3C 80 80 64 */	lis r4, lit_688@ha /* 0x80641C04@ha */
/* 80394F10  3C 60 80 64 */	lis r3, lit_690@ha /* 0x80641C0C@ha */
/* 80394F14  C0 C4 1C 04 */	lfs f6, lit_688@l(r4)  /* 0x80641C04@l */
/* 80394F18  C0 E3 1C 0C */	lfs f7, lit_690@l(r3)  /* 0x80641C0C@l */
lbl_80394F1C:
/* 80394F1C  88 19 00 08 */	lbz r0, 8(r25)
/* 80394F20  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80394F24  41 82 00 1C */	beq lbl_80394F40
/* 80394F28  3C 80 80 64 */	lis r4, lit_690@ha /* 0x80641C0C@ha */
/* 80394F2C  3C 60 80 64 */	lis r3, lit_688@ha /* 0x80641C04@ha */
/* 80394F30  C0 C4 1C 0C */	lfs f6, lit_690@l(r4)  /* 0x80641C0C@l */
/* 80394F34  C0 E3 1C 04 */	lfs f7, lit_688@l(r3)  /* 0x80641C04@l */
/* 80394F38  D0 DD 00 74 */	stfs f6, 0x74(r29)
/* 80394F3C  48 00 00 24 */	b lbl_80394F60
lbl_80394F40:
/* 80394F40  88 1B 00 08 */	lbz r0, 8(r27)
/* 80394F44  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80394F48  41 82 00 18 */	beq lbl_80394F60
/* 80394F4C  3C 60 80 64 */	lis r3, lit_690@ha /* 0x80641C0C@ha */
/* 80394F50  3C 80 80 64 */	lis r4, lit_688@ha /* 0x80641C04@ha */
/* 80394F54  C0 E3 1C 0C */	lfs f7, lit_690@l(r3)  /* 0x80641C0C@l */
/* 80394F58  C0 C4 1C 04 */	lfs f6, lit_688@l(r4)  /* 0x80641C04@l */
/* 80394F5C  D0 FE 00 74 */	stfs f7, 0x74(r30)
lbl_80394F60:
/* 80394F60  FC 60 4A 10 */	fabs f3, f9
/* 80394F64  3C 60 80 64 */	lis r3, lit_687@ha /* 0x80641C00@ha */
/* 80394F68  C0 43 1C 00 */	lfs f2, lit_687@l(r3)  /* 0x80641C00@l */
/* 80394F6C  FC 60 18 18 */	frsp f3, f3
/* 80394F70  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80394F74  41 80 00 5C */	blt lbl_80394FD0
/* 80394F78  EC 5F 48 24 */	fdivs f2, f31, f9
/* 80394F7C  C0 BE 00 C4 */	lfs f5, 0xc4(r30)
/* 80394F80  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80394F84  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80394F88  FC 80 00 50 */	fneg f4, f0
/* 80394F8C  FC 60 08 50 */	fneg f3, f1
/* 80394F90  EC 40 01 F2 */	fmuls f2, f0, f7
/* 80394F94  EC 84 01 B2 */	fmuls f4, f4, f6
/* 80394F98  EC 63 01 B2 */	fmuls f3, f3, f6
/* 80394F9C  EC 01 01 F2 */	fmuls f0, f1, f7
/* 80394FA0  EC 25 20 2A */	fadds f1, f5, f4
/* 80394FA4  D0 3E 00 C4 */	stfs f1, 0xc4(r30)
/* 80394FA8  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80394FAC  EC 21 18 2A */	fadds f1, f1, f3
/* 80394FB0  D0 3E 00 CC */	stfs f1, 0xcc(r30)
/* 80394FB4  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80394FB8  EC 21 10 2A */	fadds f1, f1, f2
/* 80394FBC  D0 3D 00 C4 */	stfs f1, 0xc4(r29)
/* 80394FC0  C0 3D 00 CC */	lfs f1, 0xcc(r29)
/* 80394FC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80394FC8  D0 1D 00 CC */	stfs f0, 0xcc(r29)
/* 80394FCC  48 00 00 54 */	b lbl_80395020
lbl_80394FD0:
/* 80394FD0  3C 60 80 64 */	lis r3, lit_690@ha /* 0x80641C0C@ha */
/* 80394FD4  C0 03 1C 0C */	lfs f0, lit_690@l(r3)  /* 0x80641C0C@l */
/* 80394FD8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80394FDC  41 82 00 2C */	beq lbl_80395008
/* 80394FE0  FC 20 F8 50 */	fneg f1, f31
/* 80394FE4  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 80394FE8  EC 1F 01 F2 */	fmuls f0, f31, f7
/* 80394FEC  EC 21 01 B2 */	fmuls f1, f1, f6
/* 80394FF0  EC 22 08 2A */	fadds f1, f2, f1
/* 80394FF4  D0 3E 00 C4 */	stfs f1, 0xc4(r30)
/* 80394FF8  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80394FFC  EC 01 00 2A */	fadds f0, f1, f0
/* 80395000  D0 1D 00 C4 */	stfs f0, 0xc4(r29)
/* 80395004  48 00 00 1C */	b lbl_80395020
lbl_80395008:
/* 80395008  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 8039500C  EC 00 30 28 */	fsubs f0, f0, f6
/* 80395010  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 80395014  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80395018  EC 00 38 2A */	fadds f0, f0, f7
/* 8039501C  D0 1D 00 C4 */	stfs f0, 0xc4(r29)
lbl_80395020:
/* 80395020  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80395024  39 61 00 40 */	addi r11, r1, 0x40
/* 80395028  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8039502C  4B D0 5E E5 */	bl func_8009AF10
/* 80395030  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80395034  7C 08 03 A6 */	mtlr r0
/* 80395038  38 21 00 50 */	addi r1, r1, 0x50
/* 8039503C  4E 80 00 20 */	blr 
