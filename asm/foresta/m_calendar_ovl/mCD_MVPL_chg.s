lbl_805C77F8:
/* 805C77F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C77FC  7C 08 02 A6 */	mflr r0
/* 805C7800  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C7804  39 61 00 20 */	addi r11, r1, 0x20
/* 805C7808  4B AD 36 C9 */	bl func_8009AED0
/* 805C780C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C7810  83 C3 09 EC */	lwz r30, 0x9ec(r3)
/* 805C7814  88 1E 10 55 */	lbz r0, 0x1055(r30)
/* 805C7818  28 00 00 03 */	cmplwi r0, 3
/* 805C781C  40 82 00 10 */	bne lbl_805C782C
/* 805C7820  3B FE 10 2C */	addi r31, r30, 0x102c
/* 805C7824  3B BE 10 30 */	addi r29, r30, 0x1030
/* 805C7828  48 00 00 0C */	b lbl_805C7834
lbl_805C782C:
/* 805C782C  3B FE 10 30 */	addi r31, r30, 0x1030
/* 805C7830  3B BE 10 2C */	addi r29, r30, 0x102c
lbl_805C7834:
/* 805C7834  3C C0 80 65 */	lis r6, lit_538@ha /* 0x8064AE40@ha */
/* 805C7838  3C A0 80 65 */	lis r5, lit_835@ha /* 0x8064AE54@ha */
/* 805C783C  3C 80 80 65 */	lis r4, lit_836@ha /* 0x8064AE58@ha */
/* 805C7840  3C 60 80 65 */	lis r3, lit_837@ha /* 0x8064AE5C@ha */
/* 805C7844  38 E6 AE 40 */	addi r7, r6, lit_538@l /* 0x8064AE40@l */
/* 805C7848  38 C5 AE 54 */	addi r6, r5, lit_835@l /* 0x8064AE54@l */
/* 805C784C  38 A4 AE 58 */	addi r5, r4, lit_836@l /* 0x8064AE58@l */
/* 805C7850  38 83 AE 5C */	addi r4, r3, lit_837@l /* 0x8064AE5C@l */
/* 805C7854  C0 27 00 00 */	lfs f1, 0(r7)
/* 805C7858  7F A3 EB 78 */	mr r3, r29
/* 805C785C  C0 46 00 00 */	lfs f2, 0(r6)
/* 805C7860  C0 65 00 00 */	lfs f3, 0(r5)
/* 805C7864  C0 84 00 00 */	lfs f4, 0(r4)
/* 805C7868  4B DF 39 49 */	bl add_calc
/* 805C786C  FC 20 0A 10 */	fabs f1, f1
/* 805C7870  3C 60 80 65 */	lis r3, lit_838@ha /* 0x8064AE60@ha */
/* 805C7874  C0 03 AE 60 */	lfs f0, lit_838@l(r3)  /* 0x8064AE60@l */
/* 805C7878  FC 20 08 18 */	frsp f1, f1
/* 805C787C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C7880  40 80 00 18 */	bge lbl_805C7898
/* 805C7884  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C7888  3B 80 00 01 */	li r28, 1
/* 805C788C  C0 03 AE 40 */	lfs f0, lit_538@l(r3)  /* 0x8064AE40@l */
/* 805C7890  D0 1D 00 00 */	stfs f0, 0(r29)
/* 805C7894  48 00 00 08 */	b lbl_805C789C
lbl_805C7898:
/* 805C7898  3B 80 00 00 */	li r28, 0
lbl_805C789C:
/* 805C789C  3C C0 80 65 */	lis r6, lit_805@ha /* 0x8064AE50@ha */
/* 805C78A0  3C A0 80 65 */	lis r5, lit_835@ha /* 0x8064AE54@ha */
/* 805C78A4  3C 80 80 65 */	lis r4, lit_836@ha /* 0x8064AE58@ha */
/* 805C78A8  3C 60 80 65 */	lis r3, lit_837@ha /* 0x8064AE5C@ha */
/* 805C78AC  38 E6 AE 50 */	addi r7, r6, lit_805@l /* 0x8064AE50@l */
/* 805C78B0  38 C5 AE 54 */	addi r6, r5, lit_835@l /* 0x8064AE54@l */
/* 805C78B4  38 A4 AE 58 */	addi r5, r4, lit_836@l /* 0x8064AE58@l */
/* 805C78B8  38 83 AE 5C */	addi r4, r3, lit_837@l /* 0x8064AE5C@l */
/* 805C78BC  C0 27 00 00 */	lfs f1, 0(r7)
/* 805C78C0  7F E3 FB 78 */	mr r3, r31
/* 805C78C4  C0 46 00 00 */	lfs f2, 0(r6)
/* 805C78C8  C0 65 00 00 */	lfs f3, 0(r5)
/* 805C78CC  C0 84 00 00 */	lfs f4, 0(r4)
/* 805C78D0  4B DF 38 E1 */	bl add_calc
/* 805C78D4  FC 20 0A 10 */	fabs f1, f1
/* 805C78D8  3C 60 80 65 */	lis r3, lit_838@ha /* 0x8064AE60@ha */
/* 805C78DC  C0 03 AE 60 */	lfs f0, lit_838@l(r3)  /* 0x8064AE60@l */
/* 805C78E0  FC 20 08 18 */	frsp f1, f1
/* 805C78E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C78E8  40 80 00 18 */	bge lbl_805C7900
/* 805C78EC  3C 60 80 65 */	lis r3, lit_805@ha /* 0x8064AE50@ha */
/* 805C78F0  38 00 00 01 */	li r0, 1
/* 805C78F4  C0 03 AE 50 */	lfs f0, lit_805@l(r3)  /* 0x8064AE50@l */
/* 805C78F8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 805C78FC  48 00 00 08 */	b lbl_805C7904
lbl_805C7900:
/* 805C7900  38 00 00 00 */	li r0, 0
lbl_805C7904:
/* 805C7904  2C 1C 00 00 */	cmpwi r28, 0
/* 805C7908  41 82 00 74 */	beq lbl_805C797C
/* 805C790C  2C 00 00 00 */	cmpwi r0, 0
/* 805C7910  41 82 00 6C */	beq lbl_805C797C
/* 805C7914  88 1E 10 55 */	lbz r0, 0x1055(r30)
/* 805C7918  28 00 00 03 */	cmplwi r0, 3
/* 805C791C  40 82 00 58 */	bne lbl_805C7974
/* 805C7920  38 00 00 05 */	li r0, 5
/* 805C7924  98 1E 10 55 */	stb r0, 0x1055(r30)
/* 805C7928  88 7E 10 56 */	lbz r3, 0x1056(r30)
/* 805C792C  88 1E 10 59 */	lbz r0, 0x1059(r30)
/* 805C7930  7C 03 00 40 */	cmplw r3, r0
/* 805C7934  40 82 00 24 */	bne lbl_805C7958
/* 805C7938  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C793C  7F C3 F3 78 */	mr r3, r30
/* 805C7940  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805C7944  3C 84 00 02 */	addis r4, r4, 2
/* 805C7948  88 84 61 23 */	lbz r4, 0x6123(r4)
/* 805C794C  4B FF F3 09 */	bl mDC_get_calendar_day_position
/* 805C7950  98 7E 10 57 */	stb r3, 0x1057(r30)
/* 805C7954  48 00 00 14 */	b lbl_805C7968
lbl_805C7958:
/* 805C7958  7F C3 F3 78 */	mr r3, r30
/* 805C795C  38 80 00 01 */	li r4, 1
/* 805C7960  4B FF F2 F5 */	bl mDC_get_calendar_day_position
/* 805C7964  98 7E 10 57 */	stb r3, 0x1057(r30)
lbl_805C7968:
/* 805C7968  7F C3 F3 78 */	mr r3, r30
/* 805C796C  4B FF F1 61 */	bl mDC_set_disp_table
/* 805C7970  48 00 00 0C */	b lbl_805C797C
lbl_805C7974:
/* 805C7974  38 00 00 00 */	li r0, 0
/* 805C7978  98 1E 10 55 */	stb r0, 0x1055(r30)
lbl_805C797C:
/* 805C797C  39 61 00 20 */	addi r11, r1, 0x20
/* 805C7980  4B AD 35 9D */	bl func_8009AF1C
/* 805C7984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C7988  7C 08 03 A6 */	mtlr r0
/* 805C798C  38 21 00 20 */	addi r1, r1, 0x20
/* 805C7990  4E 80 00 20 */	blr 
