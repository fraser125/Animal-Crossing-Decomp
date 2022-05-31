lbl_80438A24:
/* 80438A24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80438A28  7C 08 02 A6 */	mflr r0
/* 80438A2C  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 80438A30  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 80438A34  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 80438A38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80438A3C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80438A40  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80438A44  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 80438A48  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80438A4C  FC 60 30 34 */	frsqrte f3, f6
/* 80438A50  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 80438A54  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80438A58  C8 86 00 00 */	lfd f4, 0(r6)
/* 80438A5C  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80438A60  7C 7F 1B 78 */	mr r31, r3
/* 80438A64  FC 23 00 F2 */	fmul f1, f3, f3
/* 80438A68  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80438A6C  C0 45 00 00 */	lfs f2, 0(r5)
/* 80438A70  FC 65 00 F2 */	fmul f3, f5, f3
/* 80438A74  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80438A78  FC 26 00 72 */	fmul f1, f6, f1
/* 80438A7C  FC 24 08 28 */	fsub f1, f4, f1
/* 80438A80  FC 63 00 72 */	fmul f3, f3, f1
/* 80438A84  FC 23 00 F2 */	fmul f1, f3, f3
/* 80438A88  FC 65 00 F2 */	fmul f3, f5, f3
/* 80438A8C  FC 26 00 72 */	fmul f1, f6, f1
/* 80438A90  FC 24 08 28 */	fsub f1, f4, f1
/* 80438A94  FC 63 00 72 */	fmul f3, f3, f1
/* 80438A98  FC 23 00 F2 */	fmul f1, f3, f3
/* 80438A9C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80438AA0  FC 26 00 72 */	fmul f1, f6, f1
/* 80438AA4  FC 24 08 28 */	fsub f1, f4, f1
/* 80438AA8  FC 23 00 72 */	fmul f1, f3, f1
/* 80438AAC  FC 26 00 72 */	fmul f1, f6, f1
/* 80438AB0  FC 20 08 18 */	frsp f1, f1
/* 80438AB4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80438AB8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80438ABC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80438AC0  EC 42 08 28 */	fsubs f2, f2, f1
/* 80438AC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80438AC8  40 81 00 54 */	ble lbl_80438B1C
/* 80438ACC  FC 20 10 34 */	frsqrte f1, f2
/* 80438AD0  FC 01 00 72 */	fmul f0, f1, f1
/* 80438AD4  FC 25 00 72 */	fmul f1, f5, f1
/* 80438AD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80438ADC  FC 04 00 28 */	fsub f0, f4, f0
/* 80438AE0  FC 21 00 32 */	fmul f1, f1, f0
/* 80438AE4  FC 01 00 72 */	fmul f0, f1, f1
/* 80438AE8  FC 25 00 72 */	fmul f1, f5, f1
/* 80438AEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80438AF0  FC 04 00 28 */	fsub f0, f4, f0
/* 80438AF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80438AF8  FC 01 00 72 */	fmul f0, f1, f1
/* 80438AFC  FC 25 00 72 */	fmul f1, f5, f1
/* 80438B00  FC 02 00 32 */	fmul f0, f2, f0
/* 80438B04  FC 04 00 28 */	fsub f0, f4, f0
/* 80438B08  FC 01 00 32 */	fmul f0, f1, f0
/* 80438B0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80438B10  FC 00 00 18 */	frsp f0, f0
/* 80438B14  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80438B18  C0 41 00 18 */	lfs f2, 0x18(r1)
lbl_80438B1C:
/* 80438B1C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80438B20  A8 9F 06 34 */	lha r4, 0x634(r31)
/* 80438B24  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80438B28  38 7F 06 14 */	addi r3, r31, 0x614
/* 80438B2C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80438B30  38 A0 02 AA */	li r5, 0x2aa
/* 80438B34  38 C0 00 2D */	li r6, 0x2d
/* 80438B38  EC 20 10 28 */	fsubs f1, f0, f2
/* 80438B3C  4B F8 27 D5 */	bl add_calc_short_angle2
/* 80438B40  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80438B44  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80438B48  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 80438B4C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80438B50  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 80438B54  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80438B58  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80438B5C  FC 60 30 34 */	frsqrte f3, f6
/* 80438B60  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80438B64  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80438B68  C8 85 00 00 */	lfd f4, 0(r5)
/* 80438B6C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80438B70  FC 23 00 F2 */	fmul f1, f3, f3
/* 80438B74  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80438B78  FC 65 00 F2 */	fmul f3, f5, f3
/* 80438B7C  FC 26 00 72 */	fmul f1, f6, f1
/* 80438B80  FC 24 08 28 */	fsub f1, f4, f1
/* 80438B84  FC 63 00 72 */	fmul f3, f3, f1
/* 80438B88  FC 23 00 F2 */	fmul f1, f3, f3
/* 80438B8C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80438B90  FC 26 00 72 */	fmul f1, f6, f1
/* 80438B94  FC 24 08 28 */	fsub f1, f4, f1
/* 80438B98  FC 63 00 72 */	fmul f3, f3, f1
/* 80438B9C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80438BA0  FC 65 00 F2 */	fmul f3, f5, f3
/* 80438BA4  FC 26 00 72 */	fmul f1, f6, f1
/* 80438BA8  FC 24 08 28 */	fsub f1, f4, f1
/* 80438BAC  FC 23 00 72 */	fmul f1, f3, f1
/* 80438BB0  FC 26 00 72 */	fmul f1, f6, f1
/* 80438BB4  FC 20 08 18 */	frsp f1, f1
/* 80438BB8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80438BBC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80438BC0  EC 22 08 28 */	fsubs f1, f2, f1
/* 80438BC4  EC 42 08 28 */	fsubs f2, f2, f1
/* 80438BC8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80438BCC  40 81 00 54 */	ble lbl_80438C20
/* 80438BD0  FC 20 10 34 */	frsqrte f1, f2
/* 80438BD4  FC 01 00 72 */	fmul f0, f1, f1
/* 80438BD8  FC 25 00 72 */	fmul f1, f5, f1
/* 80438BDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80438BE0  FC 04 00 28 */	fsub f0, f4, f0
/* 80438BE4  FC 21 00 32 */	fmul f1, f1, f0
/* 80438BE8  FC 01 00 72 */	fmul f0, f1, f1
/* 80438BEC  FC 25 00 72 */	fmul f1, f5, f1
/* 80438BF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80438BF4  FC 04 00 28 */	fsub f0, f4, f0
/* 80438BF8  FC 21 00 32 */	fmul f1, f1, f0
/* 80438BFC  FC 01 00 72 */	fmul f0, f1, f1
/* 80438C00  FC 25 00 72 */	fmul f1, f5, f1
/* 80438C04  FC 02 00 32 */	fmul f0, f2, f0
/* 80438C08  FC 04 00 28 */	fsub f0, f4, f0
/* 80438C0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80438C10  FC 02 00 32 */	fmul f0, f2, f0
/* 80438C14  FC 00 00 18 */	frsp f0, f0
/* 80438C18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80438C1C  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_80438C20:
/* 80438C20  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80438C24  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 80438C28  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80438C2C  38 7F 06 0E */	addi r3, r31, 0x60e
/* 80438C30  C0 05 00 00 */	lfs f0, 0(r5)
/* 80438C34  38 A0 03 8E */	li r5, 0x38e
/* 80438C38  38 C0 00 2D */	li r6, 0x2d
/* 80438C3C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80438C40  4B F8 26 D1 */	bl add_calc_short_angle2
/* 80438C44  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80438C48  3C A0 80 64 */	lis r5, lit_470@ha /* 0x80644254@ha */
/* 80438C4C  38 E4 42 4C */	addi r7, r4, lit_469@l /* 0x8064424C@l */
/* 80438C50  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 80438C54  C8 C7 00 00 */	lfd f6, 0(r7)
/* 80438C58  38 C5 42 54 */	addi r6, r5, lit_470@l /* 0x80644254@l */
/* 80438C5C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80438C60  C8 A7 00 00 */	lfd f5, 0(r7)
/* 80438C64  FC 60 30 34 */	frsqrte f3, f6
/* 80438C68  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80438C6C  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80438C70  C8 86 00 00 */	lfd f4, 0(r6)
/* 80438C74  C0 45 00 00 */	lfs f2, 0(r5)
/* 80438C78  FC 23 00 F2 */	fmul f1, f3, f3
/* 80438C7C  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80438C80  FC 65 00 F2 */	fmul f3, f5, f3
/* 80438C84  FC 26 00 72 */	fmul f1, f6, f1
/* 80438C88  FC 24 08 28 */	fsub f1, f4, f1
/* 80438C8C  FC 63 00 72 */	fmul f3, f3, f1
/* 80438C90  FC 23 00 F2 */	fmul f1, f3, f3
/* 80438C94  FC 65 00 F2 */	fmul f3, f5, f3
/* 80438C98  FC 26 00 72 */	fmul f1, f6, f1
/* 80438C9C  FC 24 08 28 */	fsub f1, f4, f1
/* 80438CA0  FC 63 00 72 */	fmul f3, f3, f1
/* 80438CA4  FC 23 00 F2 */	fmul f1, f3, f3
/* 80438CA8  FC 65 00 F2 */	fmul f3, f5, f3
/* 80438CAC  FC 26 00 72 */	fmul f1, f6, f1
/* 80438CB0  FC 24 08 28 */	fsub f1, f4, f1
/* 80438CB4  FC 23 00 72 */	fmul f1, f3, f1
/* 80438CB8  FC 26 00 72 */	fmul f1, f6, f1
/* 80438CBC  FC 20 08 18 */	frsp f1, f1
/* 80438CC0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80438CC4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80438CC8  EC 22 08 28 */	fsubs f1, f2, f1
/* 80438CCC  EC 42 08 28 */	fsubs f2, f2, f1
/* 80438CD0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80438CD4  40 81 00 54 */	ble lbl_80438D28
/* 80438CD8  FC 20 10 34 */	frsqrte f1, f2
/* 80438CDC  FC 01 00 72 */	fmul f0, f1, f1
/* 80438CE0  FC 25 00 72 */	fmul f1, f5, f1
/* 80438CE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80438CE8  FC 04 00 28 */	fsub f0, f4, f0
/* 80438CEC  FC 21 00 32 */	fmul f1, f1, f0
/* 80438CF0  FC 01 00 72 */	fmul f0, f1, f1
/* 80438CF4  FC 25 00 72 */	fmul f1, f5, f1
/* 80438CF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80438CFC  FC 04 00 28 */	fsub f0, f4, f0
/* 80438D00  FC 21 00 32 */	fmul f1, f1, f0
/* 80438D04  FC 01 00 72 */	fmul f0, f1, f1
/* 80438D08  FC 25 00 72 */	fmul f1, f5, f1
/* 80438D0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80438D10  FC 04 00 28 */	fsub f0, f4, f0
/* 80438D14  FC 01 00 32 */	fmul f0, f1, f0
/* 80438D18  FC 02 00 32 */	fmul f0, f2, f0
/* 80438D1C  FC 00 00 18 */	frsp f0, f0
/* 80438D20  D0 01 00 08 */	stfs f0, 8(r1)
/* 80438D24  C0 41 00 08 */	lfs f2, 8(r1)
lbl_80438D28:
/* 80438D28  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80438D2C  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 80438D30  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80438D34  38 7F 06 1C */	addi r3, r31, 0x61c
/* 80438D38  C0 05 00 00 */	lfs f0, 0(r5)
/* 80438D3C  38 A0 03 8E */	li r5, 0x38e
/* 80438D40  38 C0 00 2D */	li r6, 0x2d
/* 80438D44  EC 20 10 28 */	fsubs f1, f0, f2
/* 80438D48  4B F8 25 C9 */	bl add_calc_short_angle2
/* 80438D4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80438D50  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80438D54  7C 08 03 A6 */	mtlr r0
/* 80438D58  38 21 00 30 */	addi r1, r1, 0x30
/* 80438D5C  4E 80 00 20 */	blr 
