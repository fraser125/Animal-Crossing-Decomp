lbl_8042A480:
/* 8042A480  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042A484  7C 08 02 A6 */	mflr r0
/* 8042A488  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042A48C  39 61 00 30 */	addi r11, r1, 0x30
/* 8042A490  4B C7 0A 41 */	bl func_8009AED0
/* 8042A494  3C 80 80 64 */	lis r4, lit_487@ha /* 0x80644028@ha */
/* 8042A498  AB 88 01 78 */	lha r28, 0x178(r8)
/* 8042A49C  38 E4 40 28 */	addi r7, r4, lit_487@l /* 0x80644028@l */
/* 8042A4A0  7C 7D 1B 78 */	mr r29, r3
/* 8042A4A4  80 C7 00 00 */	lwz r6, 0(r7)
/* 8042A4A8  2C 1C 00 07 */	cmpwi r28, 7
/* 8042A4AC  80 87 00 04 */	lwz r4, 4(r7)
/* 8042A4B0  7C BE 2B 78 */	mr r30, r5
/* 8042A4B4  80 07 00 08 */	lwz r0, 8(r7)
/* 8042A4B8  90 C1 00 08 */	stw r6, 8(r1)
/* 8042A4BC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8042A4C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042A4C4  40 82 00 08 */	bne lbl_8042A4CC
/* 8042A4C8  4B F8 E2 51 */	bl Global_kankyo_set_room_prim
lbl_8042A4CC:
/* 8042A4CC  1F FC 00 18 */	mulli r31, r28, 0x18
/* 8042A4D0  3C 60 80 68 */	lis r3, data_80683F78@ha /* 0x80683F78@ha */
/* 8042A4D4  38 03 3F 78 */	addi r0, r3, data_80683F78@l /* 0x80683F78@l */
/* 8042A4D8  7C 60 FA 14 */	add r3, r0, r31
/* 8042A4DC  A8 03 00 08 */	lha r0, 8(r3)
/* 8042A4E0  7C 1E 00 00 */	cmpw r30, r0
/* 8042A4E4  40 82 00 B8 */	bne lbl_8042A59C
/* 8042A4E8  83 DD 00 00 */	lwz r30, 0(r29)
/* 8042A4EC  38 61 00 08 */	addi r3, r1, 8
/* 8042A4F0  38 81 00 14 */	addi r4, r1, 0x14
/* 8042A4F4  4B FE 2F 11 */	bl Matrix_Position
/* 8042A4F8  4B FE 1C DD */	bl Matrix_push
/* 8042A4FC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8042A500  38 60 00 00 */	li r3, 0
/* 8042A504  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8042A508  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8042A50C  4B FE 1D F5 */	bl Matrix_translate
/* 8042A510  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042A514  38 80 00 01 */	li r4, 1
/* 8042A518  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042A51C  3C 63 00 02 */	addis r3, r3, 2
/* 8042A520  A8 03 61 2A */	lha r0, 0x612a(r3)
/* 8042A524  20 00 40 00 */	subfic r0, r0, 0x4000
/* 8042A528  7C 03 07 34 */	extsh r3, r0
/* 8042A52C  4B FE 22 C5 */	bl Matrix_RotateZ
/* 8042A530  3C 80 80 64 */	lis r4, lit_531@ha /* 0x80644034@ha */
/* 8042A534  38 60 00 01 */	li r3, 1
/* 8042A538  C0 24 40 34 */	lfs f1, lit_531@l(r4)  /* 0x80644034@l */
/* 8042A53C  FC 40 08 90 */	fmr f2, f1
/* 8042A540  FC 60 08 90 */	fmr f3, f1
/* 8042A544  4B FE 1E A9 */	bl Matrix_scale
/* 8042A548  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 8042A54C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042A550  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042A554  38 7C 00 08 */	addi r3, r28, 8
/* 8042A558  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042A55C  90 1C 00 00 */	stw r0, 0(r28)
/* 8042A560  80 7D 00 00 */	lwz r3, 0(r29)
/* 8042A564  4B FE 2E 71 */	bl _Matrix_to_Mtx_new
/* 8042A568  90 7C 00 04 */	stw r3, 4(r28)
/* 8042A56C  4B FE 1C A9 */	bl Matrix_pull
/* 8042A570  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8042A574  3C 60 80 68 */	lis r3, data_80683F78@ha /* 0x80683F78@ha */
/* 8042A578  38 03 3F 78 */	addi r0, r3, data_80683F78@l /* 0x80683F78@l */
/* 8042A57C  3C 80 DE 00 */	lis r4, 0xde00
/* 8042A580  38 65 00 08 */	addi r3, r5, 8
/* 8042A584  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042A588  7C 60 FA 14 */	add r3, r0, r31
/* 8042A58C  90 85 00 00 */	stw r4, 0(r5)
/* 8042A590  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8042A594  90 05 00 04 */	stw r0, 4(r5)
/* 8042A598  48 00 00 C0 */	b lbl_8042A658
lbl_8042A59C:
/* 8042A59C  A8 03 00 0A */	lha r0, 0xa(r3)
/* 8042A5A0  7C 1E 00 00 */	cmpw r30, r0
/* 8042A5A4  40 82 00 B4 */	bne lbl_8042A658
/* 8042A5A8  83 DD 00 00 */	lwz r30, 0(r29)
/* 8042A5AC  38 61 00 08 */	addi r3, r1, 8
/* 8042A5B0  38 81 00 14 */	addi r4, r1, 0x14
/* 8042A5B4  4B FE 2E 51 */	bl Matrix_Position
/* 8042A5B8  4B FE 1C 1D */	bl Matrix_push
/* 8042A5BC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8042A5C0  38 60 00 00 */	li r3, 0
/* 8042A5C4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8042A5C8  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8042A5CC  4B FE 1D 35 */	bl Matrix_translate
/* 8042A5D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8042A5D4  38 80 00 01 */	li r4, 1
/* 8042A5D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8042A5DC  3C 63 00 02 */	addis r3, r3, 2
/* 8042A5E0  A8 03 61 28 */	lha r0, 0x6128(r3)
/* 8042A5E4  20 00 40 00 */	subfic r0, r0, 0x4000
/* 8042A5E8  7C 03 07 34 */	extsh r3, r0
/* 8042A5EC  4B FE 22 05 */	bl Matrix_RotateZ
/* 8042A5F0  3C 80 80 64 */	lis r4, lit_531@ha /* 0x80644034@ha */
/* 8042A5F4  38 60 00 01 */	li r3, 1
/* 8042A5F8  C0 24 40 34 */	lfs f1, lit_531@l(r4)  /* 0x80644034@l */
/* 8042A5FC  FC 40 08 90 */	fmr f2, f1
/* 8042A600  FC 60 08 90 */	fmr f3, f1
/* 8042A604  4B FE 1D E9 */	bl Matrix_scale
/* 8042A608  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 8042A60C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042A610  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042A614  38 7C 00 08 */	addi r3, r28, 8
/* 8042A618  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042A61C  90 1C 00 00 */	stw r0, 0(r28)
/* 8042A620  80 7D 00 00 */	lwz r3, 0(r29)
/* 8042A624  4B FE 2D B1 */	bl _Matrix_to_Mtx_new
/* 8042A628  90 7C 00 04 */	stw r3, 4(r28)
/* 8042A62C  4B FE 1B E9 */	bl Matrix_pull
/* 8042A630  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8042A634  3C 60 80 68 */	lis r3, data_80683F78@ha /* 0x80683F78@ha */
/* 8042A638  38 03 3F 78 */	addi r0, r3, data_80683F78@l /* 0x80683F78@l */
/* 8042A63C  3C 80 DE 00 */	lis r4, 0xde00
/* 8042A640  38 65 00 08 */	addi r3, r5, 8
/* 8042A644  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042A648  7C 60 FA 14 */	add r3, r0, r31
/* 8042A64C  90 85 00 00 */	stw r4, 0(r5)
/* 8042A650  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8042A654  90 05 00 04 */	stw r0, 4(r5)
lbl_8042A658:
/* 8042A658  38 60 00 01 */	li r3, 1
/* 8042A65C  39 61 00 30 */	addi r11, r1, 0x30
/* 8042A660  4B C7 08 BD */	bl func_8009AF1C
/* 8042A664  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042A668  7C 08 03 A6 */	mtlr r0
/* 8042A66C  38 21 00 30 */	addi r1, r1, 0x30
/* 8042A670  4E 80 00 20 */	blr 
