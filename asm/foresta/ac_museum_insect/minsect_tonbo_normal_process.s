lbl_8045F558:
/* 8045F558  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8045F55C  7C 08 02 A6 */	mflr r0
/* 8045F560  90 01 00 44 */	stw r0, 0x44(r1)
/* 8045F564  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8045F568  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8045F56C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8045F570  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8045F574  7C 7E 1B 78 */	mr r30, r3
/* 8045F578  7C 9F 23 78 */	mr r31, r4
/* 8045F57C  A8 03 00 78 */	lha r0, 0x78(r3)
/* 8045F580  2C 00 00 02 */	cmpwi r0, 2
/* 8045F584  41 82 00 68 */	beq lbl_8045F5EC
/* 8045F588  4B FF F4 A9 */	bl minsect_tonbo_bg_check
/* 8045F58C  2C 03 00 00 */	cmpwi r3, 0
/* 8045F590  41 82 00 5C */	beq lbl_8045F5EC
/* 8045F594  4B BF D7 61 */	bl fqrand
/* 8045F598  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 8045F59C  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 8045F5A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045F5A4  40 81 00 14 */	ble lbl_8045F5B8
/* 8045F5A8  7F C3 F3 78 */	mr r3, r30
/* 8045F5AC  7F E4 FB 78 */	mr r4, r31
/* 8045F5B0  48 00 05 4D */	bl minsect_tonbo_aim_rock_process_init
/* 8045F5B4  48 00 05 28 */	b lbl_8045FADC
lbl_8045F5B8:
/* 8045F5B8  38 00 00 02 */	li r0, 2
/* 8045F5BC  B0 1E 00 78 */	sth r0, 0x78(r30)
/* 8045F5C0  4B BF D7 35 */	bl fqrand
/* 8045F5C4  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 8045F5C8  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 8045F5CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045F5D0  40 81 00 14 */	ble lbl_8045F5E4
/* 8045F5D4  7F C3 F3 78 */	mr r3, r30
/* 8045F5D8  7F E4 FB 78 */	mr r4, r31
/* 8045F5DC  4B FF F6 C5 */	bl minsect_tonbo_near_target_set
/* 8045F5E0  48 00 04 FC */	b lbl_8045FADC
lbl_8045F5E4:
/* 8045F5E4  38 00 00 00 */	li r0, 0
/* 8045F5E8  B0 1E 00 6E */	sth r0, 0x6e(r30)
lbl_8045F5EC:
/* 8045F5EC  A8 1E 00 78 */	lha r0, 0x78(r30)
/* 8045F5F0  2C 00 00 01 */	cmpwi r0, 1
/* 8045F5F4  41 82 01 3C */	beq lbl_8045F730
/* 8045F5F8  40 80 00 10 */	bge lbl_8045F608
/* 8045F5FC  2C 00 00 00 */	cmpwi r0, 0
/* 8045F600  40 80 00 14 */	bge lbl_8045F614
/* 8045F604  48 00 04 D0 */	b lbl_8045FAD4
lbl_8045F608:
/* 8045F608  2C 00 00 03 */	cmpwi r0, 3
/* 8045F60C  40 80 04 C8 */	bge lbl_8045FAD4
/* 8045F610  48 00 02 B8 */	b lbl_8045F8C8
lbl_8045F614:
/* 8045F614  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045F618  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8045F61C  38 A3 45 FC */	addi r5, r3, lit_509@l /* 0x806445FC@l */
/* 8045F620  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045F624  C9 05 00 00 */	lfd f8, 0(r5)
/* 8045F628  38 E4 46 04 */	addi r7, r4, lit_510@l /* 0x80644604@l */
/* 8045F62C  38 C3 46 0C */	addi r6, r3, lit_511@l /* 0x8064460C@l */
/* 8045F630  3C 80 80 64 */	lis r4, lit_677@ha /* 0x80644650@ha */
/* 8045F634  FC 60 40 34 */	frsqrte f3, f8
/* 8045F638  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8045F63C  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 8045F640  38 A4 46 50 */	addi r5, r4, lit_677@l /* 0x80644650@l */
/* 8045F644  38 83 46 10 */	addi r4, r3, lit_512@l /* 0x80644610@l */
/* 8045F648  C8 C7 00 00 */	lfd f6, 0(r7)
/* 8045F64C  FC 43 00 F2 */	fmul f2, f3, f3
/* 8045F650  C0 06 00 00 */	lfs f0, 0(r6)
/* 8045F654  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8045F658  38 7E 00 40 */	addi r3, r30, 0x40
/* 8045F65C  FC A7 00 F2 */	fmul f5, f7, f3
/* 8045F660  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045F664  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045F668  C0 84 00 00 */	lfs f4, 0(r4)
/* 8045F66C  FC 46 10 28 */	fsub f2, f6, f2
/* 8045F670  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045F674  FC 45 01 72 */	fmul f2, f5, f5
/* 8045F678  FC A7 01 72 */	fmul f5, f7, f5
/* 8045F67C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045F680  FC 46 10 28 */	fsub f2, f6, f2
/* 8045F684  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045F688  FC 45 01 72 */	fmul f2, f5, f5
/* 8045F68C  FC A7 01 72 */	fmul f5, f7, f5
/* 8045F690  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045F694  FC 46 10 28 */	fsub f2, f6, f2
/* 8045F698  FC 45 00 B2 */	fmul f2, f5, f2
/* 8045F69C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045F6A0  FC 40 10 18 */	frsp f2, f2
/* 8045F6A4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8045F6A8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8045F6AC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045F6B0  4B F5 BB 01 */	bl add_calc
/* 8045F6B4  7F C3 F3 78 */	mr r3, r30
/* 8045F6B8  4B FF F9 51 */	bl minsect_tonbo_acc_change
/* 8045F6BC  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8045F6C0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045F6C4  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8045F6C8  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045F6CC  EC 43 10 28 */	fsubs f2, f3, f2
/* 8045F6D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045F6D4  4C 41 13 82 */	cror 2, 1, 2
/* 8045F6D8  40 82 00 08 */	bne lbl_8045F6E0
/* 8045F6DC  48 00 00 08 */	b lbl_8045F6E4
lbl_8045F6E0:
/* 8045F6E0  FC 40 10 50 */	fneg f2, f2
lbl_8045F6E4:
/* 8045F6E4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8045F6E8  4C 40 13 82 */	cror 2, 0, 2
/* 8045F6EC  40 82 03 E8 */	bne lbl_8045FAD4
/* 8045F6F0  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 8045F6F4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045F6F8  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8045F6FC  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045F700  EC 43 10 28 */	fsubs f2, f3, f2
/* 8045F704  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045F708  4C 41 13 82 */	cror 2, 1, 2
/* 8045F70C  40 82 00 08 */	bne lbl_8045F714
/* 8045F710  48 00 00 08 */	b lbl_8045F718
lbl_8045F714:
/* 8045F714  FC 40 10 50 */	fneg f2, f2
lbl_8045F718:
/* 8045F718  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8045F71C  4C 40 13 82 */	cror 2, 0, 2
/* 8045F720  40 82 03 B4 */	bne lbl_8045FAD4
/* 8045F724  38 00 00 01 */	li r0, 1
/* 8045F728  B0 1E 00 78 */	sth r0, 0x78(r30)
/* 8045F72C  48 00 03 A8 */	b lbl_8045FAD4
lbl_8045F730:
/* 8045F730  3C 60 80 64 */	lis r3, lit_583@ha /* 0x80644624@ha */
/* 8045F734  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8045F738  38 A3 46 24 */	addi r5, r3, lit_583@l /* 0x80644624@l */
/* 8045F73C  C8 E4 45 FC */	lfd f7, lit_509@l(r4)  /* 0x806445FC@l */
/* 8045F740  C9 05 00 00 */	lfd f8, 0(r5)
/* 8045F744  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045F748  39 03 46 04 */	addi r8, r3, lit_510@l /* 0x80644604@l */
/* 8045F74C  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045F750  FC 20 40 34 */	frsqrte f1, f8
/* 8045F754  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045F758  38 C3 46 0C */	addi r6, r3, lit_511@l /* 0x8064460C@l */
/* 8045F75C  C8 C8 00 00 */	lfd f6, 0(r8)
/* 8045F760  3C 80 80 64 */	lis r4, lit_460@ha /* 0x806445C0@ha */
/* 8045F764  38 E5 45 BC */	addi r7, r5, lit_459@l /* 0x806445BC@l */
/* 8045F768  FC 01 00 72 */	fmul f0, f1, f1
/* 8045F76C  38 A4 45 C0 */	addi r5, r4, lit_460@l /* 0x806445C0@l */
/* 8045F770  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 8045F774  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045F778  38 83 46 10 */	addi r4, r3, lit_512@l /* 0x80644610@l */
/* 8045F77C  FC A7 00 72 */	fmul f5, f7, f1
/* 8045F780  FC 48 00 32 */	fmul f2, f8, f0
/* 8045F784  C0 06 00 00 */	lfs f0, 0(r6)
/* 8045F788  C0 27 00 00 */	lfs f1, 0(r7)
/* 8045F78C  38 7E 00 40 */	addi r3, r30, 0x40
/* 8045F790  C0 84 00 00 */	lfs f4, 0(r4)
/* 8045F794  FC 46 10 28 */	fsub f2, f6, f2
/* 8045F798  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045F79C  FC 45 01 72 */	fmul f2, f5, f5
/* 8045F7A0  FC A7 01 72 */	fmul f5, f7, f5
/* 8045F7A4  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045F7A8  FC 46 10 28 */	fsub f2, f6, f2
/* 8045F7AC  FC A5 00 B2 */	fmul f5, f5, f2
/* 8045F7B0  FC 45 01 72 */	fmul f2, f5, f5
/* 8045F7B4  FC A7 01 72 */	fmul f5, f7, f5
/* 8045F7B8  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045F7BC  FC 46 10 28 */	fsub f2, f6, f2
/* 8045F7C0  FC 45 00 B2 */	fmul f2, f5, f2
/* 8045F7C4  FC 48 00 B2 */	fmul f2, f8, f2
/* 8045F7C8  FC 40 10 18 */	frsp f2, f2
/* 8045F7CC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8045F7D0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8045F7D4  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045F7D8  4B F5 B9 D9 */	bl add_calc
/* 8045F7DC  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045F7E0  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045F7E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8045F7E8  40 82 02 EC */	bne lbl_8045FAD4
/* 8045F7EC  38 00 00 02 */	li r0, 2
/* 8045F7F0  B0 1E 00 78 */	sth r0, 0x78(r30)
/* 8045F7F4  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8045F7F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8045F7FC  41 82 00 34 */	beq lbl_8045F830
/* 8045F800  4B BF D5 2D */	bl fqrand2
/* 8045F804  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045F808  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045F80C  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045F810  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045F814  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045F818  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045F81C  FC 00 00 1E */	fctiwz f0, f0
/* 8045F820  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8045F824  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8045F828  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045F82C  48 00 00 38 */	b lbl_8045F864
lbl_8045F830:
/* 8045F830  4B BF D4 FD */	bl fqrand2
/* 8045F834  3C 80 80 64 */	lis r4, lit_580@ha /* 0x80644618@ha */
/* 8045F838  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8045F83C  C0 44 46 18 */	lfs f2, lit_580@l(r4)  /* 0x80644618@l */
/* 8045F840  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8045F844  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045F848  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8045F84C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045F850  FC 00 00 1E */	fctiwz f0, f0
/* 8045F854  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8045F858  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8045F85C  7C 00 1A 14 */	add r0, r0, r3
/* 8045F860  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_8045F864:
/* 8045F864  7F C3 F3 78 */	mr r3, r30
/* 8045F868  4B FF FA AD */	bl minsect_tonbo_aim_angle_check
/* 8045F86C  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 8045F870  2C 00 00 00 */	cmpwi r0, 0
/* 8045F874  41 82 00 48 */	beq lbl_8045F8BC
/* 8045F878  4B BF D4 7D */	bl fqrand
/* 8045F87C  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 8045F880  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 8045F884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045F888  40 81 00 14 */	ble lbl_8045F89C
/* 8045F88C  7F C3 F3 78 */	mr r3, r30
/* 8045F890  7F E4 FB 78 */	mr r4, r31
/* 8045F894  48 00 02 69 */	bl minsect_tonbo_aim_rock_process_init
/* 8045F898  48 00 00 24 */	b lbl_8045F8BC
lbl_8045F89C:
/* 8045F89C  4B BF D4 59 */	bl fqrand
/* 8045F8A0  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 8045F8A4  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 8045F8A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045F8AC  40 81 00 10 */	ble lbl_8045F8BC
/* 8045F8B0  7F C3 F3 78 */	mr r3, r30
/* 8045F8B4  7F E4 FB 78 */	mr r4, r31
/* 8045F8B8  4B FF F3 E9 */	bl minsect_tonbo_near_target_set
lbl_8045F8BC:
/* 8045F8BC  38 00 00 00 */	li r0, 0
/* 8045F8C0  B0 1E 00 72 */	sth r0, 0x72(r30)
/* 8045F8C4  48 00 02 10 */	b lbl_8045FAD4
lbl_8045F8C8:
/* 8045F8C8  3C 60 80 64 */	lis r3, lit_1238@ha /* 0x8064472C@ha */
/* 8045F8CC  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8045F8D0  38 A3 47 2C */	addi r5, r3, lit_1238@l /* 0x8064472C@l */
/* 8045F8D4  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8045F8D8  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8045F8DC  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045F8E0  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8045F8E4  FC 60 30 34 */	frsqrte f3, f6
/* 8045F8E8  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045F8EC  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8045F8F0  C8 85 00 00 */	lfd f4, 0(r5)
/* 8045F8F4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045F8F8  C0 44 00 00 */	lfs f2, 0(r4)
/* 8045F8FC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045F900  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045F904  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045F908  FC 26 00 72 */	fmul f1, f6, f1
/* 8045F90C  FC 24 08 28 */	fsub f1, f4, f1
/* 8045F910  FC 63 00 72 */	fmul f3, f3, f1
/* 8045F914  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045F918  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045F91C  FC 26 00 72 */	fmul f1, f6, f1
/* 8045F920  FC 24 08 28 */	fsub f1, f4, f1
/* 8045F924  FC 63 00 72 */	fmul f3, f3, f1
/* 8045F928  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045F92C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045F930  FC 26 00 72 */	fmul f1, f6, f1
/* 8045F934  FC 24 08 28 */	fsub f1, f4, f1
/* 8045F938  FC 23 00 72 */	fmul f1, f3, f1
/* 8045F93C  FC 26 00 72 */	fmul f1, f6, f1
/* 8045F940  FC 20 08 18 */	frsp f1, f1
/* 8045F944  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8045F948  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8045F94C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8045F950  EC 42 08 28 */	fsubs f2, f2, f1
/* 8045F954  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045F958  40 81 00 54 */	ble lbl_8045F9AC
/* 8045F95C  FC 20 10 34 */	frsqrte f1, f2
/* 8045F960  FC 01 00 72 */	fmul f0, f1, f1
/* 8045F964  FC 25 00 72 */	fmul f1, f5, f1
/* 8045F968  FC 02 00 32 */	fmul f0, f2, f0
/* 8045F96C  FC 04 00 28 */	fsub f0, f4, f0
/* 8045F970  FC 21 00 32 */	fmul f1, f1, f0
/* 8045F974  FC 01 00 72 */	fmul f0, f1, f1
/* 8045F978  FC 25 00 72 */	fmul f1, f5, f1
/* 8045F97C  FC 02 00 32 */	fmul f0, f2, f0
/* 8045F980  FC 04 00 28 */	fsub f0, f4, f0
/* 8045F984  FC 21 00 32 */	fmul f1, f1, f0
/* 8045F988  FC 01 00 72 */	fmul f0, f1, f1
/* 8045F98C  FC 25 00 72 */	fmul f1, f5, f1
/* 8045F990  FC 02 00 32 */	fmul f0, f2, f0
/* 8045F994  FC 04 00 28 */	fsub f0, f4, f0
/* 8045F998  FC 01 00 32 */	fmul f0, f1, f0
/* 8045F99C  FC 02 00 32 */	fmul f0, f2, f0
/* 8045F9A0  FC 00 00 18 */	frsp f0, f0
/* 8045F9A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045F9A8  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8045F9AC:
/* 8045F9AC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045F9B0  A8 9E 00 70 */	lha r4, 0x70(r30)
/* 8045F9B4  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8045F9B8  38 7E 00 6A */	addi r3, r30, 0x6a
/* 8045F9BC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045F9C0  38 A0 0A AA */	li r5, 0xaaa
/* 8045F9C4  38 C0 00 2D */	li r6, 0x2d
/* 8045F9C8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8045F9CC  4B F5 B9 45 */	bl add_calc_short_angle2
/* 8045F9D0  7C 60 07 35 */	extsh. r0, r3
/* 8045F9D4  40 82 01 00 */	bne lbl_8045FAD4
/* 8045F9D8  A8 7E 00 6E */	lha r3, 0x6e(r30)
/* 8045F9DC  38 03 FF FF */	addi r0, r3, -1
/* 8045F9E0  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8045F9E4  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 8045F9E8  2C 00 00 00 */	cmpwi r0, 0
/* 8045F9EC  40 80 00 E8 */	bge lbl_8045FAD4
/* 8045F9F0  7F C3 F3 78 */	mr r3, r30
/* 8045F9F4  4B FF F6 E1 */	bl minsect_tonbo_max_speed_set
/* 8045F9F8  7F C3 F3 78 */	mr r3, r30
/* 8045F9FC  4B FF F7 C5 */	bl minsect_tonbo_aim_distance_set
/* 8045FA00  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8045FA04  FF E0 08 90 */	fmr f31, f1
/* 8045FA08  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8045FA0C  90 7E 00 44 */	stw r3, 0x44(r30)
/* 8045FA10  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8045FA14  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8045FA18  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8045FA1C  4B BF D3 11 */	bl fqrand2
/* 8045FA20  3C 60 80 64 */	lis r3, lit_581@ha /* 0x8064461C@ha */
/* 8045FA24  3C 80 80 64 */	lis r4, lit_461@ha /* 0x806445C4@ha */
/* 8045FA28  38 A3 46 1C */	addi r5, r3, lit_581@l /* 0x8064461C@l */
/* 8045FA2C  C0 44 45 C4 */	lfs f2, lit_461@l(r4)  /* 0x806445C4@l */
/* 8045FA30  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045FA34  3C 60 80 64 */	lis r3, lit_1239@ha /* 0x80644734@ha */
/* 8045FA38  C0 63 47 34 */	lfs f3, lit_1239@l(r3)  /* 0x80644734@l */
/* 8045FA3C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8045FA40  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8045FA44  EC 22 08 2A */	fadds f1, f2, f1
/* 8045FA48  EC 00 08 2A */	fadds f0, f0, f1
/* 8045FA4C  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8045FA50  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8045FA54  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8045FA58  40 80 00 08 */	bge lbl_8045FA60
/* 8045FA5C  48 00 00 08 */	b lbl_8045FA64
lbl_8045FA60:
/* 8045FA60  FC 60 08 90 */	fmr f3, f1
lbl_8045FA64:
/* 8045FA64  3C 60 80 64 */	lis r3, lit_935@ha /* 0x806446C4@ha */
/* 8045FA68  C0 03 46 C4 */	lfs f0, lit_935@l(r3)  /* 0x806446C4@l */
/* 8045FA6C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8045FA70  40 81 00 08 */	ble lbl_8045FA78
/* 8045FA74  48 00 00 1C */	b lbl_8045FA90
lbl_8045FA78:
/* 8045FA78  3C 60 80 64 */	lis r3, lit_1239@ha /* 0x80644734@ha */
/* 8045FA7C  C0 03 47 34 */	lfs f0, lit_1239@l(r3)  /* 0x80644734@l */
/* 8045FA80  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045FA84  40 80 00 08 */	bge lbl_8045FA8C
/* 8045FA88  48 00 00 08 */	b lbl_8045FA90
lbl_8045FA8C:
/* 8045FA8C  FC 00 08 90 */	fmr f0, f1
lbl_8045FA90:
/* 8045FA90  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8045FA94  A8 7E 00 6A */	lha r3, 0x6a(r30)
/* 8045FA98  4B F5 B0 59 */	bl sin_s
/* 8045FA9C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8045FAA0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8045FAA4  EC 00 08 2A */	fadds f0, f0, f1
/* 8045FAA8  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8045FAAC  A8 7E 00 6A */	lha r3, 0x6a(r30)
/* 8045FAB0  4B F5 AF ED */	bl cos_s
/* 8045FAB4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8045FAB8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8045FABC  38 60 00 01 */	li r3, 1
/* 8045FAC0  38 00 00 00 */	li r0, 0
/* 8045FAC4  EC 00 08 2A */	fadds f0, f0, f1
/* 8045FAC8  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 8045FACC  B0 7E 00 7C */	sth r3, 0x7c(r30)
/* 8045FAD0  B0 1E 00 78 */	sth r0, 0x78(r30)
lbl_8045FAD4:
/* 8045FAD4  7F C3 F3 78 */	mr r3, r30
/* 8045FAD8  48 00 17 E9 */	bl minsect_tonbo_MoveF
lbl_8045FADC:
/* 8045FADC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8045FAE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8045FAE4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8045FAE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8045FAEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8045FAF0  7C 08 03 A6 */	mtlr r0
/* 8045FAF4  38 21 00 40 */	addi r1, r1, 0x40
/* 8045FAF8  4E 80 00 20 */	blr 
