lbl_8044C558:
/* 8044C558  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8044C55C  7C 08 02 A6 */	mflr r0
/* 8044C560  90 01 00 64 */	stw r0, 0x64(r1)
/* 8044C564  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8044C568  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8044C56C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8044C570  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8044C574  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8044C578  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8044C57C  3C A0 80 64 */	lis r5, lit_1680@ha /* 0x8064435C@ha */
/* 8044C580  7C 7E 1B 78 */	mr r30, r3
/* 8044C584  38 E5 43 5C */	addi r7, r5, lit_1680@l /* 0x8064435C@l */
/* 8044C588  3C C0 80 64 */	lis r6, lit_469@ha /* 0x8064424C@ha */
/* 8044C58C  C8 C7 00 00 */	lfd f6, 0(r7)
/* 8044C590  38 E6 42 4C */	addi r7, r6, lit_469@l /* 0x8064424C@l */
/* 8044C594  3C A0 80 64 */	lis r5, lit_470@ha /* 0x80644254@ha */
/* 8044C598  C8 A7 00 00 */	lfd f5, 0(r7)
/* 8044C59C  FC 20 30 34 */	frsqrte f1, f6
/* 8044C5A0  38 C5 42 54 */	addi r6, r5, lit_470@l /* 0x80644254@l */
/* 8044C5A4  3C A0 80 64 */	lis r5, lit_568@ha /* 0x80644284@ha */
/* 8044C5A8  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044C5AC  38 E5 42 84 */	addi r7, r5, lit_568@l /* 0x80644284@l */
/* 8044C5B0  C0 FE 05 E8 */	lfs f7, 0x5e8(r30)
/* 8044C5B4  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C5B8  C1 07 00 00 */	lfs f8, 0(r7)
/* 8044C5BC  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8044C5C0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044C5C4  39 05 42 98 */	addi r8, r5, lit_588@l /* 0x80644298@l */
/* 8044C5C8  FC 65 00 72 */	fmul f3, f5, f1
/* 8044C5CC  FC 06 00 32 */	fmul f0, f6, f0
/* 8044C5D0  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044C5D4  C1 28 00 00 */	lfs f9, 0(r8)
/* 8044C5D8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044C5DC  EC E8 01 F2 */	fmuls f7, f8, f7
/* 8044C5E0  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044C5E4  FC 24 00 28 */	fsub f1, f4, f0
/* 8044C5E8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044C5EC  7C 9F 23 78 */	mr r31, r4
/* 8044C5F0  FD 03 00 72 */	fmul f8, f3, f1
/* 8044C5F4  EC 69 01 F2 */	fmuls f3, f9, f7
/* 8044C5F8  FC 28 02 32 */	fmul f1, f8, f8
/* 8044C5FC  FC E0 18 1E */	fctiwz f7, f3
/* 8044C600  FC 65 02 32 */	fmul f3, f5, f8
/* 8044C604  FC 26 00 72 */	fmul f1, f6, f1
/* 8044C608  D8 E1 00 20 */	stfd f7, 0x20(r1)
/* 8044C60C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044C610  FC 24 08 28 */	fsub f1, f4, f1
/* 8044C614  B0 1E 06 32 */	sth r0, 0x632(r30)
/* 8044C618  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044C61C  FC 63 00 72 */	fmul f3, f3, f1
/* 8044C620  38 03 07 1C */	addi r0, r3, 0x71c
/* 8044C624  B0 1E 06 36 */	sth r0, 0x636(r30)
/* 8044C628  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044C62C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044C630  FC 26 00 72 */	fmul f1, f6, f1
/* 8044C634  FC 24 08 28 */	fsub f1, f4, f1
/* 8044C638  FC 23 00 72 */	fmul f1, f3, f1
/* 8044C63C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044C640  FC 20 08 18 */	frsp f1, f1
/* 8044C644  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8044C648  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8044C64C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044C650  EF E2 08 28 */	fsubs f31, f2, f1
/* 8044C654  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8044C658  40 81 00 54 */	ble lbl_8044C6AC
/* 8044C65C  FC 20 F8 34 */	frsqrte f1, f31
/* 8044C660  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C664  FC 25 00 72 */	fmul f1, f5, f1
/* 8044C668  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044C66C  FC 04 00 28 */	fsub f0, f4, f0
/* 8044C670  FC 21 00 32 */	fmul f1, f1, f0
/* 8044C674  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C678  FC 25 00 72 */	fmul f1, f5, f1
/* 8044C67C  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044C680  FC 04 00 28 */	fsub f0, f4, f0
/* 8044C684  FC 21 00 32 */	fmul f1, f1, f0
/* 8044C688  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C68C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044C690  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044C694  FC 04 00 28 */	fsub f0, f4, f0
/* 8044C698  FC 01 00 32 */	fmul f0, f1, f0
/* 8044C69C  FC 1F 00 32 */	fmul f0, f31, f0
/* 8044C6A0  FC 00 00 18 */	frsp f0, f0
/* 8044C6A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8044C6A8  C3 E1 00 14 */	lfs f31, 0x14(r1)
lbl_8044C6AC:
/* 8044C6AC  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8044C6B0  4B F6 E3 ED */	bl cos_s
/* 8044C6B4  FF C0 08 90 */	fmr f30, f1
/* 8044C6B8  A8 7E 06 36 */	lha r3, 0x636(r30)
/* 8044C6BC  4B F6 E4 35 */	bl sin_s
/* 8044C6C0  A8 BE 06 32 */	lha r5, 0x632(r30)
/* 8044C6C4  3C 00 43 30 */	lis r0, 0x4330
/* 8044C6C8  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044C6CC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8044C6D0  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8044C6D4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044C6D8  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8044C6DC  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 8044C6E0  C8 46 00 00 */	lfd f2, 0(r6)
/* 8044C6E4  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044C6E8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8044C6EC  38 7E 06 0E */	addi r3, r30, 0x60e
/* 8044C6F0  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8044C6F4  38 A0 02 AA */	li r5, 0x2aa
/* 8044C6F8  EC 40 10 28 */	fsubs f2, f0, f2
/* 8044C6FC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044C700  38 C0 00 2D */	li r6, 0x2d
/* 8044C704  EC 42 00 72 */	fmuls f2, f2, f1
/* 8044C708  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8044C70C  EC 02 07 B2 */	fmuls f0, f2, f30
/* 8044C710  FC 00 00 1E */	fctiwz f0, f0
/* 8044C714  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044C718  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8044C71C  7C 00 22 14 */	add r0, r0, r4
/* 8044C720  7C 04 07 34 */	extsh r4, r0
/* 8044C724  4B F6 EB ED */	bl add_calc_short_angle2
/* 8044C728  3C 80 80 64 */	lis r4, lit_1066@ha /* 0x806442FC@ha */
/* 8044C72C  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8044C730  38 C4 42 FC */	addi r6, r4, lit_1066@l /* 0x806442FC@l */
/* 8044C734  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8044C738  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8044C73C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044C740  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8044C744  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 8044C748  FC 60 30 34 */	frsqrte f3, f6
/* 8044C74C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044C750  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8044C754  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044C758  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044C75C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044C760  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044C764  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8044C768  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044C76C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044C770  FC 24 08 28 */	fsub f1, f4, f1
/* 8044C774  FC 63 00 72 */	fmul f3, f3, f1
/* 8044C778  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044C77C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044C780  FC 26 00 72 */	fmul f1, f6, f1
/* 8044C784  FC 24 08 28 */	fsub f1, f4, f1
/* 8044C788  FC 63 00 72 */	fmul f3, f3, f1
/* 8044C78C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044C790  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044C794  FC 26 00 72 */	fmul f1, f6, f1
/* 8044C798  FC 24 08 28 */	fsub f1, f4, f1
/* 8044C79C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044C7A0  FC 26 00 72 */	fmul f1, f6, f1
/* 8044C7A4  FC 20 08 18 */	frsp f1, f1
/* 8044C7A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8044C7AC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8044C7B0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044C7B4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044C7B8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044C7BC  40 81 00 54 */	ble lbl_8044C810
/* 8044C7C0  FC 20 10 34 */	frsqrte f1, f2
/* 8044C7C4  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C7C8  FC 25 00 72 */	fmul f1, f5, f1
/* 8044C7CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8044C7D0  FC 04 00 28 */	fsub f0, f4, f0
/* 8044C7D4  FC 21 00 32 */	fmul f1, f1, f0
/* 8044C7D8  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C7DC  FC 25 00 72 */	fmul f1, f5, f1
/* 8044C7E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8044C7E4  FC 04 00 28 */	fsub f0, f4, f0
/* 8044C7E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8044C7EC  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C7F0  FC 25 00 72 */	fmul f1, f5, f1
/* 8044C7F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8044C7F8  FC 04 00 28 */	fsub f0, f4, f0
/* 8044C7FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8044C800  FC 02 00 32 */	fmul f0, f2, f0
/* 8044C804  FC 00 00 18 */	frsp f0, f0
/* 8044C808  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8044C80C  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_8044C810:
/* 8044C810  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044C814  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8044C818  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044C81C  38 7E 06 1C */	addi r3, r30, 0x61c
/* 8044C820  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044C824  38 A0 01 C7 */	li r5, 0x1c7
/* 8044C828  38 C0 00 2D */	li r6, 0x2d
/* 8044C82C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044C830  4B F6 EA E1 */	bl add_calc_short_angle2
/* 8044C834  A8 7E 06 2E */	lha r3, 0x62e(r30)
/* 8044C838  54 60 06 FD */	rlwinm. r0, r3, 0, 0x1b, 0x1e
/* 8044C83C  41 82 00 14 */	beq lbl_8044C850
/* 8044C840  7F C3 F3 78 */	mr r3, r30
/* 8044C844  7F E4 FB 78 */	mr r4, r31
/* 8044C848  48 00 02 4D */	bl mfish_dojou_turn_init
/* 8044C84C  48 00 02 20 */	b lbl_8044CA6C
lbl_8044C850:
/* 8044C850  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8044C854  41 82 00 A0 */	beq lbl_8044C8F4
/* 8044C858  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8044C85C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044C860  38 C3 42 4C */	addi r6, r3, lit_469@l /* 0x8064424C@l */
/* 8044C864  7F C3 F3 78 */	mr r3, r30
/* 8044C868  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044C86C  38 A4 42 54 */	addi r5, r4, lit_470@l /* 0x80644254@l */
/* 8044C870  C8 66 00 00 */	lfd f3, 0(r6)
/* 8044C874  7F E4 FB 78 */	mr r4, r31
/* 8044C878  FC 20 20 34 */	frsqrte f1, f4
/* 8044C87C  C8 45 00 00 */	lfd f2, 0(r5)
/* 8044C880  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C884  FC 23 00 72 */	fmul f1, f3, f1
/* 8044C888  FC 04 00 32 */	fmul f0, f4, f0
/* 8044C88C  FC 02 00 28 */	fsub f0, f2, f0
/* 8044C890  FC 21 00 32 */	fmul f1, f1, f0
/* 8044C894  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C898  FC 23 00 72 */	fmul f1, f3, f1
/* 8044C89C  FC 04 00 32 */	fmul f0, f4, f0
/* 8044C8A0  FC 02 00 28 */	fsub f0, f2, f0
/* 8044C8A4  FC 21 00 32 */	fmul f1, f1, f0
/* 8044C8A8  FC 01 00 72 */	fmul f0, f1, f1
/* 8044C8AC  FC 23 00 72 */	fmul f1, f3, f1
/* 8044C8B0  FC 04 00 32 */	fmul f0, f4, f0
/* 8044C8B4  FC 02 00 28 */	fsub f0, f2, f0
/* 8044C8B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8044C8BC  FC 04 00 32 */	fmul f0, f4, f0
/* 8044C8C0  FC 00 00 18 */	frsp f0, f0
/* 8044C8C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8044C8C8  C3 C1 00 08 */	lfs f30, 8(r1)
/* 8044C8CC  4B FE B7 D9 */	bl mfish_get_escape_angle
/* 8044C8D0  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80644260@ha */
/* 8044C8D4  7C 64 1B 78 */	mr r4, r3
/* 8044C8D8  C0 05 42 60 */	lfs f0, lit_472@l(r5)  /* 0x80644260@l */
/* 8044C8DC  38 7E 06 14 */	addi r3, r30, 0x614
/* 8044C8E0  38 A0 0A AA */	li r5, 0xaaa
/* 8044C8E4  38 C0 00 5B */	li r6, 0x5b
/* 8044C8E8  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8044C8EC  4B F6 EA 25 */	bl add_calc_short_angle2
/* 8044C8F0  48 00 01 7C */	b lbl_8044CA6C
lbl_8044C8F4:
/* 8044C8F4  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044C8F8  2C 00 00 00 */	cmpwi r0, 0
/* 8044C8FC  40 80 01 70 */	bge lbl_8044CA6C
/* 8044C900  4B C1 03 F5 */	bl fqrand
/* 8044C904  FF E0 08 90 */	fmr f31, f1
/* 8044C908  4B C1 03 ED */	bl fqrand
/* 8044C90C  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8044C910  3C 00 43 30 */	lis r0, 0x4330
/* 8044C914  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044C918  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044C91C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044C920  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8044C924  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8044C928  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8044C92C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8044C930  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044C934  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044C938  FC 00 00 1E */	fctiwz f0, f0
/* 8044C93C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044C940  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8044C944  7C 00 1A 14 */	add r0, r0, r3
/* 8044C948  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8044C94C  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044C950  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8044C954  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8044C958  4B FE 4C 91 */	bl func_804315E8
/* 8044C95C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044C960  EC 00 08 2A */	fadds f0, f0, f1
/* 8044C964  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 8044C968  4B C1 03 8D */	bl fqrand
/* 8044C96C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8044C970  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 8044C974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044C978  40 80 00 44 */	bge lbl_8044C9BC
/* 8044C97C  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 8044C980  3C 80 80 64 */	lis r4, lit_4775@ha /* 0x806443FC@ha */
/* 8044C984  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 8044C988  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8044C98C  C0 24 43 FC */	lfs f1, lit_4775@l(r4)  /* 0x806443FC@l */
/* 8044C990  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8044C994  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8044C998  A8 7E 06 14 */	lha r3, 0x614(r30)
/* 8044C99C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044C9A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044C9A4  FC 00 00 1E */	fctiwz f0, f0
/* 8044C9A8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044C9AC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8044C9B0  7C 03 02 14 */	add r0, r3, r0
/* 8044C9B4  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044C9B8  48 00 00 40 */	b lbl_8044C9F8
lbl_8044C9BC:
/* 8044C9BC  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 8044C9C0  3C 80 80 64 */	lis r4, lit_4775@ha /* 0x806443FC@ha */
/* 8044C9C4  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 8044C9C8  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8044C9CC  C0 24 43 FC */	lfs f1, lit_4775@l(r4)  /* 0x806443FC@l */
/* 8044C9D0  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8044C9D4  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8044C9D8  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8044C9DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044C9E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044C9E4  FC 00 00 1E */	fctiwz f0, f0
/* 8044C9E8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8044C9EC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8044C9F0  7C 03 00 50 */	subf r0, r3, r0
/* 8044C9F4  B0 1E 06 14 */	sth r0, 0x614(r30)
lbl_8044C9F8:
/* 8044C9F8  A8 7E 06 12 */	lha r3, 0x612(r30)
/* 8044C9FC  7C 60 07 35 */	extsh. r0, r3
/* 8044CA00  7C 03 00 D0 */	neg r0, r3
/* 8044CA04  41 80 00 08 */	blt lbl_8044CA0C
/* 8044CA08  7C 60 1B 78 */	mr r0, r3
lbl_8044CA0C:
/* 8044CA0C  2C 00 23 8E */	cmpwi r0, 0x238e
/* 8044CA10  40 81 00 5C */	ble lbl_8044CA6C
/* 8044CA14  4B C1 03 19 */	bl fqrand2
/* 8044CA18  A8 7E 00 30 */	lha r3, 0x30(r30)
/* 8044CA1C  3C 00 43 30 */	lis r0, 0x4330
/* 8044CA20  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 8044CA24  90 01 00 28 */	stw r0, 0x28(r1)
/* 8044CA28  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8044CA2C  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 8044CA30  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8044CA34  3C C0 80 64 */	lis r6, data_80644244@ha /* 0x80644244@ha */
/* 8044CA38  C0 03 43 14 */	lfs f0, lit_1071@l(r3)  /* 0x80644314@l */
/* 8044CA3C  C8 65 42 8C */	lfd f3, lit_570@l(r5)  /* 0x8064428C@l */
/* 8044CA40  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 8044CA44  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8044CA48  EC 42 18 28 */	fsubs f2, f2, f3
/* 8044CA4C  C0 66 42 44 */	lfs f3, data_80644244@l(r6)  /* 0x80644244@l */
/* 8044CA50  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8044CA54  EC 02 00 32 */	fmuls f0, f2, f0
/* 8044CA58  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044CA5C  FC 00 00 1E */	fctiwz f0, f0
/* 8044CA60  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8044CA64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044CA68  B0 1E 06 12 */	sth r0, 0x612(r30)
lbl_8044CA6C:
/* 8044CA6C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8044CA70  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8044CA74  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8044CA78  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8044CA7C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8044CA80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8044CA84  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8044CA88  7C 08 03 A6 */	mtlr r0
/* 8044CA8C  38 21 00 60 */	addi r1, r1, 0x60
/* 8044CA90  4E 80 00 20 */	blr 
