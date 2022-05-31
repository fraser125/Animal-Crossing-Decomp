lbl_805B5210:
/* 805B5210  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B5214  7C 08 02 A6 */	mflr r0
/* 805B5218  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B521C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B5220  4B AE 5C B5 */	bl func_8009AED4
/* 805B5224  3C A0 80 6C */	lis r5, data_806C5CC0@ha /* 0x806C5CC0@ha */
/* 805B5228  7C 7D 1B 78 */	mr r29, r3
/* 805B522C  7C 83 23 78 */	mr r3, r4
/* 805B5230  3B C5 5C C0 */	addi r30, r5, data_806C5CC0@l /* 0x806C5CC0@l */
/* 805B5234  4B E2 44 0D */	bl get_player_actor_withoutCheck
/* 805B5238  80 1D 02 B4 */	lwz r0, 0x2b4(r29)
/* 805B523C  28 03 00 00 */	cmplwi r3, 0
/* 805B5240  3B E0 00 00 */	li r31, 0
/* 805B5244  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 805B5248  40 82 00 0C */	bne lbl_805B5254
/* 805B524C  38 60 00 00 */	li r3, 0
/* 805B5250  48 00 00 D0 */	b lbl_805B5320
lbl_805B5254:
/* 805B5254  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805B5258  3C 80 80 65 */	lis r4, lit_539@ha /* 0x8064A978@ha */
/* 805B525C  C0 1D 02 C8 */	lfs f0, 0x2c8(r29)
/* 805B5260  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 805B5264  C0 3D 02 CC */	lfs f1, 0x2cc(r29)
/* 805B5268  EC 63 00 28 */	fsubs f3, f3, f0
/* 805B526C  C0 04 A9 78 */	lfs f0, lit_539@l(r4)  /* 0x8064A978@l */
/* 805B5270  EC 82 08 28 */	fsubs f4, f2, f1
/* 805B5274  EC 43 00 F2 */	fmuls f2, f3, f3
/* 805B5278  EC 24 01 32 */	fmuls f1, f4, f4
/* 805B527C  EC 22 08 2A */	fadds f1, f2, f1
/* 805B5280  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B5284  40 80 00 98 */	bge lbl_805B531C
/* 805B5288  54 A0 10 3A */	slwi r0, r5, 2
/* 805B528C  38 9E 01 EC */	addi r4, r30, 0x1ec
/* 805B5290  7C 04 04 2E */	lfsx f0, r4, r0
/* 805B5294  3C 80 80 65 */	lis r4, lit_540@ha /* 0x8064A97C@ha */
/* 805B5298  EC 23 00 32 */	fmuls f1, f3, f0
/* 805B529C  C0 04 A9 7C */	lfs f0, lit_540@l(r4)  /* 0x8064A97C@l */
/* 805B52A0  EC 24 08 2A */	fadds f1, f4, f1
/* 805B52A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B52A8  40 80 00 74 */	bge lbl_805B531C
/* 805B52AC  A8 83 00 DE */	lha r4, 0xde(r3)
/* 805B52B0  54 A5 08 3C */	slwi r5, r5, 1
/* 805B52B4  38 7E 01 F4 */	addi r3, r30, 0x1f4
/* 805B52B8  7C 03 2A 2E */	lhzx r0, r3, r5
/* 805B52BC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 805B52C0  7C 04 00 40 */	cmplw r4, r0
/* 805B52C4  40 81 00 58 */	ble lbl_805B531C
/* 805B52C8  38 7E 01 F8 */	addi r3, r30, 0x1f8
/* 805B52CC  7C 03 2A 2E */	lhzx r0, r3, r5
/* 805B52D0  7C 04 00 40 */	cmplw r4, r0
/* 805B52D4  40 80 00 48 */	bge lbl_805B531C
/* 805B52D8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805B52DC  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805B52E0  4B DE 0C 31 */	bl chkTrigger
/* 805B52E4  2C 03 00 00 */	cmpwi r3, 0
/* 805B52E8  40 82 00 0C */	bne lbl_805B52F4
/* 805B52EC  38 60 00 00 */	li r3, 0
/* 805B52F0  48 00 00 30 */	b lbl_805B5320
lbl_805B52F4:
/* 805B52F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B52F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B52FC  3C 63 00 03 */	addis r3, r3, 3
/* 805B5300  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 805B5304  28 00 00 00 */	cmplwi r0, 0
/* 805B5308  41 82 00 10 */	beq lbl_805B5318
/* 805B530C  38 00 00 01 */	li r0, 1
/* 805B5310  98 03 88 69 */	stb r0, -0x7797(r3)
/* 805B5314  48 00 00 08 */	b lbl_805B531C
lbl_805B5318:
/* 805B5318  3B E0 00 01 */	li r31, 1
lbl_805B531C:
/* 805B531C  7F E3 FB 78 */	mr r3, r31
lbl_805B5320:
/* 805B5320  39 61 00 20 */	addi r11, r1, 0x20
/* 805B5324  4B AE 5B FD */	bl func_8009AF20
/* 805B5328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B532C  7C 08 03 A6 */	mtlr r0
/* 805B5330  38 21 00 20 */	addi r1, r1, 0x20
/* 805B5334  4E 80 00 20 */	blr 
