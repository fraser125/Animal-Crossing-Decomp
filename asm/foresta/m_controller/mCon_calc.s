lbl_80395B08:
/* 80395B08  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80395B0C  7C 08 02 A6 */	mflr r0
/* 80395B10  90 01 00 54 */	stw r0, 0x54(r1)
/* 80395B14  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80395B18  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80395B1C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80395B20  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80395B24  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80395B28  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 80395B2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80395B30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80395B34  C0 03 00 00 */	lfs f0, 0(r3)
/* 80395B38  7C 7F 1B 78 */	mr r31, r3
/* 80395B3C  FF A0 08 90 */	fmr f29, f1
/* 80395B40  3C 60 80 64 */	lis r3, data_80641C34@ha /* 0x80641C34@ha */
/* 80395B44  FF C0 10 90 */	fmr f30, f2
/* 80395B48  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80395B4C  C0 03 1C 34 */	lfs f0, data_80641C34@l(r3)  /* 0x80641C34@l */
/* 80395B50  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80395B54  EC 5D 07 72 */	fmuls f2, f29, f29
/* 80395B58  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 80395B5C  D0 7F 00 14 */	stfs f3, 0x14(r31)
/* 80395B60  EF E2 08 2A */	fadds f31, f2, f1
/* 80395B64  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80395B68  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80395B6C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80395B70  A8 1F 00 0C */	lha r0, 0xc(r31)
/* 80395B74  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 80395B78  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80395B7C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80395B80  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80395B84  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80395B88  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80395B8C  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80395B90  40 81 00 68 */	ble lbl_80395BF8
/* 80395B94  FC 20 F8 34 */	frsqrte f1, f31
/* 80395B98  3C 60 80 64 */	lis r3, lit_297@ha /* 0x80641C3C@ha */
/* 80395B9C  38 83 1C 3C */	addi r4, r3, lit_297@l /* 0x80641C3C@l */
/* 80395BA0  3C 60 80 64 */	lis r3, lit_298@ha /* 0x80641C44@ha */
/* 80395BA4  C8 64 00 00 */	lfd f3, 0(r4)
/* 80395BA8  FC 01 00 72 */	fmul f0, f1, f1
/* 80395BAC  C8 43 1C 44 */	lfd f2, lit_298@l(r3)  /* 0x80641C44@l */
/* 80395BB0  FC 23 00 72 */	fmul f1, f3, f1
/* 80395BB4  FC 1F 00 32 */	fmul f0, f31, f0
/* 80395BB8  FC 02 00 28 */	fsub f0, f2, f0
/* 80395BBC  FC 21 00 32 */	fmul f1, f1, f0
/* 80395BC0  FC 01 00 72 */	fmul f0, f1, f1
/* 80395BC4  FC 23 00 72 */	fmul f1, f3, f1
/* 80395BC8  FC 1F 00 32 */	fmul f0, f31, f0
/* 80395BCC  FC 02 00 28 */	fsub f0, f2, f0
/* 80395BD0  FC 21 00 32 */	fmul f1, f1, f0
/* 80395BD4  FC 01 00 72 */	fmul f0, f1, f1
/* 80395BD8  FC 23 00 72 */	fmul f1, f3, f1
/* 80395BDC  FC 1F 00 32 */	fmul f0, f31, f0
/* 80395BE0  FC 02 00 28 */	fsub f0, f2, f0
/* 80395BE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80395BE8  FC 1F 00 32 */	fmul f0, f31, f0
/* 80395BEC  FC 00 00 18 */	frsp f0, f0
/* 80395BF0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80395BF4  C3 E1 00 08 */	lfs f31, 8(r1)
lbl_80395BF8:
/* 80395BF8  3C 60 80 64 */	lis r3, lit_299@ha /* 0x80641C4C@ha */
/* 80395BFC  C0 03 1C 4C */	lfs f0, lit_299@l(r3)  /* 0x80641C4C@l */
/* 80395C00  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80395C04  4C 40 13 82 */	cror 2, 0, 2
/* 80395C08  40 82 00 28 */	bne lbl_80395C30
/* 80395C0C  3C 60 80 64 */	lis r3, data_80641C34@ha /* 0x80641C34@ha */
/* 80395C10  C0 03 1C 34 */	lfs f0, data_80641C34@l(r3)  /* 0x80641C34@l */
/* 80395C14  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80395C18  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80395C1C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80395C20  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80395C24  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80395C28  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80395C2C  48 00 01 88 */	b lbl_80395DB4
lbl_80395C30:
/* 80395C30  FC 20 E8 90 */	fmr f1, f29
/* 80395C34  FC 40 F0 90 */	fmr f2, f30
/* 80395C38  48 07 63 C9 */	bl atans_table
/* 80395C3C  3C 80 80 64 */	lis r4, lit_300@ha /* 0x80641C50@ha */
/* 80395C40  7C 7E 1B 78 */	mr r30, r3
/* 80395C44  C0 04 1C 50 */	lfs f0, lit_300@l(r4)  /* 0x80641C50@l */
/* 80395C48  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80395C4C  40 81 00 2C */	ble lbl_80395C78
/* 80395C50  48 02 4E 4D */	bl cos_s
/* 80395C54  3C 80 80 64 */	lis r4, lit_300@ha /* 0x80641C50@ha */
/* 80395C58  7F C3 F3 78 */	mr r3, r30
/* 80395C5C  C0 04 1C 50 */	lfs f0, lit_300@l(r4)  /* 0x80641C50@l */
/* 80395C60  EF A0 00 72 */	fmuls f29, f0, f1
/* 80395C64  48 02 4E 8D */	bl sin_s
/* 80395C68  3C 60 80 64 */	lis r3, lit_300@ha /* 0x80641C50@ha */
/* 80395C6C  C0 03 1C 50 */	lfs f0, lit_300@l(r3)  /* 0x80641C50@l */
/* 80395C70  FF E0 00 90 */	fmr f31, f0
/* 80395C74  EF C0 00 72 */	fmuls f30, f0, f1
lbl_80395C78:
/* 80395C78  3C A0 80 64 */	lis r5, lit_299@ha /* 0x80641C4C@ha */
/* 80395C7C  3C 80 80 64 */	lis r4, lit_300@ha /* 0x80641C50@ha */
/* 80395C80  3C 60 80 64 */	lis r3, lit_301@ha /* 0x80641C54@ha */
/* 80395C84  FC 20 E8 90 */	fmr f1, f29
/* 80395C88  38 C5 1C 4C */	addi r6, r5, lit_299@l /* 0x80641C4C@l */
/* 80395C8C  38 A4 1C 50 */	addi r5, r4, lit_300@l /* 0x80641C50@l */
/* 80395C90  38 83 1C 54 */	addi r4, r3, lit_301@l /* 0x80641C54@l */
/* 80395C94  B3 DF 00 0C */	sth r30, 0xc(r31)
/* 80395C98  C0 46 00 00 */	lfs f2, 0(r6)
/* 80395C9C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80395CA0  38 60 00 00 */	li r3, 0
/* 80395CA4  C0 84 00 00 */	lfs f4, 0(r4)
/* 80395CA8  48 02 58 C1 */	bl check_percent_abs
/* 80395CAC  3C A0 80 64 */	lis r5, lit_299@ha /* 0x80641C4C@ha */
/* 80395CB0  3C 80 80 64 */	lis r4, lit_300@ha /* 0x80641C50@ha */
/* 80395CB4  3C 60 80 64 */	lis r3, lit_301@ha /* 0x80641C54@ha */
/* 80395CB8  D0 3F 00 00 */	stfs f1, 0(r31)
/* 80395CBC  38 C5 1C 4C */	addi r6, r5, lit_299@l /* 0x80641C4C@l */
/* 80395CC0  38 A4 1C 50 */	addi r5, r4, lit_300@l /* 0x80641C50@l */
/* 80395CC4  38 83 1C 54 */	addi r4, r3, lit_301@l /* 0x80641C54@l */
/* 80395CC8  FC 20 F0 90 */	fmr f1, f30
/* 80395CCC  C0 46 00 00 */	lfs f2, 0(r6)
/* 80395CD0  38 60 00 00 */	li r3, 0
/* 80395CD4  C0 65 00 00 */	lfs f3, 0(r5)
/* 80395CD8  C0 84 00 00 */	lfs f4, 0(r4)
/* 80395CDC  48 02 58 8D */	bl check_percent_abs
/* 80395CE0  3C A0 80 64 */	lis r5, lit_299@ha /* 0x80641C4C@ha */
/* 80395CE4  3C 80 80 64 */	lis r4, lit_300@ha /* 0x80641C50@ha */
/* 80395CE8  3C 60 80 64 */	lis r3, lit_301@ha /* 0x80641C54@ha */
/* 80395CEC  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80395CF0  38 C5 1C 4C */	addi r6, r5, lit_299@l /* 0x80641C4C@l */
/* 80395CF4  38 A4 1C 50 */	addi r5, r4, lit_300@l /* 0x80641C50@l */
/* 80395CF8  38 83 1C 54 */	addi r4, r3, lit_301@l /* 0x80641C54@l */
/* 80395CFC  FC 20 F8 90 */	fmr f1, f31
/* 80395D00  C0 46 00 00 */	lfs f2, 0(r6)
/* 80395D04  38 60 00 00 */	li r3, 0
/* 80395D08  C0 65 00 00 */	lfs f3, 0(r5)
/* 80395D0C  C0 84 00 00 */	lfs f4, 0(r4)
/* 80395D10  48 02 58 59 */	bl check_percent_abs
/* 80395D14  3C A0 80 64 */	lis r5, lit_299@ha /* 0x80641C4C@ha */
/* 80395D18  3C 80 80 64 */	lis r4, lit_300@ha /* 0x80641C50@ha */
/* 80395D1C  3C 60 80 64 */	lis r3, lit_302@ha /* 0x80641C58@ha */
/* 80395D20  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80395D24  38 C5 1C 4C */	addi r6, r5, lit_299@l /* 0x80641C4C@l */
/* 80395D28  38 A4 1C 50 */	addi r5, r4, lit_300@l /* 0x80641C50@l */
/* 80395D2C  38 83 1C 58 */	addi r4, r3, lit_302@l /* 0x80641C58@l */
/* 80395D30  FC 20 E8 90 */	fmr f1, f29
/* 80395D34  C0 46 00 00 */	lfs f2, 0(r6)
/* 80395D38  38 60 00 01 */	li r3, 1
/* 80395D3C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80395D40  C0 84 00 00 */	lfs f4, 0(r4)
/* 80395D44  48 02 58 25 */	bl check_percent_abs
/* 80395D48  3C A0 80 64 */	lis r5, lit_299@ha /* 0x80641C4C@ha */
/* 80395D4C  3C 80 80 64 */	lis r4, lit_300@ha /* 0x80641C50@ha */
/* 80395D50  3C 60 80 64 */	lis r3, lit_302@ha /* 0x80641C58@ha */
/* 80395D54  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80395D58  38 C5 1C 4C */	addi r6, r5, lit_299@l /* 0x80641C4C@l */
/* 80395D5C  38 A4 1C 50 */	addi r5, r4, lit_300@l /* 0x80641C50@l */
/* 80395D60  38 83 1C 58 */	addi r4, r3, lit_302@l /* 0x80641C58@l */
/* 80395D64  FC 20 F0 90 */	fmr f1, f30
/* 80395D68  C0 46 00 00 */	lfs f2, 0(r6)
/* 80395D6C  38 60 00 01 */	li r3, 1
/* 80395D70  C0 65 00 00 */	lfs f3, 0(r5)
/* 80395D74  C0 84 00 00 */	lfs f4, 0(r4)
/* 80395D78  48 02 57 F1 */	bl check_percent_abs
/* 80395D7C  3C A0 80 64 */	lis r5, lit_299@ha /* 0x80641C4C@ha */
/* 80395D80  3C 80 80 64 */	lis r4, lit_300@ha /* 0x80641C50@ha */
/* 80395D84  3C 60 80 64 */	lis r3, lit_302@ha /* 0x80641C58@ha */
/* 80395D88  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 80395D8C  38 C5 1C 4C */	addi r6, r5, lit_299@l /* 0x80641C4C@l */
/* 80395D90  38 A4 1C 50 */	addi r5, r4, lit_300@l /* 0x80641C50@l */
/* 80395D94  38 83 1C 58 */	addi r4, r3, lit_302@l /* 0x80641C58@l */
/* 80395D98  FC 20 F8 90 */	fmr f1, f31
/* 80395D9C  C0 46 00 00 */	lfs f2, 0(r6)
/* 80395DA0  38 60 00 01 */	li r3, 1
/* 80395DA4  C0 65 00 00 */	lfs f3, 0(r5)
/* 80395DA8  C0 84 00 00 */	lfs f4, 0(r4)
/* 80395DAC  48 02 57 BD */	bl check_percent_abs
/* 80395DB0  D0 3F 00 28 */	stfs f1, 0x28(r31)
lbl_80395DB4:
/* 80395DB4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80395DB8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80395DBC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80395DC0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80395DC4  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 80395DC8  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80395DCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80395DD0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80395DD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80395DD8  7C 08 03 A6 */	mtlr r0
/* 80395DDC  38 21 00 50 */	addi r1, r1, 0x50
/* 80395DE0  4E 80 00 20 */	blr 
