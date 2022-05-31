lbl_805B5338:
/* 805B5338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B533C  7C 08 02 A6 */	mflr r0
/* 805B5340  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B5344  39 61 00 20 */	addi r11, r1, 0x20
/* 805B5348  4B AE 5B 8D */	bl func_8009AED4
/* 805B534C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B5350  7C 7D 1B 78 */	mr r29, r3
/* 805B5354  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805B5358  7C 9E 23 78 */	mr r30, r4
/* 805B535C  3C 63 00 02 */	addis r3, r3, 2
/* 805B5360  80 63 60 AC */	lwz r3, 0x60ac(r3)
/* 805B5364  28 03 00 00 */	cmplwi r3, 0
/* 805B5368  40 82 00 0C */	bne lbl_805B5374
/* 805B536C  38 60 00 00 */	li r3, 0
/* 805B5370  48 00 00 E0 */	b lbl_805B5450
lbl_805B5374:
/* 805B5374  83 E3 00 00 */	lwz r31, 0(r3)
/* 805B5378  28 1F 00 00 */	cmplwi r31, 0
/* 805B537C  41 82 00 1C */	beq lbl_805B5398
/* 805B5380  80 03 00 04 */	lwz r0, 4(r3)
/* 805B5384  2C 00 00 01 */	cmpwi r0, 1
/* 805B5388  40 82 00 10 */	bne lbl_805B5398
/* 805B538C  4B DE 59 A1 */	bl mEv_CheckFirstIntro
/* 805B5390  2C 03 00 00 */	cmpwi r3, 0
/* 805B5394  40 82 00 0C */	bne lbl_805B53A0
lbl_805B5398:
/* 805B5398  38 60 00 00 */	li r3, 0
/* 805B539C  48 00 00 B4 */	b lbl_805B5450
lbl_805B53A0:
/* 805B53A0  3C 60 80 65 */	lis r3, lit_456@ha /* 0x8064A96C@ha */
/* 805B53A4  C0 1D 02 D4 */	lfs f0, 0x2d4(r29)
/* 805B53A8  C0 23 A9 6C */	lfs f1, lit_456@l(r3)  /* 0x8064A96C@l */
/* 805B53AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B53B0  40 82 00 18 */	bne lbl_805B53C8
/* 805B53B4  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 805B53B8  2C 00 00 01 */	cmpwi r0, 1
/* 805B53BC  40 82 00 0C */	bne lbl_805B53C8
/* 805B53C0  38 60 00 01 */	li r3, 1
/* 805B53C4  48 00 00 8C */	b lbl_805B5450
lbl_805B53C8:
/* 805B53C8  7F C3 F3 78 */	mr r3, r30
/* 805B53CC  7F A4 EB 78 */	mr r4, r29
/* 805B53D0  4B E2 64 A5 */	bl mPlib_check_label_player_demo_wait
/* 805B53D4  2C 03 00 00 */	cmpwi r3, 0
/* 805B53D8  41 82 00 50 */	beq lbl_805B5428
/* 805B53DC  3C 80 80 65 */	lis r4, lit_456@ha /* 0x8064A96C@ha */
/* 805B53E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B53E4  C0 04 A9 6C */	lfs f0, lit_456@l(r4)  /* 0x8064A96C@l */
/* 805B53E8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 805B53EC  D0 1D 02 D4 */	stfs f0, 0x2d4(r29)
/* 805B53F0  80 9D 02 B4 */	lwz r4, 0x2b4(r29)
/* 805B53F4  1C 64 26 B0 */	mulli r3, r4, 0x26b0
/* 805B53F8  90 9F 01 94 */	stw r4, 0x194(r31)
/* 805B53FC  7C 60 1A 14 */	add r3, r0, r3
/* 805B5400  3C 63 00 01 */	addis r3, r3, 1
/* 805B5404  38 63 9C E8 */	addi r3, r3, -25368
/* 805B5408  4B E2 AC 3D */	bl mPr_NullCheckPersonalID
/* 805B540C  2C 03 00 00 */	cmpwi r3, 0
/* 805B5410  38 00 00 02 */	li r0, 2
/* 805B5414  41 82 00 08 */	beq lbl_805B541C
/* 805B5418  38 00 00 01 */	li r0, 1
lbl_805B541C:
/* 805B541C  90 1F 01 90 */	stw r0, 0x190(r31)
/* 805B5420  38 60 00 02 */	li r3, 2
/* 805B5424  48 00 00 2C */	b lbl_805B5450
lbl_805B5428:
/* 805B5428  7F A3 EB 78 */	mr r3, r29
/* 805B542C  7F C4 F3 78 */	mr r4, r30
/* 805B5430  4B FF FD E1 */	bl aMHS_check_player_sub
/* 805B5434  2C 03 00 01 */	cmpwi r3, 1
/* 805B5438  40 82 00 14 */	bne lbl_805B544C
/* 805B543C  7F C3 F3 78 */	mr r3, r30
/* 805B5440  7F A5 EB 78 */	mr r5, r29
/* 805B5444  38 80 00 00 */	li r4, 0
/* 805B5448  4B E2 59 3D */	bl mPlib_request_main_demo_wait_type1
lbl_805B544C:
/* 805B544C  38 60 00 00 */	li r3, 0
lbl_805B5450:
/* 805B5450  39 61 00 20 */	addi r11, r1, 0x20
/* 805B5454  4B AE 5A CD */	bl func_8009AF20
/* 805B5458  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B545C  7C 08 03 A6 */	mtlr r0
/* 805B5460  38 21 00 20 */	addi r1, r1, 0x20
/* 805B5464  4E 80 00 20 */	blr 
