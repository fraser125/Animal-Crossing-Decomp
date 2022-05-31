lbl_8042C7C8:
/* 8042C7C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8042C7CC  7C 08 02 A6 */	mflr r0
/* 8042C7D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8042C7D4  39 61 00 40 */	addi r11, r1, 0x40
/* 8042C7D8  4B C6 E6 FD */	bl func_8009AED4
/* 8042C7DC  7C 7F 1B 78 */	mr r31, r3
/* 8042C7E0  7C 9D 23 78 */	mr r29, r4
/* 8042C7E4  A8 03 00 10 */	lha r0, 0x10(r3)
/* 8042C7E8  7C BE 2B 78 */	mr r30, r5
/* 8042C7EC  2C 00 00 00 */	cmpwi r0, 0
/* 8042C7F0  40 82 02 F0 */	bne lbl_8042CAE0
/* 8042C7F4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8042C7F8  2C 00 00 01 */	cmpwi r0, 1
/* 8042C7FC  41 82 00 88 */	beq lbl_8042C884
/* 8042C800  40 80 02 68 */	bge lbl_8042CA68
/* 8042C804  2C 00 00 00 */	cmpwi r0, 0
/* 8042C808  40 80 00 08 */	bge lbl_8042C810
/* 8042C80C  48 00 02 5C */	b lbl_8042CA68
lbl_8042C810:
/* 8042C810  3C 60 80 64 */	lis r3, lit_658@ha /* 0x806440B4@ha */
/* 8042C814  3C 00 43 30 */	lis r0, 0x4330
/* 8042C818  38 A3 40 B4 */	addi r5, r3, lit_658@l /* 0x806440B4@l */
/* 8042C81C  3C C0 80 64 */	lis r6, lit_659@ha /* 0x806440B8@ha */
/* 8042C820  C0 05 00 00 */	lfs f0, 0(r5)
/* 8042C824  3C A0 80 64 */	lis r5, lit_584@ha /* 0x806440B0@ha */
/* 8042C828  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8042C82C  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8042C830  3C 60 80 64 */	lis r3, lit_669@ha /* 0x806440DC@ha */
/* 8042C834  90 01 00 08 */	stw r0, 8(r1)
/* 8042C838  EC 01 00 28 */	fsubs f0, f1, f0
/* 8042C83C  C8 23 40 DC */	lfd f1, lit_669@l(r3)  /* 0x806440DC@l */
/* 8042C840  C0 45 40 B0 */	lfs f2, lit_584@l(r5)  /* 0x806440B0@l */
/* 8042C844  C0 66 40 B8 */	lfs f3, lit_659@l(r6)  /* 0x806440B8@l */
/* 8042C848  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042C84C  80 64 61 38 */	lwz r3, debug_mode@l(r4)  /* 0x81166138@l */
/* 8042C850  C0 9F 00 0C */	lfs f4, 0xc(r31)
/* 8042C854  A8 03 08 FA */	lha r0, 0x8fa(r3)
/* 8042C858  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042C85C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042C860  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042C864  EC 00 08 28 */	fsubs f0, f0, f1
/* 8042C868  EC 02 00 32 */	fmuls f0, f2, f0
/* 8042C86C  EC 03 00 2A */	fadds f0, f3, f0
/* 8042C870  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8042C874  40 80 04 14 */	bge lbl_8042CC88
/* 8042C878  38 00 00 01 */	li r0, 1
/* 8042C87C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8042C880  48 00 04 08 */	b lbl_8042CC88
lbl_8042C884:
/* 8042C884  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8042C888  3C E0 43 30 */	lis r7, 0x4330
/* 8042C88C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8042C890  3C 60 80 64 */	lis r3, lit_669@ha /* 0x806440DC@ha */
/* 8042C894  81 24 00 00 */	lwz r9, 0(r4)
/* 8042C898  38 C3 40 DC */	addi r6, r3, lit_669@l /* 0x806440DC@l */
/* 8042C89C  3C 80 80 64 */	lis r4, lit_584@ha /* 0x806440B0@ha */
/* 8042C8A0  3C A0 80 64 */	lis r5, lit_659@ha /* 0x806440B8@ha */
/* 8042C8A4  A8 69 08 FA */	lha r3, 0x8fa(r9)
/* 8042C8A8  39 04 40 B0 */	addi r8, r4, lit_584@l /* 0x806440B0@l */
/* 8042C8AC  A8 09 08 FC */	lha r0, 0x8fc(r9)
/* 8042C8B0  39 25 40 B8 */	addi r9, r5, lit_659@l /* 0x806440B8@l */
/* 8042C8B4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8042C8B8  3C 80 80 64 */	lis r4, lit_660@ha /* 0x806440BC@ha */
/* 8042C8BC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8042C8C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042C8C4  39 44 40 BC */	addi r10, r4, lit_660@l /* 0x806440BC@l */
/* 8042C8C8  3C A0 80 64 */	lis r5, lit_661@ha /* 0x806440C0@ha */
/* 8042C8CC  90 E1 00 08 */	stw r7, 8(r1)
/* 8042C8D0  3C 80 80 64 */	lis r4, lit_476@ha /* 0x806440A4@ha */
/* 8042C8D4  C8 46 00 00 */	lfd f2, 0(r6)
/* 8042C8D8  3C 60 80 64 */	lis r3, lit_658@ha /* 0x806440B4@ha */
/* 8042C8DC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042C8E0  38 C5 40 C0 */	addi r6, r5, lit_661@l /* 0x806440C0@l */
/* 8042C8E4  C0 88 00 00 */	lfs f4, 0(r8)
/* 8042C8E8  38 A4 40 A4 */	addi r5, r4, lit_476@l /* 0x806440A4@l */
/* 8042C8EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042C8F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C8F4  38 83 40 B4 */	addi r4, r3, lit_658@l /* 0x806440B4@l */
/* 8042C8F8  C0 69 00 00 */	lfs f3, 0(r9)
/* 8042C8FC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8042C900  38 7F 00 0C */	addi r3, r31, 0xc
/* 8042C904  EC 24 00 32 */	fmuls f1, f4, f0
/* 8042C908  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8042C90C  C0 AA 00 00 */	lfs f5, 0(r10)
/* 8042C910  EC 00 10 28 */	fsubs f0, f0, f2
/* 8042C914  C0 46 00 00 */	lfs f2, 0(r6)
/* 8042C918  EC 23 08 2A */	fadds f1, f3, f1
/* 8042C91C  C0 65 00 00 */	lfs f3, 0(r5)
/* 8042C920  EC 04 00 32 */	fmuls f0, f4, f0
/* 8042C924  C0 84 00 00 */	lfs f4, 0(r4)
/* 8042C928  EC 25 08 2A */	fadds f1, f5, f1
/* 8042C92C  EC 21 00 2A */	fadds f1, f1, f0
/* 8042C930  4B F8 E8 81 */	bl add_calc
/* 8042C934  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8042C938  3C 80 43 30 */	lis r4, 0x4330
/* 8042C93C  38 A3 61 38 */	addi r5, r3, debug_mode@l /* 0x81166138@l */
/* 8042C940  3C C0 80 64 */	lis r6, lit_584@ha /* 0x806440B0@ha */
/* 8042C944  81 05 00 00 */	lwz r8, 0(r5)
/* 8042C948  3C 60 80 64 */	lis r3, lit_669@ha /* 0x806440DC@ha */
/* 8042C94C  38 A3 40 DC */	addi r5, r3, lit_669@l /* 0x806440DC@l */
/* 8042C950  3C E0 80 64 */	lis r7, lit_659@ha /* 0x806440B8@ha */
/* 8042C954  A8 68 08 FA */	lha r3, 0x8fa(r8)
/* 8042C958  A8 08 08 FC */	lha r0, 0x8fc(r8)
/* 8042C95C  3D 00 80 64 */	lis r8, lit_660@ha /* 0x806440BC@ha */
/* 8042C960  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8042C964  90 81 00 18 */	stw r4, 0x18(r1)
/* 8042C968  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042C96C  C8 65 00 00 */	lfd f3, 0(r5)
/* 8042C970  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8042C974  3C 60 80 64 */	lis r3, lit_475@ha /* 0x806440A0@ha */
/* 8042C978  C0 86 40 B0 */	lfs f4, lit_584@l(r6)  /* 0x806440B0@l */
/* 8042C97C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8042C980  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042C984  EC 00 18 28 */	fsubs f0, f0, f3
/* 8042C988  C0 47 40 B8 */	lfs f2, lit_659@l(r7)  /* 0x806440B8@l */
/* 8042C98C  90 81 00 20 */	stw r4, 0x20(r1)
/* 8042C990  C0 A8 40 BC */	lfs f5, lit_660@l(r8)  /* 0x806440BC@l */
/* 8042C994  EC 04 00 32 */	fmuls f0, f4, f0
/* 8042C998  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 8042C99C  C0 DF 00 0C */	lfs f6, 0xc(r31)
/* 8042C9A0  EC 21 18 28 */	fsubs f1, f1, f3
/* 8042C9A4  EC 42 00 2A */	fadds f2, f2, f0
/* 8042C9A8  C0 03 40 A0 */	lfs f0, lit_475@l(r3)  /* 0x806440A0@l */
/* 8042C9AC  EC 24 00 72 */	fmuls f1, f4, f1
/* 8042C9B0  EC 45 10 2A */	fadds f2, f5, f2
/* 8042C9B4  EC 22 08 2A */	fadds f1, f2, f1
/* 8042C9B8  EC 26 08 28 */	fsubs f1, f6, f1
/* 8042C9BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042C9C0  4C 41 13 82 */	cror 2, 1, 2
/* 8042C9C4  40 82 00 08 */	bne lbl_8042C9CC
/* 8042C9C8  48 00 00 08 */	b lbl_8042C9D0
lbl_8042C9CC:
/* 8042C9CC  FC 20 08 50 */	fneg f1, f1
lbl_8042C9D0:
/* 8042C9D0  3C 60 80 64 */	lis r3, lit_658@ha /* 0x806440B4@ha */
/* 8042C9D4  C0 03 40 B4 */	lfs f0, lit_658@l(r3)  /* 0x806440B4@l */
/* 8042C9D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042C9DC  40 80 02 AC */	bge lbl_8042CC88
/* 8042C9E0  3C 60 80 64 */	lis r3, lit_477@ha /* 0x806440A8@ha */
/* 8042C9E4  38 00 00 02 */	li r0, 2
/* 8042C9E8  38 83 40 A8 */	addi r4, r3, lit_477@l /* 0x806440A8@l */
/* 8042C9EC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8042C9F0  C0 24 00 00 */	lfs f1, 0(r4)
/* 8042C9F4  3C 60 80 64 */	lis r3, lit_476@ha /* 0x806440A4@ha */
/* 8042C9F8  C0 03 40 A4 */	lfs f0, lit_476@l(r3)  /* 0x806440A4@l */
/* 8042C9FC  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8042CA00  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 8042CA04  3C 60 80 64 */	lis r3, lit_669@ha /* 0x806440DC@ha */
/* 8042CA08  3C 00 43 30 */	lis r0, 0x4330
/* 8042CA0C  3C A0 80 64 */	lis r5, lit_584@ha /* 0x806440B0@ha */
/* 8042CA10  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8042CA14  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 8042CA18  3C C0 80 64 */	lis r6, lit_659@ha /* 0x806440B8@ha */
/* 8042CA1C  3C E0 80 64 */	lis r7, lit_662@ha /* 0x806440C4@ha */
/* 8042CA20  80 84 00 00 */	lwz r4, 0(r4)
/* 8042CA24  90 01 00 20 */	stw r0, 0x20(r1)
/* 8042CA28  38 00 00 31 */	li r0, 0x31
/* 8042CA2C  A8 84 08 FA */	lha r4, 0x8fa(r4)
/* 8042CA30  C8 23 40 DC */	lfd f1, lit_669@l(r3)  /* 0x806440DC@l */
/* 8042CA34  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 8042CA38  C0 45 40 B0 */	lfs f2, lit_584@l(r5)  /* 0x806440B0@l */
/* 8042CA3C  90 61 00 24 */	stw r3, 0x24(r1)
/* 8042CA40  C0 66 40 B8 */	lfs f3, lit_659@l(r6)  /* 0x806440B8@l */
/* 8042CA44  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8042CA48  C0 87 40 C4 */	lfs f4, lit_662@l(r7)  /* 0x806440C4@l */
/* 8042CA4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8042CA50  EC 02 00 32 */	fmuls f0, f2, f0
/* 8042CA54  EC 03 00 2A */	fadds f0, f3, f0
/* 8042CA58  EC 04 00 32 */	fmuls f0, f4, f0
/* 8042CA5C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042CA60  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 8042CA64  48 00 02 24 */	b lbl_8042CC88
lbl_8042CA68:
/* 8042CA68  3C C0 80 64 */	lis r6, lit_475@ha /* 0x806440A0@ha */
/* 8042CA6C  3C A0 80 64 */	lis r5, lit_661@ha /* 0x806440C0@ha */
/* 8042CA70  3C 80 80 64 */	lis r4, lit_476@ha /* 0x806440A4@ha */
/* 8042CA74  3C 60 80 64 */	lis r3, lit_658@ha /* 0x806440B4@ha */
/* 8042CA78  38 E6 40 A0 */	addi r7, r6, lit_475@l /* 0x806440A0@l */
/* 8042CA7C  38 C5 40 C0 */	addi r6, r5, lit_661@l /* 0x806440C0@l */
/* 8042CA80  38 A4 40 A4 */	addi r5, r4, lit_476@l /* 0x806440A4@l */
/* 8042CA84  38 83 40 B4 */	addi r4, r3, lit_658@l /* 0x806440B4@l */
/* 8042CA88  C0 27 00 00 */	lfs f1, 0(r7)
/* 8042CA8C  38 7F 00 0C */	addi r3, r31, 0xc
/* 8042CA90  C0 46 00 00 */	lfs f2, 0(r6)
/* 8042CA94  C0 65 00 00 */	lfs f3, 0(r5)
/* 8042CA98  C0 84 00 00 */	lfs f4, 0(r4)
/* 8042CA9C  4B F8 E7 15 */	bl add_calc
/* 8042CAA0  A8 7F 00 14 */	lha r3, 0x14(r31)
/* 8042CAA4  2C 03 00 01 */	cmpwi r3, 1
/* 8042CAA8  40 81 00 10 */	ble lbl_8042CAB8
/* 8042CAAC  38 03 FF FF */	addi r0, r3, -1
/* 8042CAB0  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 8042CAB4  48 00 01 D4 */	b lbl_8042CC88
lbl_8042CAB8:
/* 8042CAB8  40 82 00 1C */	bne lbl_8042CAD4
/* 8042CABC  7F C3 F3 78 */	mr r3, r30
/* 8042CAC0  7F A4 EB 78 */	mr r4, r29
/* 8042CAC4  4B FF F6 2D */	bl aLS_RequestSwitchOFF
/* 8042CAC8  38 00 00 00 */	li r0, 0
/* 8042CACC  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 8042CAD0  48 00 01 B8 */	b lbl_8042CC88
lbl_8042CAD4:
/* 8042CAD4  38 00 00 00 */	li r0, 0
/* 8042CAD8  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 8042CADC  48 00 01 AC */	b lbl_8042CC88
lbl_8042CAE0:
/* 8042CAE0  A8 9F 00 12 */	lha r4, 0x12(r31)
/* 8042CAE4  2C 04 00 30 */	cmpwi r4, 0x30
/* 8042CAE8  40 80 01 8C */	bge lbl_8042CC74
/* 8042CAEC  38 00 00 1E */	li r0, 0x1e
/* 8042CAF0  7C 64 03 D6 */	divw r3, r4, r0
/* 8042CAF4  7C 03 01 D6 */	mullw r0, r3, r0
/* 8042CAF8  7C 63 07 34 */	extsh r3, r3
/* 8042CAFC  7C 00 20 50 */	subf r0, r0, r4
/* 8042CB00  7C 00 07 35 */	extsh. r0, r0
/* 8042CB04  40 82 00 DC */	bne lbl_8042CBE0
/* 8042CB08  7C 60 07 35 */	extsh. r0, r3
/* 8042CB0C  40 82 00 6C */	bne lbl_8042CB78
/* 8042CB10  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8042CB14  3C 00 43 30 */	lis r0, 0x4330
/* 8042CB18  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8042CB1C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8042CB20  80 A4 00 00 */	lwz r5, 0(r4)
/* 8042CB24  3C 60 80 64 */	lis r3, lit_669@ha /* 0x806440DC@ha */
/* 8042CB28  38 83 40 DC */	addi r4, r3, lit_669@l /* 0x806440DC@l */
/* 8042CB2C  3C C0 80 64 */	lis r6, lit_584@ha /* 0x806440B0@ha */
/* 8042CB30  A8 65 08 F4 */	lha r3, 0x8f4(r5)
/* 8042CB34  38 A6 40 B0 */	addi r5, r6, lit_584@l /* 0x806440B0@l */
/* 8042CB38  3C E0 80 64 */	lis r7, lit_476@ha /* 0x806440A4@ha */
/* 8042CB3C  C8 24 00 00 */	lfd f1, 0(r4)
/* 8042CB40  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8042CB44  C0 45 00 00 */	lfs f2, 0(r5)
/* 8042CB48  90 61 00 24 */	stw r3, 0x24(r1)
/* 8042CB4C  38 C7 40 A4 */	addi r6, r7, lit_476@l /* 0x806440A4@l */
/* 8042CB50  C0 66 00 00 */	lfs f3, 0(r6)
/* 8042CB54  3C E0 80 64 */	lis r7, lit_663@ha /* 0x806440C8@ha */
/* 8042CB58  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8042CB5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8042CB60  C0 27 40 C8 */	lfs f1, lit_663@l(r7)  /* 0x806440C8@l */
/* 8042CB64  EC 02 00 32 */	fmuls f0, f2, f0
/* 8042CB68  EC 03 00 2A */	fadds f0, f3, f0
/* 8042CB6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042CB70  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042CB74  48 00 00 F0 */	b lbl_8042CC64
lbl_8042CB78:
/* 8042CB78  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8042CB7C  3C 00 43 30 */	lis r0, 0x4330
/* 8042CB80  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8042CB84  90 01 00 20 */	stw r0, 0x20(r1)
/* 8042CB88  80 A4 00 00 */	lwz r5, 0(r4)
/* 8042CB8C  3C 60 80 64 */	lis r3, lit_669@ha /* 0x806440DC@ha */
/* 8042CB90  38 83 40 DC */	addi r4, r3, lit_669@l /* 0x806440DC@l */
/* 8042CB94  3C C0 80 64 */	lis r6, lit_584@ha /* 0x806440B0@ha */
/* 8042CB98  A8 65 08 F8 */	lha r3, 0x8f8(r5)
/* 8042CB9C  38 A6 40 B0 */	addi r5, r6, lit_584@l /* 0x806440B0@l */
/* 8042CBA0  3C E0 80 64 */	lis r7, lit_664@ha /* 0x806440CC@ha */
/* 8042CBA4  C8 24 00 00 */	lfd f1, 0(r4)
/* 8042CBA8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8042CBAC  C0 45 00 00 */	lfs f2, 0(r5)
/* 8042CBB0  90 61 00 24 */	stw r3, 0x24(r1)
/* 8042CBB4  38 C7 40 CC */	addi r6, r7, lit_664@l /* 0x806440CC@l */
/* 8042CBB8  C0 66 00 00 */	lfs f3, 0(r6)
/* 8042CBBC  3C E0 80 64 */	lis r7, lit_663@ha /* 0x806440C8@ha */
/* 8042CBC0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8042CBC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8042CBC8  C0 27 40 C8 */	lfs f1, lit_663@l(r7)  /* 0x806440C8@l */
/* 8042CBCC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8042CBD0  EC 03 00 2A */	fadds f0, f3, f0
/* 8042CBD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042CBD8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042CBDC  48 00 00 88 */	b lbl_8042CC64
lbl_8042CBE0:
/* 8042CBE0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8042CBE4  3C A0 80 64 */	lis r5, lit_665@ha /* 0x806440D0@ha */
/* 8042CBE8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8042CBEC  3C 00 43 30 */	lis r0, 0x4330
/* 8042CBF0  80 84 00 00 */	lwz r4, 0(r4)
/* 8042CBF4  39 25 40 D0 */	addi r9, r5, lit_665@l /* 0x806440D0@l */
/* 8042CBF8  3C 60 80 64 */	lis r3, lit_669@ha /* 0x806440DC@ha */
/* 8042CBFC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8042CC00  A8 84 08 F6 */	lha r4, 0x8f6(r4)
/* 8042CC04  38 E3 40 DC */	addi r7, r3, lit_669@l /* 0x806440DC@l */
/* 8042CC08  3C 60 80 64 */	lis r3, lit_658@ha /* 0x806440B4@ha */
/* 8042CC0C  C8 27 00 00 */	lfd f1, 0(r7)
/* 8042CC10  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8042CC14  3C 80 80 64 */	lis r4, lit_475@ha /* 0x806440A0@ha */
/* 8042CC18  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8042CC1C  39 03 40 B4 */	addi r8, r3, lit_658@l /* 0x806440B4@l */
/* 8042CC20  3C 60 80 64 */	lis r3, lit_663@ha /* 0x806440C8@ha */
/* 8042CC24  C0 68 00 00 */	lfs f3, 0(r8)
/* 8042CC28  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8042CC2C  38 A3 40 C8 */	addi r5, r3, lit_663@l /* 0x806440C8@l */
/* 8042CC30  C0 A9 00 00 */	lfs f5, 0(r9)
/* 8042CC34  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806440D4@ha */
/* 8042CC38  EC 40 08 28 */	fsubs f2, f0, f1
/* 8042CC3C  38 C4 40 A0 */	addi r6, r4, lit_475@l /* 0x806440A0@l */
/* 8042CC40  38 83 40 D4 */	addi r4, r3, lit_666@l /* 0x806440D4@l */
/* 8042CC44  C0 05 00 00 */	lfs f0, 0(r5)
/* 8042CC48  C0 26 00 00 */	lfs f1, 0(r6)
/* 8042CC4C  38 7F 00 0C */	addi r3, r31, 0xc
/* 8042CC50  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8042CC54  C0 84 00 00 */	lfs f4, 0(r4)
/* 8042CC58  EC 45 10 2A */	fadds f2, f5, f2
/* 8042CC5C  EC 60 00 B2 */	fmuls f3, f0, f2
/* 8042CC60  4B F8 E5 51 */	bl add_calc
lbl_8042CC64:
/* 8042CC64  A8 7F 00 12 */	lha r3, 0x12(r31)
/* 8042CC68  38 03 00 01 */	addi r0, r3, 1
/* 8042CC6C  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 8042CC70  48 00 00 18 */	b lbl_8042CC88
lbl_8042CC74:
/* 8042CC74  3C 60 80 64 */	lis r3, lit_667@ha /* 0x806440D8@ha */
/* 8042CC78  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8042CC7C  C0 03 40 D8 */	lfs f0, lit_667@l(r3)  /* 0x806440D8@l */
/* 8042CC80  EC 01 00 2A */	fadds f0, f1, f0
/* 8042CC84  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8042CC88:
/* 8042CC88  3C 60 80 64 */	lis r3, lit_475@ha /* 0x806440A0@ha */
/* 8042CC8C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8042CC90  C0 03 40 A0 */	lfs f0, lit_475@l(r3)  /* 0x806440A0@l */
/* 8042CC94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042CC98  40 80 00 0C */	bge lbl_8042CCA4
/* 8042CC9C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042CCA0  48 00 00 18 */	b lbl_8042CCB8
lbl_8042CCA4:
/* 8042CCA4  3C 60 80 64 */	lis r3, lit_482@ha /* 0x806440AC@ha */
/* 8042CCA8  C0 03 40 AC */	lfs f0, lit_482@l(r3)  /* 0x806440AC@l */
/* 8042CCAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042CCB0  40 81 00 08 */	ble lbl_8042CCB8
/* 8042CCB4  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8042CCB8:
/* 8042CCB8  39 61 00 40 */	addi r11, r1, 0x40
/* 8042CCBC  4B C6 E2 65 */	bl func_8009AF20
/* 8042CCC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8042CCC4  7C 08 03 A6 */	mtlr r0
/* 8042CCC8  38 21 00 40 */	addi r1, r1, 0x40
/* 8042CCCC  4E 80 00 20 */	blr 
