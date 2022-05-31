lbl_805A410C:
/* 805A410C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A4110  7C 08 02 A6 */	mflr r0
/* 805A4114  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A4118  39 61 00 30 */	addi r11, r1, 0x30
/* 805A411C  4B AF 6D B5 */	bl func_8009AED0
/* 805A4120  3C A0 80 6C */	lis r5, data_806C3C58@ha /* 0x806C3C58@ha */
/* 805A4124  7C 7E 1B 78 */	mr r30, r3
/* 805A4128  7C 9C 23 78 */	mr r28, r4
/* 805A412C  3B E5 3C 58 */	addi r31, r5, data_806C3C58@l /* 0x806C3C58@l */
/* 805A4130  4B FF F3 51 */	bl aGTT_warp_event
/* 805A4134  2C 03 00 00 */	cmpwi r3, 0
/* 805A4138  40 82 02 08 */	bne lbl_805A4340
/* 805A413C  83 BE 01 CC */	lwz r29, 0x1cc(r30)
/* 805A4140  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 805A4144  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 805A4148  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 805A414C  B0 1D 00 DE */	sth r0, 0xde(r29)
/* 805A4150  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 805A4154  2C 03 00 00 */	cmpwi r3, 0
/* 805A4158  40 82 00 0C */	bne lbl_805A4164
/* 805A415C  38 00 00 00 */	li r0, 0
/* 805A4160  48 00 00 0C */	b lbl_805A416C
lbl_805A4164:
/* 805A4164  38 03 FF FF */	addi r0, r3, -1
/* 805A4168  90 1E 02 18 */	stw r0, 0x218(r30)
lbl_805A416C:
/* 805A416C  2C 00 00 00 */	cmpwi r0, 0
/* 805A4170  40 82 01 9C */	bne lbl_805A430C
/* 805A4174  A8 1E 01 DC */	lha r0, 0x1dc(r30)
/* 805A4178  38 BF 01 68 */	addi r5, r31, 0x168
/* 805A417C  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A4180  38 9D 00 28 */	addi r4, r29, 0x28
/* 805A4184  54 00 10 3A */	slwi r0, r0, 2
/* 805A4188  7C 05 04 2E */	lfsx f0, r5, r0
/* 805A418C  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 805A4190  4B E1 6F A1 */	bl search_position_angleY
/* 805A4194  7C 60 1B 78 */	mr r0, r3
/* 805A4198  7F C3 F3 78 */	mr r3, r30
/* 805A419C  7C 04 03 78 */	mr r4, r0
/* 805A41A0  4B FF ED 7D */	bl aGTT_set_angle
/* 805A41A4  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A41A8  38 9D 00 28 */	addi r4, r29, 0x28
/* 805A41AC  4B E1 6E 29 */	bl search_position_distance
/* 805A41B0  A8 1E 01 DC */	lha r0, 0x1dc(r30)
/* 805A41B4  38 7F 01 B8 */	addi r3, r31, 0x1b8
/* 805A41B8  54 00 10 3A */	slwi r0, r0, 2
/* 805A41BC  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A41C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A41C4  40 80 01 48 */	bge lbl_805A430C
/* 805A41C8  3C 60 80 65 */	lis r3, lit_493@ha /* 0x8064A3D0@ha */
/* 805A41CC  C0 23 A3 D0 */	lfs f1, lit_493@l(r3)  /* 0x8064A3D0@l */
/* 805A41D0  4B FF F1 CD */	bl aGTT_random_check
/* 805A41D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A41D8  41 82 00 14 */	beq lbl_805A41EC
/* 805A41DC  7F C3 F3 78 */	mr r3, r30
/* 805A41E0  4B FF FB 25 */	bl aGYO_check_fall
/* 805A41E4  2C 03 00 01 */	cmpwi r3, 1
/* 805A41E8  41 82 00 2C */	beq lbl_805A4214
lbl_805A41EC:
/* 805A41EC  A8 7E 02 3E */	lha r3, 0x23e(r30)
/* 805A41F0  2C 03 00 00 */	cmpwi r3, 0
/* 805A41F4  40 82 00 0C */	bne lbl_805A4200
/* 805A41F8  38 00 00 00 */	li r0, 0
/* 805A41FC  48 00 00 10 */	b lbl_805A420C
lbl_805A4200:
/* 805A4200  38 03 FF FF */	addi r0, r3, -1
/* 805A4204  B0 1E 02 3E */	sth r0, 0x23e(r30)
/* 805A4208  7C 00 07 34 */	extsh r0, r0
lbl_805A420C:
/* 805A420C  2C 00 00 00 */	cmpwi r0, 0
/* 805A4210  40 82 00 64 */	bne lbl_805A4274
lbl_805A4214:
/* 805A4214  80 1D 02 8C */	lwz r0, 0x28c(r29)
/* 805A4218  2C 00 00 02 */	cmpwi r0, 2
/* 805A421C  40 82 00 F0 */	bne lbl_805A430C
/* 805A4220  38 00 00 02 */	li r0, 2
/* 805A4224  90 1D 02 88 */	stw r0, 0x288(r29)
/* 805A4228  4B E3 78 ED */	bl mPlib_Get_space_putin_item
/* 805A422C  2C 03 00 00 */	cmpwi r3, 0
/* 805A4230  41 80 00 34 */	blt lbl_805A4264
/* 805A4234  3C 60 80 65 */	lis r3, lit_802@ha /* 0x8064A40C@ha */
/* 805A4238  C0 23 A4 0C */	lfs f1, lit_802@l(r3)  /* 0x8064A40C@l */
/* 805A423C  4B FF F1 61 */	bl aGTT_random_check
/* 805A4240  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A4244  41 82 00 20 */	beq lbl_805A4264
/* 805A4248  A8 1E 01 DC */	lha r0, 0x1dc(r30)
/* 805A424C  38 7F 02 C4 */	addi r3, r31, 0x2c4
/* 805A4250  54 00 10 3A */	slwi r0, r0, 2
/* 805A4254  7C 03 00 2E */	lwzx r0, r3, r0
/* 805A4258  90 1E 01 D8 */	stw r0, 0x1d8(r30)
/* 805A425C  80 1E 01 D8 */	lwz r0, 0x1d8(r30)
/* 805A4260  90 1D 02 90 */	stw r0, 0x290(r29)
lbl_805A4264:
/* 805A4264  7F C3 F3 78 */	mr r3, r30
/* 805A4268  38 80 00 05 */	li r4, 5
/* 805A426C  48 00 09 D9 */	bl aGTT_setupAction
/* 805A4270  48 00 00 9C */	b lbl_805A430C
lbl_805A4274:
/* 805A4274  38 00 00 01 */	li r0, 1
/* 805A4278  98 1D 02 60 */	stb r0, 0x260(r29)
/* 805A427C  4B AB 8A B1 */	bl fqrand2
/* 805A4280  A8 9E 01 DC */	lha r4, 0x1dc(r30)
/* 805A4284  3C 00 43 30 */	lis r0, 0x4330
/* 805A4288  3C C0 80 65 */	lis r6, lit_803@ha /* 0x8064A410@ha */
/* 805A428C  3C 60 80 65 */	lis r3, lit_806@ha /* 0x8064A41C@ha */
/* 805A4290  54 85 08 3C */	slwi r5, r4, 1
/* 805A4294  38 9F 01 A8 */	addi r4, r31, 0x1a8
/* 805A4298  7C 84 2A AE */	lhax r4, r4, r5
/* 805A429C  38 A3 A4 1C */	addi r5, r3, lit_806@l /* 0x8064A41C@l */
/* 805A42A0  C0 06 A4 10 */	lfs f0, lit_803@l(r6)  /* 0x8064A410@l */
/* 805A42A4  3C 60 80 65 */	lis r3, lit_731@ha /* 0x8064A3FC@ha */
/* 805A42A8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805A42AC  90 01 00 08 */	stw r0, 8(r1)
/* 805A42B0  EC 60 00 72 */	fmuls f3, f0, f1
/* 805A42B4  C8 45 00 00 */	lfd f2, 0(r5)
/* 805A42B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 805A42BC  C0 03 A3 FC */	lfs f0, lit_731@l(r3)  /* 0x8064A3FC@l */
/* 805A42C0  C8 21 00 08 */	lfd f1, 8(r1)
/* 805A42C4  EC 21 10 28 */	fsubs f1, f1, f2
/* 805A42C8  EC 21 18 2A */	fadds f1, f1, f3
/* 805A42CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A42D0  FC 00 00 1E */	fctiwz f0, f0
/* 805A42D4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805A42D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A42DC  90 1E 02 18 */	stw r0, 0x218(r30)
/* 805A42E0  4B AB 8A 4D */	bl fqrand2
/* 805A42E4  3C 60 80 65 */	lis r3, lit_804@ha /* 0x8064A414@ha */
/* 805A42E8  A8 1E 01 DC */	lha r0, 0x1dc(r30)
/* 805A42EC  38 83 A4 14 */	addi r4, r3, lit_804@l /* 0x8064A414@l */
/* 805A42F0  38 7F 01 88 */	addi r3, r31, 0x188
/* 805A42F4  C0 44 00 00 */	lfs f2, 0(r4)
/* 805A42F8  54 00 10 3A */	slwi r0, r0, 2
/* 805A42FC  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A4300  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A4304  EC 00 08 2A */	fadds f0, f0, f1
/* 805A4308  D0 1E 00 74 */	stfs f0, 0x74(r30)
lbl_805A430C:
/* 805A430C  80 1D 02 38 */	lwz r0, 0x238(r29)
/* 805A4310  2C 00 00 06 */	cmpwi r0, 6
/* 805A4314  40 82 00 2C */	bne lbl_805A4340
/* 805A4318  38 00 00 00 */	li r0, 0
/* 805A431C  7F C3 F3 78 */	mr r3, r30
/* 805A4320  90 1D 02 88 */	stw r0, 0x288(r29)
/* 805A4324  7F 84 E3 78 */	mr r4, r28
/* 805A4328  38 A0 00 00 */	li r5, 0
/* 805A432C  4B FF EC F5 */	bl aGTT_effect_sibuki
/* 805A4330  7F C3 F3 78 */	mr r3, r30
/* 805A4334  7F 84 E3 78 */	mr r4, r28
/* 805A4338  38 A0 00 00 */	li r5, 0
/* 805A433C  4B FF EE 31 */	bl aGTT_kage_make_actor
lbl_805A4340:
/* 805A4340  39 61 00 30 */	addi r11, r1, 0x30
/* 805A4344  4B AF 6B D9 */	bl func_8009AF1C
/* 805A4348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A434C  7C 08 03 A6 */	mtlr r0
/* 805A4350  38 21 00 30 */	addi r1, r1, 0x30
/* 805A4354  4E 80 00 20 */	blr 
