lbl_8046DEFC:
/* 8046DEFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8046DF00  7C 08 02 A6 */	mflr r0
/* 8046DF04  90 01 00 44 */	stw r0, 0x44(r1)
/* 8046DF08  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8046DF0C  7C 9F 23 78 */	mr r31, r4
/* 8046DF10  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8046DF14  7C 7E 1B 78 */	mr r30, r3
/* 8046DF18  A8 83 00 6E */	lha r4, 0x6e(r3)
/* 8046DF1C  38 64 FF FF */	addi r3, r4, -1
/* 8046DF20  7C 80 07 35 */	extsh. r0, r4
/* 8046DF24  B0 7E 00 6E */	sth r3, 0x6e(r30)
/* 8046DF28  40 80 00 B0 */	bge lbl_8046DFD8
/* 8046DF2C  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8046DF30  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8046DF34  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8046DF38  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8046DF3C  90 61 00 20 */	stw r3, 0x20(r1)
/* 8046DF40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046DF44  4B BE ED B1 */	bl fqrand
/* 8046DF48  3C 60 80 64 */	lis r3, lit_1148@ha /* 0x80644724@ha */
/* 8046DF4C  3C 80 80 64 */	lis r4, lit_1349@ha /* 0x8064473C@ha */
/* 8046DF50  38 A3 47 24 */	addi r5, r3, lit_1148@l /* 0x80644724@l */
/* 8046DF54  C0 04 47 3C */	lfs f0, lit_1349@l(r4)  /* 0x8064473C@l */
/* 8046DF58  C0 45 00 00 */	lfs f2, 0(r5)
/* 8046DF5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046DF60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8046DF64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046DF68  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046DF6C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8046DF70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046DF74  3C 63 00 02 */	addis r3, r3, 2
/* 8046DF78  81 01 00 20 */	lwz r8, 0x20(r1)
/* 8046DF7C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8046DF80  EC 02 08 2A */	fadds f0, f2, f1
/* 8046DF84  90 81 00 10 */	stw r4, 0x10(r1)
/* 8046DF88  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8046DF8C  7F E7 FB 78 */	mr r7, r31
/* 8046DF90  91 01 00 14 */	stw r8, 0x14(r1)
/* 8046DF94  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8046DF98  FC 00 00 1E */	fctiwz f0, f0
/* 8046DF9C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8046DFA0  38 81 00 10 */	addi r4, r1, 0x10
/* 8046DFA4  38 60 00 54 */	li r3, 0x54
/* 8046DFA8  81 86 00 00 */	lwz r12, 0(r6)
/* 8046DFAC  38 A0 00 02 */	li r5, 2
/* 8046DFB0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8046DFB4  39 20 00 00 */	li r9, 0
/* 8046DFB8  A8 DE 00 6A */	lha r6, 0x6a(r30)
/* 8046DFBC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8046DFC0  60 00 40 00 */	ori r0, r0, 0x4000
/* 8046DFC4  7C 0A 07 34 */	extsh r10, r0
/* 8046DFC8  7D 89 03 A6 */	mtctr r12
/* 8046DFCC  4E 80 04 21 */	bctrl 
/* 8046DFD0  38 00 00 06 */	li r0, 6
/* 8046DFD4  B0 1E 00 6E */	sth r0, 0x6e(r30)
lbl_8046DFD8:
/* 8046DFD8  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8046DFDC  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8046DFE0  38 C3 45 FC */	addi r6, r3, lit_509@l /* 0x806445FC@l */
/* 8046DFE4  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8046DFE8  38 A4 46 04 */	addi r5, r4, lit_510@l /* 0x80644604@l */
/* 8046DFEC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046DFF0  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8046DFF4  FC 60 30 34 */	frsqrte f3, f6
/* 8046DFF8  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046DFFC  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046E000  C8 85 00 00 */	lfd f4, 0(r5)
/* 8046E004  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046E008  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046E00C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046E010  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046E014  FC 26 00 72 */	fmul f1, f6, f1
/* 8046E018  FC 24 08 28 */	fsub f1, f4, f1
/* 8046E01C  FC 63 00 72 */	fmul f3, f3, f1
/* 8046E020  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046E024  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046E028  FC 26 00 72 */	fmul f1, f6, f1
/* 8046E02C  FC 24 08 28 */	fsub f1, f4, f1
/* 8046E030  FC 63 00 72 */	fmul f3, f3, f1
/* 8046E034  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046E038  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046E03C  FC 26 00 72 */	fmul f1, f6, f1
/* 8046E040  FC 24 08 28 */	fsub f1, f4, f1
/* 8046E044  FC 23 00 72 */	fmul f1, f3, f1
/* 8046E048  FC 26 00 72 */	fmul f1, f6, f1
/* 8046E04C  FC 20 08 18 */	frsp f1, f1
/* 8046E050  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8046E054  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8046E058  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046E05C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8046E060  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8046E064  40 81 00 54 */	ble lbl_8046E0B8
/* 8046E068  FC 20 10 34 */	frsqrte f1, f2
/* 8046E06C  FC 01 00 72 */	fmul f0, f1, f1
/* 8046E070  FC 25 00 72 */	fmul f1, f5, f1
/* 8046E074  FC 02 00 32 */	fmul f0, f2, f0
/* 8046E078  FC 04 00 28 */	fsub f0, f4, f0
/* 8046E07C  FC 21 00 32 */	fmul f1, f1, f0
/* 8046E080  FC 01 00 72 */	fmul f0, f1, f1
/* 8046E084  FC 25 00 72 */	fmul f1, f5, f1
/* 8046E088  FC 02 00 32 */	fmul f0, f2, f0
/* 8046E08C  FC 04 00 28 */	fsub f0, f4, f0
/* 8046E090  FC 21 00 32 */	fmul f1, f1, f0
/* 8046E094  FC 01 00 72 */	fmul f0, f1, f1
/* 8046E098  FC 25 00 72 */	fmul f1, f5, f1
/* 8046E09C  FC 02 00 32 */	fmul f0, f2, f0
/* 8046E0A0  FC 04 00 28 */	fsub f0, f4, f0
/* 8046E0A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8046E0A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8046E0AC  FC 00 00 18 */	frsp f0, f0
/* 8046E0B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8046E0B4  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8046E0B8:
/* 8046E0B8  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 8046E0BC  38 7E 00 68 */	addi r3, r30, 0x68
/* 8046E0C0  38 A4 46 0C */	addi r5, r4, lit_511@l /* 0x8064460C@l */
/* 8046E0C4  38 80 40 00 */	li r4, 0x4000
/* 8046E0C8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046E0CC  38 A0 03 8E */	li r5, 0x38e
/* 8046E0D0  38 C0 00 E3 */	li r6, 0xe3
/* 8046E0D4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8046E0D8  4B F4 D2 39 */	bl add_calc_short_angle2
/* 8046E0DC  7C 60 07 35 */	extsh. r0, r3
/* 8046E0E0  40 82 00 44 */	bne lbl_8046E124
/* 8046E0E4  3C 80 80 64 */	lis r4, lit_584@ha /* 0x8064462C@ha */
/* 8046E0E8  3C 60 80 64 */	lis r3, lit_502@ha /* 0x806445D8@ha */
/* 8046E0EC  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8046E0F0  C0 24 46 2C */	lfs f1, lit_584@l(r4)  /* 0x8064462C@l */
/* 8046E0F4  C0 03 45 D8 */	lfs f0, lit_502@l(r3)  /* 0x806445D8@l */
/* 8046E0F8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046E0FC  D0 3E 00 20 */	stfs f1, 0x20(r30)
/* 8046E100  A8 7E 00 76 */	lha r3, 0x76(r30)
/* 8046E104  38 03 08 E3 */	addi r0, r3, 0x8e3
/* 8046E108  B0 1E 00 76 */	sth r0, 0x76(r30)
/* 8046E10C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8046E110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046E114  40 80 00 10 */	bge lbl_8046E124
/* 8046E118  7F C3 F3 78 */	mr r3, r30
/* 8046E11C  7F E4 FB 78 */	mr r4, r31
/* 8046E120  48 00 00 1D */	bl okera_dig_wait_process_init
lbl_8046E124:
/* 8046E124  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8046E128  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8046E12C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8046E130  7C 08 03 A6 */	mtlr r0
/* 8046E134  38 21 00 40 */	addi r1, r1, 0x40
/* 8046E138  4E 80 00 20 */	blr 
