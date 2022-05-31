lbl_805D5B1C:
/* 805D5B1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D5B20  7C 08 02 A6 */	mflr r0
/* 805D5B24  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D5B28  39 61 00 30 */	addi r11, r1, 0x30
/* 805D5B2C  4B AC 53 A1 */	bl func_8009AECC
/* 805D5B30  3C C0 80 65 */	lis r6, lit_1909@ha /* 0x8064B180@ha */
/* 805D5B34  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805D5B38  C0 26 B1 80 */	lfs f1, lit_1909@l(r6)  /* 0x8064B180@l */
/* 805D5B3C  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064B16C@ha */
/* 805D5B40  C0 63 B1 6C */	lfs f3, lit_605@l(r3)  /* 0x8064B16C@l */
/* 805D5B44  7C BB 2B 78 */	mr r27, r5
/* 805D5B48  FC 40 08 90 */	fmr f2, f1
/* 805D5B4C  83 A4 00 00 */	lwz r29, 0(r4)
/* 805D5B50  83 87 09 E0 */	lwz r28, 0x9e0(r7)
/* 805D5B54  38 60 00 00 */	li r3, 0
/* 805D5B58  4B E3 68 95 */	bl Matrix_scale
/* 805D5B5C  3C 60 80 65 */	lis r3, lit_1910@ha /* 0x8064B184@ha */
/* 805D5B60  C0 3B 00 18 */	lfs f1, 0x18(r27)
/* 805D5B64  C0 63 B1 84 */	lfs f3, lit_1910@l(r3)  /* 0x8064B184@l */
/* 805D5B68  38 60 00 01 */	li r3, 1
/* 805D5B6C  C0 5B 00 1C */	lfs f2, 0x1c(r27)
/* 805D5B70  4B E3 67 91 */	bl Matrix_translate
/* 805D5B74  83 7D 02 D0 */	lwz r27, 0x2d0(r29)
/* 805D5B78  3C 00 DE 00 */	lis r0, 0xde00
/* 805D5B7C  3C 60 80 A5 */	lis r3, des_win_before@ha /* 0x80A52880@ha */
/* 805D5B80  90 1B 00 00 */	stw r0, 0(r27)
/* 805D5B84  38 03 28 80 */	addi r0, r3, des_win_before@l /* 0x80A52880@l */
/* 805D5B88  90 1B 00 04 */	stw r0, 4(r27)
/* 805D5B8C  4B E3 66 49 */	bl Matrix_push
/* 805D5B90  88 1C 06 A7 */	lbz r0, 0x6a7(r28)
/* 805D5B94  28 00 00 03 */	cmplwi r0, 3
/* 805D5B98  40 82 00 B0 */	bne lbl_805D5C48
/* 805D5B9C  88 9C 06 9E */	lbz r4, 0x69e(r28)
/* 805D5BA0  3C A0 43 30 */	lis r5, 0x4330
/* 805D5BA4  88 1C 06 9F */	lbz r0, 0x69f(r28)
/* 805D5BA8  3C E0 80 65 */	lis r7, lit_1994@ha /* 0x8064B190@ha */
/* 805D5BAC  1C C4 00 18 */	mulli r6, r4, 0x18
/* 805D5BB0  3C 60 80 65 */	lis r3, lit_609@ha /* 0x8064B174@ha */
/* 805D5BB4  90 A1 00 08 */	stw r5, 8(r1)
/* 805D5BB8  38 83 B1 74 */	addi r4, r3, lit_609@l /* 0x8064B174@l */
/* 805D5BBC  C0 A7 B1 90 */	lfs f5, lit_1994@l(r7)  /* 0x8064B190@l */
/* 805D5BC0  1C 00 00 18 */	mulli r0, r0, 0x18
/* 805D5BC4  C8 84 00 00 */	lfd f4, 0(r4)
/* 805D5BC8  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 805D5BCC  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D5BD0  3C 60 80 65 */	lis r3, lit_1909@ha /* 0x8064B180@ha */
/* 805D5BD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D5BD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805D5BDC  38 83 B1 80 */	addi r4, r3, lit_1909@l /* 0x8064B180@l */
/* 805D5BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D5BE4  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D5BE8  EC 20 20 28 */	fsubs f1, f0, f4
/* 805D5BEC  C0 63 B1 8C */	lfs f3, lit_1949@l(r3)  /* 0x8064B18C@l */
/* 805D5BF0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805D5BF4  38 60 00 01 */	li r3, 1
/* 805D5BF8  C0 44 00 00 */	lfs f2, 0(r4)
/* 805D5BFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D5C00  EC 25 08 2A */	fadds f1, f5, f1
/* 805D5C04  EC 00 20 28 */	fsubs f0, f0, f4
/* 805D5C08  EC 42 00 28 */	fsubs f2, f2, f0
/* 805D5C0C  4B E3 66 F5 */	bl Matrix_translate
/* 805D5C10  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D5C14  7F A3 EB 78 */	mr r3, r29
/* 805D5C18  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D5C1C  90 1B 00 08 */	stw r0, 8(r27)
/* 805D5C20  4B E3 77 B5 */	bl _Matrix_to_Mtx_new
/* 805D5C24  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805D5C28  90 7B 00 0C */	stw r3, 0xc(r27)
/* 805D5C2C  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805D5C30  3C 60 B9 32 */	lis r3, 0xB932 /* 0xB93232FF@ha */
/* 805D5C34  90 1B 00 10 */	stw r0, 0x10(r27)
/* 805D5C38  38 03 32 FF */	addi r0, r3, 0x32FF /* 0xB93232FF@l */
/* 805D5C3C  90 1B 00 14 */	stw r0, 0x14(r27)
/* 805D5C40  3B 7B 00 18 */	addi r27, r27, 0x18
/* 805D5C44  48 00 00 88 */	b lbl_805D5CCC
lbl_805D5C48:
/* 805D5C48  88 9C 06 9F */	lbz r4, 0x69f(r28)
/* 805D5C4C  3C 00 43 30 */	lis r0, 0x4330
/* 805D5C50  3C 60 80 65 */	lis r3, lit_609@ha /* 0x8064B174@ha */
/* 805D5C54  3C A0 80 65 */	lis r5, lit_1909@ha /* 0x8064B180@ha */
/* 805D5C58  1C 84 00 18 */	mulli r4, r4, 0x18
/* 805D5C5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D5C60  C8 43 B1 74 */	lfd f2, lit_609@l(r3)  /* 0x8064B174@l */
/* 805D5C64  3C C0 80 65 */	lis r6, lit_1994@ha /* 0x8064B190@ha */
/* 805D5C68  C0 85 B1 80 */	lfs f4, lit_1909@l(r5)  /* 0x8064B180@l */
/* 805D5C6C  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D5C70  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 805D5C74  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D5C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D5C7C  38 60 00 01 */	li r3, 1
/* 805D5C80  C0 26 B1 90 */	lfs f1, lit_1994@l(r6)  /* 0x8064B190@l */
/* 805D5C84  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D5C88  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D5C8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D5C90  EC 44 00 28 */	fsubs f2, f4, f0
/* 805D5C94  4B E3 66 6D */	bl Matrix_translate
/* 805D5C98  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D5C9C  7F A3 EB 78 */	mr r3, r29
/* 805D5CA0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D5CA4  90 1B 00 08 */	stw r0, 8(r27)
/* 805D5CA8  4B E3 77 2D */	bl _Matrix_to_Mtx_new
/* 805D5CAC  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805D5CB0  90 7B 00 0C */	stw r3, 0xc(r27)
/* 805D5CB4  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805D5CB8  3C 60 D7 C4 */	lis r3, 0xD7C4 /* 0xD7C3C3FF@ha */
/* 805D5CBC  90 1B 00 10 */	stw r0, 0x10(r27)
/* 805D5CC0  38 03 C3 FF */	addi r0, r3, 0xC3FF /* 0xD7C3C3FF@l */
/* 805D5CC4  90 1B 00 14 */	stw r0, 0x14(r27)
/* 805D5CC8  3B 7B 00 18 */	addi r27, r27, 0x18
lbl_805D5CCC:
/* 805D5CCC  3C 00 DE 00 */	lis r0, 0xde00
/* 805D5CD0  3C 60 80 A4 */	lis r3, des_win_marking_model@ha /* 0x80A47B40@ha */
/* 805D5CD4  90 1B 00 00 */	stw r0, 0(r27)
/* 805D5CD8  3B C3 7B 40 */	addi r30, r3, des_win_marking_model@l /* 0x80A47B40@l */
/* 805D5CDC  93 DB 00 04 */	stw r30, 4(r27)
/* 805D5CE0  4B E3 65 35 */	bl Matrix_pull
/* 805D5CE4  4B E3 64 F1 */	bl Matrix_push
/* 805D5CE8  88 7C 06 A4 */	lbz r3, 0x6a4(r28)
/* 805D5CEC  3C 00 43 30 */	lis r0, 0x4330
/* 805D5CF0  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064B174@ha */
/* 805D5CF4  3C C0 80 65 */	lis r6, lit_1995@ha /* 0x8064B194@ha */
/* 805D5CF8  1C A3 00 0A */	mulli r5, r3, 0xa
/* 805D5CFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D5D00  C8 44 B1 74 */	lfd f2, lit_609@l(r4)  /* 0x8064B174@l */
/* 805D5D04  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D5D08  C0 26 B1 94 */	lfs f1, lit_1995@l(r6)  /* 0x8064B194@l */
/* 805D5D0C  20 05 00 3F */	subfic r0, r5, 0x3f
/* 805D5D10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D5D14  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D5D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D5D1C  38 60 00 01 */	li r3, 1
/* 805D5D20  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D5D24  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D5D28  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D5D2C  4B E3 65 D5 */	bl Matrix_translate
/* 805D5D30  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D5D34  7F A3 EB 78 */	mr r3, r29
/* 805D5D38  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D5D3C  90 1B 00 08 */	stw r0, 8(r27)
/* 805D5D40  4B E3 76 95 */	bl _Matrix_to_Mtx_new
/* 805D5D44  90 7B 00 0C */	stw r3, 0xc(r27)
/* 805D5D48  88 1C 06 A7 */	lbz r0, 0x6a7(r28)
/* 805D5D4C  28 00 00 01 */	cmplwi r0, 1
/* 805D5D50  41 82 00 38 */	beq lbl_805D5D88
/* 805D5D54  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805D5D58  3C 80 CD BA */	lis r4, 0xCDBA /* 0xCDB9B9FF@ha */
/* 805D5D5C  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805D5D60  3C 60 69 55 */	lis r3, 0x6955 /* 0x695573FF@ha */
/* 805D5D64  90 1B 00 10 */	stw r0, 0x10(r27)
/* 805D5D68  38 A4 B9 FF */	addi r5, r4, 0xB9FF /* 0xCDB9B9FF@l */
/* 805D5D6C  3C 80 FB 00 */	lis r4, 0xfb00
/* 805D5D70  38 03 73 FF */	addi r0, r3, 0x73FF /* 0x695573FF@l */
/* 805D5D74  90 BB 00 14 */	stw r5, 0x14(r27)
/* 805D5D78  90 9B 00 18 */	stw r4, 0x18(r27)
/* 805D5D7C  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 805D5D80  3B 7B 00 20 */	addi r27, r27, 0x20
/* 805D5D84  48 00 00 34 */	b lbl_805D5DB8
lbl_805D5D88:
/* 805D5D88  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805D5D8C  3C 80 EB EC */	lis r4, 0xEBEC /* 0xEBEBEBFF@ha */
/* 805D5D90  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805D5D94  3C 60 69 55 */	lis r3, 0x6955 /* 0x695573FF@ha */
/* 805D5D98  90 1B 00 10 */	stw r0, 0x10(r27)
/* 805D5D9C  38 A4 EB FF */	addi r5, r4, 0xEBFF /* 0xEBEBEBFF@l */
/* 805D5DA0  3C 80 FB 00 */	lis r4, 0xfb00
/* 805D5DA4  38 03 73 FF */	addi r0, r3, 0x73FF /* 0x695573FF@l */
/* 805D5DA8  90 BB 00 14 */	stw r5, 0x14(r27)
/* 805D5DAC  90 9B 00 18 */	stw r4, 0x18(r27)
/* 805D5DB0  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 805D5DB4  3B 7B 00 20 */	addi r27, r27, 0x20
lbl_805D5DB8:
/* 805D5DB8  3C 00 DE 00 */	lis r0, 0xde00
/* 805D5DBC  3C 60 80 A4 */	lis r3, des_win_marking2T_model@ha /* 0x80A47B78@ha */
/* 805D5DC0  90 1B 00 00 */	stw r0, 0(r27)
/* 805D5DC4  3B E3 7B 78 */	addi r31, r3, des_win_marking2T_model@l /* 0x80A47B78@l */
/* 805D5DC8  93 FB 00 04 */	stw r31, 4(r27)
/* 805D5DCC  3B 7B 00 08 */	addi r27, r27, 8
/* 805D5DD0  4B E3 64 45 */	bl Matrix_pull
/* 805D5DD4  88 1C 06 A7 */	lbz r0, 0x6a7(r28)
/* 805D5DD8  28 00 00 01 */	cmplwi r0, 1
/* 805D5DDC  40 82 01 18 */	bne lbl_805D5EF4
/* 805D5DE0  4B E3 63 F5 */	bl Matrix_push
/* 805D5DE4  88 1C 06 A5 */	lbz r0, 0x6a5(r28)
/* 805D5DE8  28 00 00 00 */	cmplwi r0, 0
/* 805D5DEC  40 82 00 68 */	bne lbl_805D5E54
/* 805D5DF0  3C C0 80 65 */	lis r6, lit_1995@ha /* 0x8064B194@ha */
/* 805D5DF4  3C A0 80 65 */	lis r5, lit_1996@ha /* 0x8064B198@ha */
/* 805D5DF8  3C 80 80 65 */	lis r4, lit_1949@ha /* 0x8064B18C@ha */
/* 805D5DFC  C0 26 B1 94 */	lfs f1, lit_1995@l(r6)  /* 0x8064B194@l */
/* 805D5E00  C0 45 B1 98 */	lfs f2, lit_1996@l(r5)  /* 0x8064B198@l */
/* 805D5E04  38 60 00 01 */	li r3, 1
/* 805D5E08  C0 64 B1 8C */	lfs f3, lit_1949@l(r4)  /* 0x8064B18C@l */
/* 805D5E0C  4B E3 64 F5 */	bl Matrix_translate
/* 805D5E10  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D5E14  7F A3 EB 78 */	mr r3, r29
/* 805D5E18  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D5E1C  90 1B 00 00 */	stw r0, 0(r27)
/* 805D5E20  4B E3 75 B5 */	bl _Matrix_to_Mtx_new
/* 805D5E24  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805D5E28  90 7B 00 04 */	stw r3, 4(r27)
/* 805D5E2C  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805D5E30  3C 60 B9 32 */	lis r3, 0xB932 /* 0xB93232FF@ha */
/* 805D5E34  90 1B 00 08 */	stw r0, 8(r27)
/* 805D5E38  38 63 32 FF */	addi r3, r3, 0x32FF /* 0xB93232FF@l */
/* 805D5E3C  3C 00 DE 00 */	lis r0, 0xde00
/* 805D5E40  90 7B 00 0C */	stw r3, 0xc(r27)
/* 805D5E44  90 1B 00 10 */	stw r0, 0x10(r27)
/* 805D5E48  93 DB 00 14 */	stw r30, 0x14(r27)
/* 805D5E4C  3B 7B 00 18 */	addi r27, r27, 0x18
/* 805D5E50  48 00 00 A0 */	b lbl_805D5EF0
lbl_805D5E54:
/* 805D5E54  1C 80 00 0A */	mulli r4, r0, 0xa
/* 805D5E58  3C 00 43 30 */	lis r0, 0x4330
/* 805D5E5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D5E60  3C A0 80 65 */	lis r5, lit_1995@ha /* 0x8064B194@ha */
/* 805D5E64  3C 60 80 65 */	lis r3, lit_609@ha /* 0x8064B174@ha */
/* 805D5E68  C0 25 B1 94 */	lfs f1, lit_1995@l(r5)  /* 0x8064B194@l */
/* 805D5E6C  20 04 00 3F */	subfic r0, r4, 0x3f
/* 805D5E70  38 83 B1 74 */	addi r4, r3, lit_609@l /* 0x8064B174@l */
/* 805D5E74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D5E78  C8 44 00 00 */	lfd f2, 0(r4)
/* 805D5E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D5E80  3C 60 80 65 */	lis r3, lit_1949@ha /* 0x8064B18C@ha */
/* 805D5E84  38 83 B1 8C */	addi r4, r3, lit_1949@l /* 0x8064B18C@l */
/* 805D5E88  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D5E8C  38 60 00 01 */	li r3, 1
/* 805D5E90  C0 64 00 00 */	lfs f3, 0(r4)
/* 805D5E94  EC 40 10 28 */	fsubs f2, f0, f2
/* 805D5E98  4B E3 64 69 */	bl Matrix_translate
/* 805D5E9C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D5EA0  7F A3 EB 78 */	mr r3, r29
/* 805D5EA4  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D5EA8  90 1B 00 00 */	stw r0, 0(r27)
/* 805D5EAC  4B E3 75 29 */	bl _Matrix_to_Mtx_new
/* 805D5EB0  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805D5EB4  90 7B 00 04 */	stw r3, 4(r27)
/* 805D5EB8  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805D5EBC  3C 60 FF 50 */	lis r3, 0xFF50 /* 0xFF5050FF@ha */
/* 805D5EC0  90 1B 00 08 */	stw r0, 8(r27)
/* 805D5EC4  38 03 50 FF */	addi r0, r3, 0x50FF /* 0xFF5050FF@l */
/* 805D5EC8  3C 60 1E 1E */	lis r3, 0x1E1E /* 0x1E1E1EFF@ha */
/* 805D5ECC  3C 80 FB 00 */	lis r4, 0xfb00
/* 805D5ED0  90 1B 00 0C */	stw r0, 0xc(r27)
/* 805D5ED4  38 63 1E FF */	addi r3, r3, 0x1EFF /* 0x1E1E1EFF@l */
/* 805D5ED8  3C 00 DE 00 */	lis r0, 0xde00
/* 805D5EDC  90 9B 00 10 */	stw r4, 0x10(r27)
/* 805D5EE0  90 7B 00 14 */	stw r3, 0x14(r27)
/* 805D5EE4  90 1B 00 18 */	stw r0, 0x18(r27)
/* 805D5EE8  93 FB 00 1C */	stw r31, 0x1c(r27)
/* 805D5EEC  3B 7B 00 20 */	addi r27, r27, 0x20
lbl_805D5EF0:
/* 805D5EF0  4B E3 63 25 */	bl Matrix_pull
lbl_805D5EF4:
/* 805D5EF4  93 7D 02 D0 */	stw r27, 0x2d0(r29)
/* 805D5EF8  39 61 00 30 */	addi r11, r1, 0x30
/* 805D5EFC  4B AC 50 1D */	bl func_8009AF18
/* 805D5F00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D5F04  7C 08 03 A6 */	mtlr r0
/* 805D5F08  38 21 00 30 */	addi r1, r1, 0x30
/* 805D5F0C  4E 80 00 20 */	blr 
