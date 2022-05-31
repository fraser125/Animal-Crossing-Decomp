lbl_805419F4:
/* 805419F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805419F8  7C 08 02 A6 */	mflr r0
/* 805419FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80541A00  39 61 00 60 */	addi r11, r1, 0x60
/* 80541A04  4B B5 94 B9 */	bl func_8009AEBC
/* 80541A08  7C 77 1B 78 */	mr r23, r3
/* 80541A0C  7C B9 2B 78 */	mr r25, r5
/* 80541A10  88 03 09 30 */	lbz r0, 0x930(r3)
/* 80541A14  7C 98 23 78 */	mr r24, r4
/* 80541A18  7C DA 33 78 */	mr r26, r6
/* 80541A1C  7C FB 3B 78 */	mr r27, r7
/* 80541A20  7C 00 07 74 */	extsb r0, r0
/* 80541A24  38 60 00 00 */	li r3, 0
/* 80541A28  7C 00 C8 00 */	cmpw r0, r25
/* 80541A2C  40 82 00 1C */	bne lbl_80541A48
/* 80541A30  88 17 09 31 */	lbz r0, 0x931(r23)
/* 80541A34  7C 00 07 74 */	extsb r0, r0
/* 80541A38  7C 00 D0 00 */	cmpw r0, r26
/* 80541A3C  40 82 00 0C */	bne lbl_80541A48
/* 80541A40  2C 1B 00 01 */	cmpwi r27, 1
/* 80541A44  40 82 02 F8 */	bne lbl_80541D3C
lbl_80541A48:
/* 80541A48  A8 77 00 36 */	lha r3, 0x36(r23)
/* 80541A4C  3C 80 81 1F */	lis r4, data_811EBD30@ha /* 0x811EBD30@ha */
/* 80541A50  38 A4 BD 30 */	addi r5, r4, data_811EBD30@l /* 0x811EBD30@l */
/* 80541A54  3B 80 00 00 */	li r28, 0
/* 80541A58  38 03 20 00 */	addi r0, r3, 0x2000
/* 80541A5C  3C 80 80 6A */	lis r4, aNPC_drt_table@ha /* 0x806A3D90@ha */
/* 80541A60  83 E5 00 00 */	lwz r31, 0(r5)
/* 80541A64  38 84 3D 90 */	addi r4, r4, aNPC_drt_table@l /* 0x806A3D90@l */
/* 80541A68  54 00 A7 3A */	rlwinm r0, r0, 0x14, 0x1c, 0x1d
/* 80541A6C  3C 60 81 1F */	lis r3, tbl@ha /* 0x811EBD34@ha */
/* 80541A70  7F A4 00 2E */	lwzx r29, r4, r0
/* 80541A74  3B DF 09 28 */	addi r30, r31, 0x928
/* 80541A78  38 63 BD 34 */	addi r3, r3, tbl@l /* 0x811EBD34@l */
/* 80541A7C  38 80 03 98 */	li r4, 0x398
/* 80541A80  4B B1 B5 E9 */	bl bzero
/* 80541A84  80 D7 00 28 */	lwz r6, 0x28(r23)
/* 80541A88  38 61 00 0C */	addi r3, r1, 0xc
/* 80541A8C  80 17 00 2C */	lwz r0, 0x2c(r23)
/* 80541A90  38 81 00 08 */	addi r4, r1, 8
/* 80541A94  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80541A98  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80541A9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80541AA0  80 17 00 30 */	lwz r0, 0x30(r23)
/* 80541AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80541AA8  4B E6 38 C1 */	bl mFI_Wpos2UtNum
/* 80541AAC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80541AB0  3C 60 81 1F */	lis r3, tbl@ha /* 0x811EBD34@ha */
/* 80541AB4  80 C1 00 08 */	lwz r6, 8(r1)
/* 80541AB8  38 A3 BD 34 */	addi r5, r3, tbl@l /* 0x811EBD34@l */
/* 80541ABC  38 E4 FF FF */	addi r7, r4, -1
/* 80541AC0  38 80 00 01 */	li r4, 1
/* 80541AC4  38 C6 FF FF */	addi r6, r6, -1
/* 80541AC8  38 00 00 00 */	li r0, 0
/* 80541ACC  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80541AD0  7F 03 C3 78 */	mr r3, r24
/* 80541AD4  90 C1 00 08 */	stw r6, 8(r1)
/* 80541AD8  90 E5 00 00 */	stw r7, 0(r5)
/* 80541ADC  90 C5 00 04 */	stw r6, 4(r5)
/* 80541AE0  93 A5 00 08 */	stw r29, 8(r5)
/* 80541AE4  93 C5 03 78 */	stw r30, 0x378(r5)
/* 80541AE8  9B 25 03 7C */	stb r25, 0x37c(r5)
/* 80541AEC  9B 45 03 7D */	stb r26, 0x37d(r5)
/* 80541AF0  98 85 03 8C */	stb r4, 0x38c(r5)
/* 80541AF4  98 05 03 8D */	stb r0, 0x38d(r5)
/* 80541AF8  4B E9 7B 49 */	bl get_player_actor_withoutCheck
/* 80541AFC  28 03 00 00 */	cmplwi r3, 0
/* 80541B00  40 82 00 1C */	bne lbl_80541B1C
/* 80541B04  3C 60 81 1F */	lis r3, tbl@ha /* 0x811EBD34@ha */
/* 80541B08  38 00 00 FF */	li r0, 0xff
/* 80541B0C  38 63 BD 34 */	addi r3, r3, tbl@l /* 0x811EBD34@l */
/* 80541B10  98 03 03 8E */	stb r0, 0x38e(r3)
/* 80541B14  98 03 03 8F */	stb r0, 0x38f(r3)
/* 80541B18  48 00 00 54 */	b lbl_80541B6C
lbl_80541B1C:
/* 80541B1C  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 80541B20  38 81 00 08 */	addi r4, r1, 8
/* 80541B24  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80541B28  38 A1 00 10 */	addi r5, r1, 0x10
/* 80541B2C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80541B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80541B34  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80541B38  38 61 00 0C */	addi r3, r1, 0xc
/* 80541B3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80541B40  4B E6 38 29 */	bl mFI_Wpos2UtNum
/* 80541B44  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80541B48  3C 60 81 1F */	lis r3, tbl@ha /* 0x811EBD34@ha */
/* 80541B4C  80 81 00 08 */	lwz r4, 8(r1)
/* 80541B50  38 63 BD 34 */	addi r3, r3, tbl@l /* 0x811EBD34@l */
/* 80541B54  38 A5 FF FF */	addi r5, r5, -1
/* 80541B58  38 04 FF FF */	addi r0, r4, -1
/* 80541B5C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80541B60  90 01 00 08 */	stw r0, 8(r1)
/* 80541B64  98 A3 03 8E */	stb r5, 0x38e(r3)
/* 80541B68  98 03 03 8F */	stb r0, 0x38f(r3)
lbl_80541B6C:
/* 80541B6C  2C 1B 00 01 */	cmpwi r27, 1
/* 80541B70  40 82 00 2C */	bne lbl_80541B9C
/* 80541B74  80 61 00 08 */	lwz r3, 8(r1)
/* 80541B78  6B A0 00 0F */	xori r0, r29, 0xf
/* 80541B7C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80541B80  1C 63 00 18 */	mulli r3, r3, 0x18
/* 80541B84  54 84 10 3A */	slwi r4, r4, 2
/* 80541B88  7C 84 1A 14 */	add r4, r4, r3
/* 80541B8C  7C 7E 20 2E */	lwzx r3, r30, r4
/* 80541B90  7C 60 00 38 */	and r0, r3, r0
/* 80541B94  7F BC 18 38 */	and r28, r29, r3
/* 80541B98  7C 1E 21 2E */	stwx r0, r30, r4
lbl_80541B9C:
/* 80541B9C  3C 80 80 6A */	lis r4, search_route_proc@ha /* 0x806A3E14@ha */
/* 80541BA0  38 60 00 00 */	li r3, 0
/* 80541BA4  3B 04 3E 14 */	addi r24, r4, search_route_proc@l /* 0x806A3E14@l */
/* 80541BA8  3B A0 00 00 */	li r29, 0
lbl_80541BAC:
/* 80541BAC  54 60 10 3A */	slwi r0, r3, 2
/* 80541BB0  7D 98 00 2E */	lwzx r12, r24, r0
/* 80541BB4  7D 89 03 A6 */	mtctr r12
/* 80541BB8  4E 80 04 21 */	bctrl 
/* 80541BBC  2C 03 00 02 */	cmpwi r3, 2
/* 80541BC0  41 82 00 28 */	beq lbl_80541BE8
/* 80541BC4  2C 1D 00 24 */	cmpwi r29, 0x24
/* 80541BC8  40 81 00 18 */	ble lbl_80541BE0
/* 80541BCC  3C 60 81 1F */	lis r3, tbl@ha /* 0x811EBD34@ha */
/* 80541BD0  38 00 FF FF */	li r0, -1
/* 80541BD4  38 63 BD 34 */	addi r3, r3, tbl@l /* 0x811EBD34@l */
/* 80541BD8  90 03 03 48 */	stw r0, 0x348(r3)
/* 80541BDC  48 00 00 0C */	b lbl_80541BE8
lbl_80541BE0:
/* 80541BE0  3B BD 00 01 */	addi r29, r29, 1
/* 80541BE4  4B FF FF C8 */	b lbl_80541BAC
lbl_80541BE8:
/* 80541BE8  3C 60 81 1F */	lis r3, tbl@ha /* 0x811EBD34@ha */
/* 80541BEC  38 83 BD 34 */	addi r4, r3, tbl@l /* 0x811EBD34@l */
/* 80541BF0  80 04 03 48 */	lwz r0, 0x348(r4)
/* 80541BF4  2C 00 00 00 */	cmpwi r0, 0
/* 80541BF8  40 80 00 0C */	bge lbl_80541C04
/* 80541BFC  38 60 00 00 */	li r3, 0
/* 80541C00  48 00 01 14 */	b lbl_80541D14
lbl_80541C04:
/* 80541C04  40 82 00 0C */	bne lbl_80541C10
/* 80541C08  38 60 00 01 */	li r3, 1
/* 80541C0C  48 00 01 08 */	b lbl_80541D14
lbl_80541C10:
/* 80541C10  9B 37 09 30 */	stb r25, 0x930(r23)
/* 80541C14  7F E3 FB 78 */	mr r3, r31
/* 80541C18  9B 57 09 31 */	stb r26, 0x931(r23)
/* 80541C1C  80 A4 03 48 */	lwz r5, 0x348(r4)
/* 80541C20  4B FF FD 0D */	bl aNPC_copy_route
/* 80541C24  2C 1A 00 06 */	cmpwi r26, 6
/* 80541C28  40 82 00 18 */	bne lbl_80541C40
/* 80541C2C  3C 80 80 65 */	lis r4, lit_2845@ha /* 0x80649430@ha */
/* 80541C30  3C 60 80 65 */	lis r3, lit_2846@ha /* 0x80649434@ha */
/* 80541C34  C0 24 94 30 */	lfs f1, lit_2845@l(r4)  /* 0x80649430@l */
/* 80541C38  C0 43 94 34 */	lfs f2, lit_2846@l(r3)  /* 0x80649434@l */
/* 80541C3C  48 00 00 50 */	b lbl_80541C8C
lbl_80541C40:
/* 80541C40  38 99 00 01 */	addi r4, r25, 1
/* 80541C44  3C 60 43 30 */	lis r3, 0x4330
/* 80541C48  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80541C4C  38 1A 00 01 */	addi r0, r26, 1
/* 80541C50  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80541C54  3C A0 80 65 */	lis r5, lit_811@ha /* 0x80649384@ha */
/* 80541C58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80541C5C  3C 80 80 65 */	lis r4, lit_1794@ha /* 0x80649410@ha */
/* 80541C60  90 61 00 28 */	stw r3, 0x28(r1)
/* 80541C64  C8 45 93 84 */	lfd f2, lit_811@l(r5)  /* 0x80649384@l */
/* 80541C68  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80541C6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80541C70  EC 20 10 28 */	fsubs f1, f0, f2
/* 80541C74  C0 64 94 10 */	lfs f3, lit_1794@l(r4)  /* 0x80649410@l */
/* 80541C78  90 61 00 30 */	stw r3, 0x30(r1)
/* 80541C7C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80541C80  EC 23 00 72 */	fmuls f1, f3, f1
/* 80541C84  EC 00 10 28 */	fsubs f0, f0, f2
/* 80541C88  EC 43 00 32 */	fmuls f2, f3, f0
lbl_80541C8C:
/* 80541C8C  7E E3 BB 78 */	mr r3, r23
/* 80541C90  4B FF BE 99 */	bl aNPC_set_dst_pos
/* 80541C94  38 00 00 01 */	li r0, 1
/* 80541C98  3C 80 43 30 */	lis r4, 0x4330
/* 80541C9C  3C 60 81 1F */	lis r3, data_811EBD30@ha /* 0x811EBD30@ha */
/* 80541CA0  98 17 09 16 */	stb r0, 0x916(r23)
/* 80541CA4  38 A3 BD 30 */	addi r5, r3, data_811EBD30@l /* 0x811EBD30@l */
/* 80541CA8  3C C0 80 65 */	lis r6, lit_1795@ha /* 0x80649414@ha */
/* 80541CAC  81 05 00 00 */	lwz r8, 0(r5)
/* 80541CB0  3C 60 80 65 */	lis r3, lit_811@ha /* 0x80649384@ha */
/* 80541CB4  38 A3 93 84 */	addi r5, r3, lit_811@l /* 0x80649384@l */
/* 80541CB8  3C E0 80 65 */	lis r7, lit_1794@ha /* 0x80649410@ha */
/* 80541CBC  80 68 09 D0 */	lwz r3, 0x9d0(r8)
/* 80541CC0  80 08 09 D4 */	lwz r0, 0x9d4(r8)
/* 80541CC4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80541CC8  90 81 00 30 */	stw r4, 0x30(r1)
/* 80541CCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80541CD0  C8 45 00 00 */	lfd f2, 0(r5)
/* 80541CD4  90 61 00 34 */	stw r3, 0x34(r1)
/* 80541CD8  7E E3 BB 78 */	mr r3, r23
/* 80541CDC  C0 66 94 14 */	lfs f3, lit_1795@l(r6)  /* 0x80649414@l */
/* 80541CE0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80541CE4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80541CE8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80541CEC  C0 87 94 10 */	lfs f4, lit_1794@l(r7)  /* 0x80649410@l */
/* 80541CF0  90 81 00 28 */	stw r4, 0x28(r1)
/* 80541CF4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80541CF8  EC 23 08 2A */	fadds f1, f3, f1
/* 80541CFC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80541D00  EC 24 00 72 */	fmuls f1, f4, f1
/* 80541D04  EC 03 00 2A */	fadds f0, f3, f0
/* 80541D08  EC 44 00 32 */	fmuls f2, f4, f0
/* 80541D0C  4B FF BD F5 */	bl aNPC_set_avoid_pos
/* 80541D10  38 60 00 02 */	li r3, 2
lbl_80541D14:
/* 80541D14  2C 1B 00 01 */	cmpwi r27, 1
/* 80541D18  40 82 00 24 */	bne lbl_80541D3C
/* 80541D1C  80 01 00 08 */	lwz r0, 8(r1)
/* 80541D20  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80541D24  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80541D28  54 84 10 3A */	slwi r4, r4, 2
/* 80541D2C  7C 84 02 14 */	add r4, r4, r0
/* 80541D30  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80541D34  7C 00 E3 78 */	or r0, r0, r28
/* 80541D38  7C 1E 21 2E */	stwx r0, r30, r4
lbl_80541D3C:
/* 80541D3C  39 61 00 60 */	addi r11, r1, 0x60
/* 80541D40  4B B5 91 C9 */	bl func_8009AF08
/* 80541D44  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80541D48  7C 08 03 A6 */	mtlr r0
/* 80541D4C  38 21 00 60 */	addi r1, r1, 0x60
/* 80541D50  4E 80 00 20 */	blr 
