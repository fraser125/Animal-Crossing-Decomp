lbl_8043C438:
/* 8043C438  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8043C43C  7C 08 02 A6 */	mflr r0
/* 8043C440  90 01 00 44 */	stw r0, 0x44(r1)
/* 8043C444  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8043C448  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8043C44C  39 61 00 30 */	addi r11, r1, 0x30
/* 8043C450  4B C5 EA 81 */	bl func_8009AED0
/* 8043C454  3C 80 80 64 */	lis r4, lit_698@ha /* 0x806442B4@ha */
/* 8043C458  C0 43 06 08 */	lfs f2, 0x608(r3)
/* 8043C45C  C0 24 42 B4 */	lfs f1, lit_698@l(r4)  /* 0x806442B4@l */
/* 8043C460  7C 7C 1B 78 */	mr r28, r3
/* 8043C464  38 A0 00 00 */	li r5, 0
/* 8043C468  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8043C46C  41 80 00 28 */	blt lbl_8043C494
/* 8043C470  C0 1C 06 00 */	lfs f0, 0x600(r28)
/* 8043C474  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043C478  41 80 00 1C */	blt lbl_8043C494
/* 8043C47C  C0 1C 06 04 */	lfs f0, 0x604(r28)
/* 8043C480  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043C484  41 80 00 10 */	blt lbl_8043C494
/* 8043C488  C0 1C 05 FC */	lfs f0, 0x5fc(r28)
/* 8043C48C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043C490  40 80 04 9C */	bge lbl_8043C92C
lbl_8043C494:
/* 8043C494  3C 60 80 64 */	lis r3, lit_698@ha /* 0x806442B4@ha */
/* 8043C498  C0 7C 06 00 */	lfs f3, 0x600(r28)
/* 8043C49C  C0 23 42 B4 */	lfs f1, lit_698@l(r3)  /* 0x806442B4@l */
/* 8043C4A0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8043C4A4  40 80 00 0C */	bge lbl_8043C4B0
/* 8043C4A8  38 A0 40 00 */	li r5, 0x4000
/* 8043C4AC  48 00 00 14 */	b lbl_8043C4C0
lbl_8043C4B0:
/* 8043C4B0  C0 1C 05 FC */	lfs f0, 0x5fc(r28)
/* 8043C4B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043C4B8  40 80 00 08 */	bge lbl_8043C4C0
/* 8043C4BC  38 A0 C0 00 */	li r5, -16384
lbl_8043C4C0:
/* 8043C4C0  3C 60 80 64 */	lis r3, lit_698@ha /* 0x806442B4@ha */
/* 8043C4C4  C0 23 42 B4 */	lfs f1, lit_698@l(r3)  /* 0x806442B4@l */
/* 8043C4C8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8043C4CC  40 80 00 24 */	bge lbl_8043C4F0
/* 8043C4D0  7C A0 07 35 */	extsh. r0, r5
/* 8043C4D4  40 82 00 0C */	bne lbl_8043C4E0
/* 8043C4D8  38 A0 00 00 */	li r5, 0
/* 8043C4DC  48 00 00 48 */	b lbl_8043C524
lbl_8043C4E0:
/* 8043C4E0  7C A0 07 34 */	extsh r0, r5
/* 8043C4E4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043C4E8  7C 05 07 34 */	extsh r5, r0
/* 8043C4EC  48 00 00 38 */	b lbl_8043C524
lbl_8043C4F0:
/* 8043C4F0  C0 1C 06 04 */	lfs f0, 0x604(r28)
/* 8043C4F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043C4F8  40 80 00 2C */	bge lbl_8043C524
/* 8043C4FC  7C A0 07 35 */	extsh. r0, r5
/* 8043C500  40 82 00 0C */	bne lbl_8043C50C
/* 8043C504  38 A0 80 00 */	li r5, -32768
/* 8043C508  48 00 00 1C */	b lbl_8043C524
lbl_8043C50C:
/* 8043C50C  7C A0 07 34 */	extsh r0, r5
/* 8043C510  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8043C514  7C 04 0E 70 */	srawi r4, r0, 1
/* 8043C518  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 8043C51C  7C 04 00 50 */	subf r0, r4, r0
/* 8043C520  7C 05 07 34 */	extsh r5, r0
lbl_8043C524:
/* 8043C524  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043C528  C0 3C 05 E8 */	lfs f1, 0x5e8(r28)
/* 8043C52C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043C530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043C534  41 81 00 34 */	bgt lbl_8043C568
/* 8043C538  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8043C53C  C0 23 42 B0 */	lfs f1, lit_697@l(r3)  /* 0x806442B0@l */
/* 8043C540  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8043C544  41 80 00 24 */	blt lbl_8043C568
/* 8043C548  C0 1C 06 04 */	lfs f0, 0x604(r28)
/* 8043C54C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043C550  41 80 00 18 */	blt lbl_8043C568
/* 8043C554  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8043C558  41 80 00 10 */	blt lbl_8043C568
/* 8043C55C  C0 1C 05 FC */	lfs f0, 0x5fc(r28)
/* 8043C560  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043C564  40 80 03 C8 */	bge lbl_8043C92C
lbl_8043C568:
/* 8043C568  3C 60 80 44 */	lis r3, mfish_koi_peck_process@ha /* 0x8043E074@ha */
/* 8043C56C  80 9C 00 34 */	lwz r4, 0x34(r28)
/* 8043C570  38 03 E0 74 */	addi r0, r3, mfish_koi_peck_process@l /* 0x8043E074@l */
/* 8043C574  7C 04 00 40 */	cmplw r4, r0
/* 8043C578  41 82 03 B4 */	beq lbl_8043C92C
/* 8043C57C  A8 1C 06 0E */	lha r0, 0x60e(r28)
/* 8043C580  7C BF 07 34 */	extsh r31, r5
/* 8043C584  7C 1F 00 50 */	subf r0, r31, r0
/* 8043C588  7C 1E 07 35 */	extsh. r30, r0
/* 8043C58C  7C 1E 00 D0 */	neg r0, r30
/* 8043C590  41 80 00 08 */	blt lbl_8043C598
/* 8043C594  7F C0 F3 78 */	mr r0, r30
lbl_8043C598:
/* 8043C598  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8043C59C  40 80 00 30 */	bge lbl_8043C5CC
/* 8043C5A0  57 C0 08 3C */	slwi r0, r30, 1
/* 8043C5A4  7C 03 07 34 */	extsh r3, r0
/* 8043C5A8  4B F7 E4 F5 */	bl cos_s
/* 8043C5AC  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8043C5B0  3C 80 80 64 */	lis r4, lit_2377@ha /* 0x80644384@ha */
/* 8043C5B4  38 A3 42 AC */	addi r5, r3, lit_666@l /* 0x806442AC@l */
/* 8043C5B8  C0 44 43 84 */	lfs f2, lit_2377@l(r4)  /* 0x80644384@l */
/* 8043C5BC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043C5C0  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 8043C5C4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8043C5C8  4B F7 ED 11 */	bl add_calc0
lbl_8043C5CC:
/* 8043C5CC  7F C0 07 35 */	extsh. r0, r30
/* 8043C5D0  7C 1E 00 D0 */	neg r0, r30
/* 8043C5D4  41 80 00 08 */	blt lbl_8043C5DC
/* 8043C5D8  7F C0 F3 78 */	mr r0, r30
lbl_8043C5DC:
/* 8043C5DC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8043C5E0  40 80 03 4C */	bge lbl_8043C92C
/* 8043C5E4  A8 7C 06 22 */	lha r3, 0x622(r28)
/* 8043C5E8  7C 60 07 35 */	extsh. r0, r3
/* 8043C5EC  7C 03 00 D0 */	neg r0, r3
/* 8043C5F0  41 80 00 08 */	blt lbl_8043C5F8
/* 8043C5F4  7C 60 1B 78 */	mr r0, r3
lbl_8043C5F8:
/* 8043C5F8  2C 00 0A AA */	cmpwi r0, 0xaaa
/* 8043C5FC  40 80 03 30 */	bge lbl_8043C92C
/* 8043C600  3C 60 80 44 */	lis r3, mfish_koi_dummy_process@ha /* 0x8043CB14@ha */
/* 8043C604  80 9C 00 34 */	lwz r4, 0x34(r28)
/* 8043C608  38 03 CB 14 */	addi r0, r3, mfish_koi_dummy_process@l /* 0x8043CB14@l */
/* 8043C60C  7C 04 00 40 */	cmplw r4, r0
/* 8043C610  40 82 00 0C */	bne lbl_8043C61C
/* 8043C614  3B BC 06 34 */	addi r29, r28, 0x634
/* 8043C618  48 00 00 08 */	b lbl_8043C620
lbl_8043C61C:
/* 8043C61C  3B BC 06 14 */	addi r29, r28, 0x614
lbl_8043C620:
/* 8043C620  7F C0 07 35 */	extsh. r0, r30
/* 8043C624  40 81 01 88 */	ble lbl_8043C7AC
/* 8043C628  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043C62C  3C 00 43 30 */	lis r0, 0x4330
/* 8043C630  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043C634  3C C0 80 64 */	lis r6, lit_793@ha /* 0x806442C4@ha */
/* 8043C638  80 84 00 00 */	lwz r4, 0(r4)
/* 8043C63C  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043C640  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 8043C644  3C E0 80 64 */	lis r7, lit_1100@ha /* 0x80644320@ha */
/* 8043C648  A8 64 1B 6E */	lha r3, 0x1b6e(r4)
/* 8043C64C  3D 00 80 64 */	lis r8, lit_472@ha /* 0x80644260@ha */
/* 8043C650  90 01 00 10 */	stw r0, 0x10(r1)
/* 8043C654  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8043C658  C8 25 00 00 */	lfd f1, 0(r5)
/* 8043C65C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8043C660  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043C664  C0 46 42 C4 */	lfs f2, lit_793@l(r6)  /* 0x806442C4@l */
/* 8043C668  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8043C66C  C0 67 43 20 */	lfs f3, lit_1100@l(r7)  /* 0x80644320@l */
/* 8043C670  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043C674  C0 88 42 60 */	lfs f4, lit_472@l(r8)  /* 0x80644260@l */
/* 8043C678  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043C67C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043C680  EC 23 08 2A */	fadds f1, f3, f1
/* 8043C684  EF E4 08 28 */	fsubs f31, f4, f1
/* 8043C688  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8043C68C  40 81 00 68 */	ble lbl_8043C6F4
/* 8043C690  FC 20 F8 34 */	frsqrte f1, f31
/* 8043C694  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043C698  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8043C69C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043C6A0  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043C6A4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043C6A8  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043C6AC  FC 23 00 72 */	fmul f1, f3, f1
/* 8043C6B0  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043C6B4  FC 02 00 28 */	fsub f0, f2, f0
/* 8043C6B8  FC 21 00 32 */	fmul f1, f1, f0
/* 8043C6BC  FC 01 00 72 */	fmul f0, f1, f1
/* 8043C6C0  FC 23 00 72 */	fmul f1, f3, f1
/* 8043C6C4  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043C6C8  FC 02 00 28 */	fsub f0, f2, f0
/* 8043C6CC  FC 21 00 32 */	fmul f1, f1, f0
/* 8043C6D0  FC 01 00 72 */	fmul f0, f1, f1
/* 8043C6D4  FC 23 00 72 */	fmul f1, f3, f1
/* 8043C6D8  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043C6DC  FC 02 00 28 */	fsub f0, f2, f0
/* 8043C6E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8043C6E4  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043C6E8  FC 00 00 18 */	frsp f0, f0
/* 8043C6EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8043C6F0  C3 E1 00 0C */	lfs f31, 0xc(r1)
lbl_8043C6F4:
/* 8043C6F4  7F C3 F3 78 */	mr r3, r30
/* 8043C6F8  4B F7 E3 A5 */	bl cos_s
/* 8043C6FC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043C700  3C C0 43 30 */	lis r6, 0x4330
/* 8043C704  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043C708  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8043C70C  80 84 00 00 */	lwz r4, 0(r4)
/* 8043C710  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043C714  39 23 42 8C */	addi r9, r3, lit_570@l /* 0x8064428C@l */
/* 8043C718  3C A0 80 64 */	lis r5, lit_557@ha /* 0x80644280@ha */
/* 8043C71C  A8 04 1B 70 */	lha r0, 0x1b70(r4)
/* 8043C720  39 45 42 80 */	addi r10, r5, lit_557@l /* 0x80644280@l */
/* 8043C724  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 8043C728  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 8043C72C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8043C730  C8 49 00 00 */	lfd f2, 0(r9)
/* 8043C734  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043C738  39 03 43 34 */	addi r8, r3, lit_1315@l /* 0x80644334@l */
/* 8043C73C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043C740  C0 AA 00 00 */	lfs f5, 0(r10)
/* 8043C744  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8043C748  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043C74C  C0 9C 05 E8 */	lfs f4, 0x5e8(r28)
/* 8043C750  38 E4 42 98 */	addi r7, r4, lit_588@l /* 0x80644298@l */
/* 8043C754  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043C758  38 1F 40 00 */	addi r0, r31, 0x4000
/* 8043C75C  C0 68 00 00 */	lfs f3, 0(r8)
/* 8043C760  7C 04 07 34 */	extsh r4, r0
/* 8043C764  C0 47 00 00 */	lfs f2, 0(r7)
/* 8043C768  7F A3 EB 78 */	mr r3, r29
/* 8043C76C  EC A5 00 2A */	fadds f5, f5, f0
/* 8043C770  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043C774  38 C0 00 5B */	li r6, 0x5b
/* 8043C778  EC A5 00 72 */	fmuls f5, f5, f1
/* 8043C77C  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8043C780  EC 04 01 72 */	fmuls f0, f4, f5
/* 8043C784  EC 03 00 2A */	fadds f0, f3, f0
/* 8043C788  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043C78C  FC 00 00 1E */	fctiwz f0, f0
/* 8043C790  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8043C794  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8043C798  7C 00 07 34 */	extsh r0, r0
/* 8043C79C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043C7A0  7C 05 07 34 */	extsh r5, r0
/* 8043C7A4  4B F7 EB 6D */	bl add_calc_short_angle2
/* 8043C7A8  48 00 01 84 */	b lbl_8043C92C
lbl_8043C7AC:
/* 8043C7AC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043C7B0  3C 00 43 30 */	lis r0, 0x4330
/* 8043C7B4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043C7B8  3C C0 80 64 */	lis r6, lit_793@ha /* 0x806442C4@ha */
/* 8043C7BC  80 84 00 00 */	lwz r4, 0(r4)
/* 8043C7C0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043C7C4  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 8043C7C8  3C E0 80 64 */	lis r7, lit_1100@ha /* 0x80644320@ha */
/* 8043C7CC  A8 64 1B 6E */	lha r3, 0x1b6e(r4)
/* 8043C7D0  3D 00 80 64 */	lis r8, lit_472@ha /* 0x80644260@ha */
/* 8043C7D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8043C7D8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8043C7DC  C8 25 00 00 */	lfd f1, 0(r5)
/* 8043C7E0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8043C7E4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043C7E8  C0 46 42 C4 */	lfs f2, lit_793@l(r6)  /* 0x806442C4@l */
/* 8043C7EC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8043C7F0  C0 67 43 20 */	lfs f3, lit_1100@l(r7)  /* 0x80644320@l */
/* 8043C7F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043C7F8  C0 88 42 60 */	lfs f4, lit_472@l(r8)  /* 0x80644260@l */
/* 8043C7FC  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043C800  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043C804  EC 23 08 2A */	fadds f1, f3, f1
/* 8043C808  EF E4 08 28 */	fsubs f31, f4, f1
/* 8043C80C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8043C810  40 81 00 68 */	ble lbl_8043C878
/* 8043C814  FC 20 F8 34 */	frsqrte f1, f31
/* 8043C818  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 8043C81C  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8043C820  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043C824  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043C828  FC 01 00 72 */	fmul f0, f1, f1
/* 8043C82C  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 8043C830  FC 23 00 72 */	fmul f1, f3, f1
/* 8043C834  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043C838  FC 02 00 28 */	fsub f0, f2, f0
/* 8043C83C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043C840  FC 01 00 72 */	fmul f0, f1, f1
/* 8043C844  FC 23 00 72 */	fmul f1, f3, f1
/* 8043C848  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043C84C  FC 02 00 28 */	fsub f0, f2, f0
/* 8043C850  FC 21 00 32 */	fmul f1, f1, f0
/* 8043C854  FC 01 00 72 */	fmul f0, f1, f1
/* 8043C858  FC 23 00 72 */	fmul f1, f3, f1
/* 8043C85C  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043C860  FC 02 00 28 */	fsub f0, f2, f0
/* 8043C864  FC 01 00 32 */	fmul f0, f1, f0
/* 8043C868  FC 1F 00 32 */	fmul f0, f31, f0
/* 8043C86C  FC 00 00 18 */	frsp f0, f0
/* 8043C870  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043C874  C3 E1 00 08 */	lfs f31, 8(r1)
lbl_8043C878:
/* 8043C878  7F C3 F3 78 */	mr r3, r30
/* 8043C87C  4B F7 E2 21 */	bl cos_s
/* 8043C880  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8043C884  3C C0 43 30 */	lis r6, 0x4330
/* 8043C888  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8043C88C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8043C890  80 84 00 00 */	lwz r4, 0(r4)
/* 8043C894  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043C898  39 23 42 8C */	addi r9, r3, lit_570@l /* 0x8064428C@l */
/* 8043C89C  3C A0 80 64 */	lis r5, lit_557@ha /* 0x80644280@ha */
/* 8043C8A0  A8 04 1B 70 */	lha r0, 0x1b70(r4)
/* 8043C8A4  39 45 42 80 */	addi r10, r5, lit_557@l /* 0x80644280@l */
/* 8043C8A8  3C 60 80 64 */	lis r3, lit_1315@ha /* 0x80644334@ha */
/* 8043C8AC  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 8043C8B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8043C8B4  C8 49 00 00 */	lfd f2, 0(r9)
/* 8043C8B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8043C8BC  39 03 43 34 */	addi r8, r3, lit_1315@l /* 0x80644334@l */
/* 8043C8C0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043C8C4  C0 AA 00 00 */	lfs f5, 0(r10)
/* 8043C8C8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8043C8CC  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043C8D0  C0 9C 05 E8 */	lfs f4, 0x5e8(r28)
/* 8043C8D4  38 E4 42 98 */	addi r7, r4, lit_588@l /* 0x80644298@l */
/* 8043C8D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043C8DC  38 1F C0 00 */	addi r0, r31, -16384
/* 8043C8E0  C0 68 00 00 */	lfs f3, 0(r8)
/* 8043C8E4  7C 04 07 34 */	extsh r4, r0
/* 8043C8E8  C0 47 00 00 */	lfs f2, 0(r7)
/* 8043C8EC  7F A3 EB 78 */	mr r3, r29
/* 8043C8F0  EC A5 00 2A */	fadds f5, f5, f0
/* 8043C8F4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043C8F8  38 C0 00 5B */	li r6, 0x5b
/* 8043C8FC  EC A5 00 72 */	fmuls f5, f5, f1
/* 8043C900  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8043C904  EC 04 01 72 */	fmuls f0, f4, f5
/* 8043C908  EC 03 00 2A */	fadds f0, f3, f0
/* 8043C90C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043C910  FC 00 00 1E */	fctiwz f0, f0
/* 8043C914  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043C918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043C91C  7C 00 07 34 */	extsh r0, r0
/* 8043C920  7C 00 0E 70 */	srawi r0, r0, 1
/* 8043C924  7C 05 07 34 */	extsh r5, r0
/* 8043C928  4B F7 E9 E9 */	bl add_calc_short_angle2
lbl_8043C92C:
/* 8043C92C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8043C930  39 61 00 30 */	addi r11, r1, 0x30
/* 8043C934  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8043C938  4B C5 E5 E5 */	bl func_8009AF1C
/* 8043C93C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8043C940  7C 08 03 A6 */	mtlr r0
/* 8043C944  38 21 00 40 */	addi r1, r1, 0x40
/* 8043C948  4E 80 00 20 */	blr 
