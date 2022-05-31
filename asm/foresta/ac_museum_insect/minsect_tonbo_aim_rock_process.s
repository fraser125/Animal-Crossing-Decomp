lbl_8045FC20:
/* 8045FC20  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8045FC24  7C 08 02 A6 */	mflr r0
/* 8045FC28  90 01 00 54 */	stw r0, 0x54(r1)
/* 8045FC2C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8045FC30  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8045FC34  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8045FC38  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8045FC3C  7C 7E 1B 78 */	mr r30, r3
/* 8045FC40  7C 9F 23 78 */	mr r31, r4
/* 8045FC44  38 A1 00 18 */	addi r5, r1, 0x18
/* 8045FC48  4B FF F1 2D */	bl minsect_tonbo_rock_target_set
/* 8045FC4C  A8 1E 00 78 */	lha r0, 0x78(r30)
/* 8045FC50  2C 00 00 02 */	cmpwi r0, 2
/* 8045FC54  41 82 00 28 */	beq lbl_8045FC7C
/* 8045FC58  7F C3 F3 78 */	mr r3, r30
/* 8045FC5C  7F E4 FB 78 */	mr r4, r31
/* 8045FC60  4B FF ED D1 */	bl minsect_tonbo_bg_check
/* 8045FC64  2C 03 00 00 */	cmpwi r3, 0
/* 8045FC68  41 82 00 14 */	beq lbl_8045FC7C
/* 8045FC6C  38 60 00 02 */	li r3, 2
/* 8045FC70  38 00 00 00 */	li r0, 0
/* 8045FC74  B0 7E 00 78 */	sth r3, 0x78(r30)
/* 8045FC78  B0 1E 00 6E */	sth r0, 0x6e(r30)
lbl_8045FC7C:
/* 8045FC7C  A8 1E 00 78 */	lha r0, 0x78(r30)
/* 8045FC80  2C 00 00 01 */	cmpwi r0, 1
/* 8045FC84  41 82 01 3C */	beq lbl_8045FDC0
/* 8045FC88  40 80 00 10 */	bge lbl_8045FC98
/* 8045FC8C  2C 00 00 00 */	cmpwi r0, 0
/* 8045FC90  40 80 00 14 */	bge lbl_8045FCA4
/* 8045FC94  48 00 05 24 */	b lbl_804601B8
lbl_8045FC98:
/* 8045FC98  2C 00 00 03 */	cmpwi r0, 3
/* 8045FC9C  40 80 05 1C */	bge lbl_804601B8
/* 8045FCA0  48 00 02 C4 */	b lbl_8045FF64
lbl_8045FCA4:
/* 8045FCA4  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045FCA8  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8045FCAC  38 A3 45 FC */	addi r5, r3, lit_509@l /* 0x806445FC@l */
/* 8045FCB0  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045FCB4  C9 05 00 00 */	lfd f8, 0(r5)
/* 8045FCB8  38 E4 46 04 */	addi r7, r4, lit_510@l /* 0x80644604@l */
/* 8045FCBC  38 C3 46 0C */	addi r6, r3, lit_511@l /* 0x8064460C@l */
/* 8045FCC0  3C 80 80 64 */	lis r4, lit_677@ha /* 0x80644650@ha */
/* 8045FCC4  FC 60 40 34 */	frsqrte f3, f8
/* 8045FCC8  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8045FCCC  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 8045FCD0  38 A4 46 50 */	addi r5, r4, lit_677@l /* 0x80644650@l */
/* 8045FCD4  38 83 46 10 */	addi r4, r3, lit_512@l /* 0x80644610@l */
/* 8045FCD8  C8 C7 00 00 */	lfd f6, 0(r7)
/* 8045FCDC  FC 43 00 F2 */	fmul f2, f3, f3
/* 8045FCE0  C0 06 00 00 */	lfs f0, 0(r6)
/* 8045FCE4  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8045FCE8  38 7E 00 40 */	addi r3, r30, 0x40
/* 8045FCEC  FC A7 00 F2 */	fmul f5, f7, f3
/* 8045FCF0  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045FCF4  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045FCF8  C0 84 00 00 */	lfs f4, 0(r4)
/* 8045FCFC  FC 46 10 28 */	fsub f2, f6, f2
/* 8045FD00  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045FD04  FC 45 01 72 */	fmul f2, f5, f5
/* 8045FD08  FC A7 01 72 */	fmul f5, f7, f5
/* 8045FD0C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045FD10  FC 46 10 28 */	fsub f2, f6, f2
/* 8045FD14  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045FD18  FC 45 01 72 */	fmul f2, f5, f5
/* 8045FD1C  FC A7 01 72 */	fmul f5, f7, f5
/* 8045FD20  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045FD24  FC 46 10 28 */	fsub f2, f6, f2
/* 8045FD28  FC 45 00 B2 */	fmul f2, f5, f2
/* 8045FD2C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045FD30  FC 40 10 18 */	frsp f2, f2
/* 8045FD34  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8045FD38  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8045FD3C  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045FD40  4B F5 B4 71 */	bl add_calc
/* 8045FD44  7F C3 F3 78 */	mr r3, r30
/* 8045FD48  4B FF F2 C1 */	bl minsect_tonbo_acc_change
/* 8045FD4C  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8045FD50  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045FD54  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8045FD58  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045FD5C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8045FD60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045FD64  4C 41 13 82 */	cror 2, 1, 2
/* 8045FD68  40 82 00 08 */	bne lbl_8045FD70
/* 8045FD6C  48 00 00 08 */	b lbl_8045FD74
lbl_8045FD70:
/* 8045FD70  FC 40 10 50 */	fneg f2, f2
lbl_8045FD74:
/* 8045FD74  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8045FD78  4C 40 13 82 */	cror 2, 0, 2
/* 8045FD7C  40 82 04 3C */	bne lbl_804601B8
/* 8045FD80  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 8045FD84  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045FD88  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8045FD8C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045FD90  EC 43 10 28 */	fsubs f2, f3, f2
/* 8045FD94  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045FD98  4C 41 13 82 */	cror 2, 1, 2
/* 8045FD9C  40 82 00 08 */	bne lbl_8045FDA4
/* 8045FDA0  48 00 00 08 */	b lbl_8045FDA8
lbl_8045FDA4:
/* 8045FDA4  FC 40 10 50 */	fneg f2, f2
lbl_8045FDA8:
/* 8045FDA8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8045FDAC  4C 40 13 82 */	cror 2, 0, 2
/* 8045FDB0  40 82 04 08 */	bne lbl_804601B8
/* 8045FDB4  38 00 00 01 */	li r0, 1
/* 8045FDB8  B0 1E 00 78 */	sth r0, 0x78(r30)
/* 8045FDBC  48 00 03 FC */	b lbl_804601B8
lbl_8045FDC0:
/* 8045FDC0  3C 60 80 64 */	lis r3, lit_583@ha /* 0x80644624@ha */
/* 8045FDC4  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8045FDC8  38 A3 46 24 */	addi r5, r3, lit_583@l /* 0x80644624@l */
/* 8045FDCC  C8 E4 45 FC */	lfd f7, lit_509@l(r4)  /* 0x806445FC@l */
/* 8045FDD0  C9 05 00 00 */	lfd f8, 0(r5)
/* 8045FDD4  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045FDD8  39 03 46 04 */	addi r8, r3, lit_510@l /* 0x80644604@l */
/* 8045FDDC  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045FDE0  FC 20 40 34 */	frsqrte f1, f8
/* 8045FDE4  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045FDE8  38 C3 46 0C */	addi r6, r3, lit_511@l /* 0x8064460C@l */
/* 8045FDEC  C8 C8 00 00 */	lfd f6, 0(r8)
/* 8045FDF0  3C 80 80 64 */	lis r4, lit_460@ha /* 0x806445C0@ha */
/* 8045FDF4  38 E5 45 BC */	addi r7, r5, lit_459@l /* 0x806445BC@l */
/* 8045FDF8  FC 01 00 72 */	fmul f0, f1, f1
/* 8045FDFC  38 A4 45 C0 */	addi r5, r4, lit_460@l /* 0x806445C0@l */
/* 8045FE00  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 8045FE04  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045FE08  38 83 46 10 */	addi r4, r3, lit_512@l /* 0x80644610@l */
/* 8045FE0C  FC A7 00 72 */	fmul f5, f7, f1
/* 8045FE10  FC 48 00 32 */	fmul f2, f8, f0
/* 8045FE14  C0 06 00 00 */	lfs f0, 0(r6)
/* 8045FE18  C0 27 00 00 */	lfs f1, 0(r7)
/* 8045FE1C  38 7E 00 40 */	addi r3, r30, 0x40
/* 8045FE20  C0 84 00 00 */	lfs f4, 0(r4)
/* 8045FE24  FC 46 10 28 */	fsub f2, f6, f2
/* 8045FE28  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045FE2C  FC 45 01 72 */	fmul f2, f5, f5
/* 8045FE30  FC A7 01 72 */	fmul f5, f7, f5
/* 8045FE34  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045FE38  FC 46 10 28 */	fsub f2, f6, f2
/* 8045FE3C  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045FE40  FC 45 01 72 */	fmul f2, f5, f5
/* 8045FE44  FC A7 01 72 */	fmul f5, f7, f5
/* 8045FE48  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045FE4C  FC 46 10 28 */	fsub f2, f6, f2
/* 8045FE50  FC 45 00 B2 */	fmul f2, f5, f2
/* 8045FE54  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045FE58  FC 40 10 18 */	frsp f2, f2
/* 8045FE5C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8045FE60  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8045FE64  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045FE68  4B F5 B3 49 */	bl add_calc
/* 8045FE6C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045FE70  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045FE74  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8045FE78  40 82 03 40 */	bne lbl_804601B8
/* 8045FE7C  38 00 00 02 */	li r0, 2
/* 8045FE80  B0 1E 00 78 */	sth r0, 0x78(r30)
/* 8045FE84  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8045FE88  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8045FE8C  41 82 00 40 */	beq lbl_8045FECC
/* 8045FE90  4B BF CE 9D */	bl fqrand2
/* 8045FE94  3C 60 80 64 */	lis r3, lit_580@ha /* 0x80644618@ha */
/* 8045FE98  3C 80 80 64 */	lis r4, lit_505@ha /* 0x806445E4@ha */
/* 8045FE9C  38 A3 46 18 */	addi r5, r3, lit_580@l /* 0x80644618@l */
/* 8045FEA0  C0 04 45 E4 */	lfs f0, lit_505@l(r4)  /* 0x806445E4@l */
/* 8045FEA4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8045FEA8  7F C3 F3 78 */	mr r3, r30
/* 8045FEAC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045FEB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045FEB4  FC 00 00 1E */	fctiwz f0, f0
/* 8045FEB8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8045FEBC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8045FEC0  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045FEC4  4B FF F4 51 */	bl minsect_tonbo_aim_angle_check
/* 8045FEC8  48 00 00 90 */	b lbl_8045FF58
lbl_8045FECC:
/* 8045FECC  4B BF CE 29 */	bl fqrand
/* 8045FED0  3C 60 80 64 */	lis r3, lit_504@ha /* 0x806445E0@ha */
/* 8045FED4  C0 03 45 E0 */	lfs f0, lit_504@l(r3)  /* 0x806445E0@l */
/* 8045FED8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045FEDC  40 81 00 38 */	ble lbl_8045FF14
/* 8045FEE0  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045FEE4  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 8045FEE8  38 83 DF D0 */	addi r4, r3, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045FEEC  80 C4 00 00 */	lwz r6, 0(r4)
/* 8045FEF0  38 60 00 01 */	li r3, 1
/* 8045FEF4  7C 60 00 30 */	slw r0, r3, r0
/* 8045FEF8  7F E4 FB 78 */	mr r4, r31
/* 8045FEFC  A8 A6 2F A0 */	lha r5, 0x2fa0(r6)
/* 8045FF00  7F C3 F3 78 */	mr r3, r30
/* 8045FF04  7C A0 00 78 */	andc r0, r5, r0
/* 8045FF08  B0 06 2F A0 */	sth r0, 0x2fa0(r6)
/* 8045FF0C  4B FF F5 C9 */	bl minsect_tonbo_normal_process_init
/* 8045FF10  48 00 02 B0 */	b lbl_804601C0
lbl_8045FF14:
/* 8045FF14  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8045FF18  38 81 00 18 */	addi r4, r1, 0x18
/* 8045FF1C  4B F5 B2 15 */	bl search_position_angleY
/* 8045FF20  B0 7E 00 70 */	sth r3, 0x70(r30)
/* 8045FF24  4B BF CE 09 */	bl fqrand2
/* 8045FF28  3C 80 80 64 */	lis r4, lit_1349@ha /* 0x8064473C@ha */
/* 8045FF2C  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045FF30  C0 44 47 3C */	lfs f2, lit_1349@l(r4)  /* 0x8064473C@l */
/* 8045FF34  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045FF38  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045FF3C  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8045FF40  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045FF44  FC 00 00 1E */	fctiwz f0, f0
/* 8045FF48  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8045FF4C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8045FF50  7C 00 1A 14 */	add r0, r0, r3
/* 8045FF54  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_8045FF58:
/* 8045FF58  38 00 00 00 */	li r0, 0
/* 8045FF5C  B0 1E 00 72 */	sth r0, 0x72(r30)
/* 8045FF60  48 00 02 58 */	b lbl_804601B8
lbl_8045FF64:
/* 8045FF64  3C 60 80 64 */	lis r3, lit_1238@ha /* 0x8064472C@ha */
/* 8045FF68  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8045FF6C  38 A3 47 2C */	addi r5, r3, lit_1238@l /* 0x8064472C@l */
/* 8045FF70  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8045FF74  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8045FF78  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045FF7C  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8045FF80  FC 60 30 34 */	frsqrte f3, f6
/* 8045FF84  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045FF88  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8045FF8C  C8 85 00 00 */	lfd f4, 0(r5)
/* 8045FF90  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045FF94  C0 44 00 00 */	lfs f2, 0(r4)
/* 8045FF98  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045FF9C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045FFA0  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045FFA4  FC 26 00 72 */	fmul f1, f6, f1
/* 8045FFA8  FC 24 08 28 */	fsub f1, f4, f1
/* 8045FFAC  FC 63 00 72 */	fmul f3, f3, f1
/* 8045FFB0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045FFB4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045FFB8  FC 26 00 72 */	fmul f1, f6, f1
/* 8045FFBC  FC 24 08 28 */	fsub f1, f4, f1
/* 8045FFC0  FC 63 00 72 */	fmul f3, f3, f1
/* 8045FFC4  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045FFC8  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045FFCC  FC 26 00 72 */	fmul f1, f6, f1
/* 8045FFD0  FC 24 08 28 */	fsub f1, f4, f1
/* 8045FFD4  FC 23 00 72 */	fmul f1, f3, f1
/* 8045FFD8  FC 26 00 72 */	fmul f1, f6, f1
/* 8045FFDC  FC 20 08 18 */	frsp f1, f1
/* 8045FFE0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8045FFE4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8045FFE8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8045FFEC  EC 42 08 28 */	fsubs f2, f2, f1
/* 8045FFF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045FFF4  40 81 00 54 */	ble lbl_80460048
/* 8045FFF8  FC 20 10 34 */	frsqrte f1, f2
/* 8045FFFC  FC 01 00 72 */	fmul f0, f1, f1
/* 80460000  FC 25 00 72 */	fmul f1, f5, f1
/* 80460004  FC 02 00 32 */	fmul f0, f2, f0
/* 80460008  FC 04 00 28 */	fsub f0, f4, f0
/* 8046000C  FC 21 00 32 */	fmul f1, f1, f0
/* 80460010  FC 01 00 72 */	fmul f0, f1, f1
/* 80460014  FC 25 00 72 */	fmul f1, f5, f1
/* 80460018  FC 02 00 32 */	fmul f0, f2, f0
/* 8046001C  FC 04 00 28 */	fsub f0, f4, f0
/* 80460020  FC 21 00 32 */	fmul f1, f1, f0
/* 80460024  FC 01 00 72 */	fmul f0, f1, f1
/* 80460028  FC 25 00 72 */	fmul f1, f5, f1
/* 8046002C  FC 02 00 32 */	fmul f0, f2, f0
/* 80460030  FC 04 00 28 */	fsub f0, f4, f0
/* 80460034  FC 01 00 32 */	fmul f0, f1, f0
/* 80460038  FC 02 00 32 */	fmul f0, f2, f0
/* 8046003C  FC 00 00 18 */	frsp f0, f0
/* 80460040  D0 01 00 08 */	stfs f0, 8(r1)
/* 80460044  C0 41 00 08 */	lfs f2, 8(r1)
lbl_80460048:
/* 80460048  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046004C  A8 9E 00 70 */	lha r4, 0x70(r30)
/* 80460050  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80460054  38 7E 00 6A */	addi r3, r30, 0x6a
/* 80460058  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046005C  38 A0 0A AA */	li r5, 0xaaa
/* 80460060  38 C0 00 04 */	li r6, 4
/* 80460064  EC 20 10 28 */	fsubs f1, f0, f2
/* 80460068  4B F5 B2 A9 */	bl add_calc_short_angle2
/* 8046006C  7C 60 07 35 */	extsh. r0, r3
/* 80460070  40 82 01 48 */	bne lbl_804601B8
/* 80460074  A8 7E 00 6E */	lha r3, 0x6e(r30)
/* 80460078  38 03 FF FF */	addi r0, r3, -1
/* 8046007C  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 80460080  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 80460084  2C 00 00 00 */	cmpwi r0, 0
/* 80460088  40 80 01 30 */	bge lbl_804601B8
/* 8046008C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80460090  38 81 00 18 */	addi r4, r1, 0x18
/* 80460094  4B F5 AF F9 */	bl search_position_distanceXZ
/* 80460098  FF E0 08 90 */	fmr f31, f1
/* 8046009C  38 60 15 55 */	li r3, 0x1555
/* 804600A0  4B F5 AA 51 */	bl sin_s
/* 804600A4  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 804600A8  3C 60 80 64 */	lis r3, lit_582@ha /* 0x80644620@ha */
/* 804600AC  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 804600B0  C0 03 46 20 */	lfs f0, lit_582@l(r3)  /* 0x80644620@l */
/* 804600B4  EC 43 10 28 */	fsubs f2, f3, f2
/* 804600B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804600BC  EC 02 00 72 */	fmuls f0, f2, f1
/* 804600C0  40 80 00 1C */	bge lbl_804600DC
/* 804600C4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804600C8  40 81 00 14 */	ble lbl_804600DC
/* 804600CC  7F C3 F3 78 */	mr r3, r30
/* 804600D0  7F E4 FB 78 */	mr r4, r31
/* 804600D4  48 00 01 0D */	bl minsect_tonbo_rock_process_init
/* 804600D8  48 00 00 E0 */	b lbl_804601B8
lbl_804600DC:
/* 804600DC  7F C3 F3 78 */	mr r3, r30
/* 804600E0  4B FF EF F5 */	bl minsect_tonbo_max_speed_set
/* 804600E4  7F C3 F3 78 */	mr r3, r30
/* 804600E8  4B FF F0 D9 */	bl minsect_tonbo_aim_distance_set
/* 804600EC  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 804600F0  FF E0 08 90 */	fmr f31, f1
/* 804600F4  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 804600F8  90 7E 00 44 */	stw r3, 0x44(r30)
/* 804600FC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80460100  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80460104  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80460108  4B BF CC 25 */	bl fqrand2
/* 8046010C  3C 60 80 64 */	lis r3, lit_581@ha /* 0x8064461C@ha */
/* 80460110  3C 80 80 64 */	lis r4, lit_461@ha /* 0x806445C4@ha */
/* 80460114  38 A3 46 1C */	addi r5, r3, lit_581@l /* 0x8064461C@l */
/* 80460118  C0 44 45 C4 */	lfs f2, lit_461@l(r4)  /* 0x806445C4@l */
/* 8046011C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80460120  3C 60 80 64 */	lis r3, lit_1239@ha /* 0x80644734@ha */
/* 80460124  C0 63 47 34 */	lfs f3, lit_1239@l(r3)  /* 0x80644734@l */
/* 80460128  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046012C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80460130  EC 22 08 2A */	fadds f1, f2, f1
/* 80460134  EC 00 08 2A */	fadds f0, f0, f1
/* 80460138  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8046013C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80460140  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80460144  40 80 00 08 */	bge lbl_8046014C
/* 80460148  48 00 00 08 */	b lbl_80460150
lbl_8046014C:
/* 8046014C  FC 60 08 90 */	fmr f3, f1
lbl_80460150:
/* 80460150  3C 60 80 64 */	lis r3, lit_935@ha /* 0x806446C4@ha */
/* 80460154  C0 03 46 C4 */	lfs f0, lit_935@l(r3)  /* 0x806446C4@l */
/* 80460158  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8046015C  40 81 00 08 */	ble lbl_80460164
/* 80460160  48 00 00 1C */	b lbl_8046017C
lbl_80460164:
/* 80460164  3C 60 80 64 */	lis r3, lit_1239@ha /* 0x80644734@ha */
/* 80460168  C0 03 47 34 */	lfs f0, lit_1239@l(r3)  /* 0x80644734@l */
/* 8046016C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80460170  40 80 00 08 */	bge lbl_80460178
/* 80460174  48 00 00 08 */	b lbl_8046017C
lbl_80460178:
/* 80460178  FC 00 08 90 */	fmr f0, f1
lbl_8046017C:
/* 8046017C  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 80460180  A8 7E 00 6A */	lha r3, 0x6a(r30)
/* 80460184  4B F5 A9 6D */	bl sin_s
/* 80460188  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8046018C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80460190  EC 00 08 2A */	fadds f0, f0, f1
/* 80460194  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80460198  A8 7E 00 6A */	lha r3, 0x6a(r30)
/* 8046019C  4B F5 A9 01 */	bl cos_s
/* 804601A0  EC 3F 00 72 */	fmuls f1, f31, f1
/* 804601A4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804601A8  38 00 00 00 */	li r0, 0
/* 804601AC  EC 00 08 2A */	fadds f0, f0, f1
/* 804601B0  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 804601B4  B0 1E 00 78 */	sth r0, 0x78(r30)
lbl_804601B8:
/* 804601B8  7F C3 F3 78 */	mr r3, r30
/* 804601BC  48 00 11 05 */	bl minsect_tonbo_MoveF
lbl_804601C0:
/* 804601C0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804601C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804601C8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804601CC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804601D0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804601D4  7C 08 03 A6 */	mtlr r0
/* 804601D8  38 21 00 50 */	addi r1, r1, 0x50
/* 804601DC  4E 80 00 20 */	blr 
