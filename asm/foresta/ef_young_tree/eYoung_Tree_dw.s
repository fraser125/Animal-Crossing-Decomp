lbl_80626D4C:
/* 80626D4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80626D50  7C 08 02 A6 */	mflr r0
/* 80626D54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80626D58  39 61 00 40 */	addi r11, r1, 0x40
/* 80626D5C  4B A7 41 65 */	bl func_8009AEC0
/* 80626D60  7C 79 1B 78 */	mr r25, r3
/* 80626D64  7C 9A 23 78 */	mr r26, r4
/* 80626D68  4B D7 EF ED */	bl mFI_GetFieldPal
/* 80626D6C  A8 99 00 06 */	lha r4, 6(r25)
/* 80626D70  A8 F9 00 00 */	lha r7, 0(r25)
/* 80626D74  2C 04 00 02 */	cmpwi r4, 2
/* 80626D78  83 C3 00 20 */	lwz r30, 0x20(r3)
/* 80626D7C  20 07 00 28 */	subfic r0, r7, 0x28
/* 80626D80  83 A3 00 24 */	lwz r29, 0x24(r3)
/* 80626D84  83 83 00 28 */	lwz r28, 0x28(r3)
/* 80626D88  7C 03 07 34 */	extsh r3, r0
/* 80626D8C  41 82 00 0C */	beq lbl_80626D98
/* 80626D90  2C 04 00 01 */	cmpwi r4, 1
/* 80626D94  40 82 00 4C */	bne lbl_80626DE0
lbl_80626D98:
/* 80626D98  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80626D9C  3C C0 80 65 */	lis r6, lit_503@ha /* 0x8064D044@ha */
/* 80626DA0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80626DA4  3C A0 80 65 */	lis r5, lit_434@ha /* 0x8064D038@ha */
/* 80626DA8  3C 84 00 02 */	addis r4, r4, 2
/* 80626DAC  C0 45 D0 38 */	lfs f2, lit_434@l(r5)  /* 0x8064D038@l */
/* 80626DB0  80 84 60 9C */	lwz r4, 0x609c(r4)
/* 80626DB4  38 A0 00 28 */	li r5, 0x28
/* 80626DB8  C0 26 D0 44 */	lfs f1, lit_503@l(r6)  /* 0x8064D044@l */
/* 80626DBC  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80626DC0  38 80 00 00 */	li r4, 0
/* 80626DC4  7D 89 03 A6 */	mtctr r12
/* 80626DC8  4E 80 04 21 */	bctrl 
/* 80626DCC  FC 00 08 1E */	fctiwz f0, f1
/* 80626DD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80626DD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80626DD8  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80626DDC  48 00 00 50 */	b lbl_80626E2C
lbl_80626DE0:
/* 80626DE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80626DE4  3C 80 80 65 */	lis r4, lit_434@ha /* 0x8064D038@ha */
/* 80626DE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80626DEC  3C A0 80 65 */	lis r5, lit_503@ha /* 0x8064D044@ha */
/* 80626DF0  3C 63 00 02 */	addis r3, r3, 2
/* 80626DF4  38 C4 D0 38 */	addi r6, r4, lit_434@l /* 0x8064D038@l */
/* 80626DF8  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 80626DFC  7C E3 3B 78 */	mr r3, r7
/* 80626E00  C0 45 D0 44 */	lfs f2, lit_503@l(r5)  /* 0x8064D044@l */
/* 80626E04  38 A0 00 08 */	li r5, 8
/* 80626E08  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80626E0C  38 80 00 00 */	li r4, 0
/* 80626E10  C0 26 00 00 */	lfs f1, 0(r6)
/* 80626E14  7D 89 03 A6 */	mtctr r12
/* 80626E18  4E 80 04 21 */	bctrl 
/* 80626E1C  FC 00 08 1E */	fctiwz f0, f1
/* 80626E20  D8 01 00 08 */	stfd f0, 8(r1)
/* 80626E24  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80626E28  54 1B 06 3E */	clrlwi r27, r0, 0x18
lbl_80626E2C:
/* 80626E2C  83 FA 00 00 */	lwz r31, 0(r26)
/* 80626E30  7F E3 FB 78 */	mr r3, r31
/* 80626E34  4B DB E3 25 */	bl _texture_z_light_fog_prim_xlu
/* 80626E38  3C 60 80 65 */	lis r3, lit_504@ha /* 0x8064D048@ha */
/* 80626E3C  C0 59 00 14 */	lfs f2, 0x14(r25)
/* 80626E40  C0 63 D0 48 */	lfs f3, lit_504@l(r3)  /* 0x8064D048@l */
/* 80626E44  38 60 00 00 */	li r3, 0
/* 80626E48  C0 19 00 18 */	lfs f0, 0x18(r25)
/* 80626E4C  EC 43 10 2A */	fadds f2, f3, f2
/* 80626E50  C0 39 00 10 */	lfs f1, 0x10(r25)
/* 80626E54  EC 63 00 2A */	fadds f3, f3, f0
/* 80626E58  4B DE 54 A9 */	bl Matrix_translate
/* 80626E5C  A8 79 00 08 */	lha r3, 8(r25)
/* 80626E60  7C 60 07 35 */	extsh. r0, r3
/* 80626E64  41 82 00 0C */	beq lbl_80626E70
/* 80626E68  2C 03 00 03 */	cmpwi r3, 3
/* 80626E6C  40 82 00 18 */	bne lbl_80626E84
lbl_80626E70:
/* 80626E70  A8 79 00 4E */	lha r3, 0x4e(r25)
/* 80626E74  38 99 00 40 */	addi r4, r25, 0x40
/* 80626E78  38 A0 00 01 */	li r5, 1
/* 80626E7C  4B DE 70 71 */	bl Matrix_RotateVector
/* 80626E80  48 00 01 18 */	b lbl_80626F98
lbl_80626E84:
/* 80626E84  2C 03 00 01 */	cmpwi r3, 1
/* 80626E88  40 82 00 C0 */	bne lbl_80626F48
/* 80626E8C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80626E90  3C 00 43 30 */	lis r0, 0x4330
/* 80626E94  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80626E98  3C E0 80 65 */	lis r7, lit_434@ha /* 0x8064D038@ha */
/* 80626E9C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80626EA0  3C 60 80 65 */	lis r3, lit_510@ha /* 0x8064D05C@ha */
/* 80626EA4  38 83 D0 5C */	addi r4, r3, lit_510@l /* 0x8064D05C@l */
/* 80626EA8  3C C0 80 65 */	lis r6, lit_505@ha /* 0x8064D04C@ha */
/* 80626EAC  A8 65 1B 3C */	lha r3, 0x1b3c(r5)
/* 80626EB0  C0 27 D0 38 */	lfs f1, lit_434@l(r7)  /* 0x8064D038@l */
/* 80626EB4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80626EB8  90 01 00 08 */	stw r0, 8(r1)
/* 80626EBC  C8 44 00 00 */	lfd f2, 0(r4)
/* 80626EC0  FC 60 08 90 */	fmr f3, f1
/* 80626EC4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80626EC8  38 60 00 01 */	li r3, 1
/* 80626ECC  C0 86 D0 4C */	lfs f4, lit_505@l(r6)  /* 0x8064D04C@l */
/* 80626ED0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80626ED4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80626ED8  EC 44 00 2A */	fadds f2, f4, f0
/* 80626EDC  4B DE 54 25 */	bl Matrix_translate
/* 80626EE0  A8 79 00 4E */	lha r3, 0x4e(r25)
/* 80626EE4  38 99 00 40 */	addi r4, r25, 0x40
/* 80626EE8  38 A0 00 01 */	li r5, 1
/* 80626EEC  4B DE 70 01 */	bl Matrix_RotateVector
/* 80626EF0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80626EF4  3C 00 43 30 */	lis r0, 0x4330
/* 80626EF8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80626EFC  3C E0 80 65 */	lis r7, lit_434@ha /* 0x8064D038@ha */
/* 80626F00  80 A4 00 00 */	lwz r5, 0(r4)
/* 80626F04  3C 60 80 65 */	lis r3, lit_510@ha /* 0x8064D05C@ha */
/* 80626F08  38 83 D0 5C */	addi r4, r3, lit_510@l /* 0x8064D05C@l */
/* 80626F0C  3C C0 80 65 */	lis r6, lit_506@ha /* 0x8064D050@ha */
/* 80626F10  A8 65 1B 3C */	lha r3, 0x1b3c(r5)
/* 80626F14  C0 27 D0 38 */	lfs f1, lit_434@l(r7)  /* 0x8064D038@l */
/* 80626F18  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80626F1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80626F20  C8 44 00 00 */	lfd f2, 0(r4)
/* 80626F24  FC 60 08 90 */	fmr f3, f1
/* 80626F28  90 61 00 14 */	stw r3, 0x14(r1)
/* 80626F2C  38 60 00 01 */	li r3, 1
/* 80626F30  C0 86 D0 50 */	lfs f4, lit_506@l(r6)  /* 0x8064D050@l */
/* 80626F34  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80626F38  EC 00 10 28 */	fsubs f0, f0, f2
/* 80626F3C  EC 44 00 28 */	fsubs f2, f4, f0
/* 80626F40  4B DE 53 C1 */	bl Matrix_translate
/* 80626F44  48 00 00 54 */	b lbl_80626F98
lbl_80626F48:
/* 80626F48  3C 60 80 65 */	lis r3, lit_434@ha /* 0x8064D038@ha */
/* 80626F4C  3C 80 80 65 */	lis r4, lit_507@ha /* 0x8064D054@ha */
/* 80626F50  38 A3 D0 38 */	addi r5, r3, lit_434@l /* 0x8064D038@l */
/* 80626F54  C0 44 D0 54 */	lfs f2, lit_507@l(r4)  /* 0x8064D054@l */
/* 80626F58  C0 25 00 00 */	lfs f1, 0(r5)
/* 80626F5C  38 60 00 01 */	li r3, 1
/* 80626F60  FC 60 08 90 */	fmr f3, f1
/* 80626F64  4B DE 53 9D */	bl Matrix_translate
/* 80626F68  A8 79 00 4E */	lha r3, 0x4e(r25)
/* 80626F6C  38 99 00 40 */	addi r4, r25, 0x40
/* 80626F70  38 A0 00 01 */	li r5, 1
/* 80626F74  4B DE 6F 79 */	bl Matrix_RotateVector
/* 80626F78  3C 60 80 65 */	lis r3, lit_434@ha /* 0x8064D038@ha */
/* 80626F7C  3C 80 80 65 */	lis r4, lit_508@ha /* 0x8064D058@ha */
/* 80626F80  38 A3 D0 38 */	addi r5, r3, lit_434@l /* 0x8064D038@l */
/* 80626F84  C0 44 D0 58 */	lfs f2, lit_508@l(r4)  /* 0x8064D058@l */
/* 80626F88  C0 25 00 00 */	lfs f1, 0(r5)
/* 80626F8C  38 60 00 01 */	li r3, 1
/* 80626F90  FC 60 08 90 */	fmr f3, f1
/* 80626F94  4B DE 53 6D */	bl Matrix_translate
lbl_80626F98:
/* 80626F98  C0 39 00 34 */	lfs f1, 0x34(r25)
/* 80626F9C  38 60 00 01 */	li r3, 1
/* 80626FA0  C0 59 00 38 */	lfs f2, 0x38(r25)
/* 80626FA4  C0 79 00 3C */	lfs f3, 0x3c(r25)
/* 80626FA8  4B DE 54 45 */	bl Matrix_scale
/* 80626FAC  83 1F 02 E0 */	lwz r24, 0x2e0(r31)
/* 80626FB0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80626FB4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80626FB8  38 78 00 08 */	addi r3, r24, 8
/* 80626FBC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80626FC0  90 18 00 00 */	stw r0, 0(r24)
/* 80626FC4  80 7A 00 00 */	lwz r3, 0(r26)
/* 80626FC8  4B DE 64 0D */	bl _Matrix_to_Mtx_new
/* 80626FCC  90 78 00 04 */	stw r3, 4(r24)
/* 80626FD0  A8 79 00 08 */	lha r3, 8(r25)
/* 80626FD4  7C 60 07 35 */	extsh. r0, r3
/* 80626FD8  40 82 00 24 */	bne lbl_80626FFC
/* 80626FDC  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 80626FE0  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 80626FE4  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 80626FE8  38 64 00 08 */	addi r3, r4, 8
/* 80626FEC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80626FF0  90 04 00 00 */	stw r0, 0(r4)
/* 80626FF4  93 C4 00 04 */	stw r30, 4(r4)
/* 80626FF8  48 00 00 48 */	b lbl_80627040
lbl_80626FFC:
/* 80626FFC  2C 03 00 03 */	cmpwi r3, 3
/* 80627000  40 82 00 24 */	bne lbl_80627024
/* 80627004  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 80627008  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8062700C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 80627010  38 64 00 08 */	addi r3, r4, 8
/* 80627014  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80627018  90 04 00 00 */	stw r0, 0(r4)
/* 8062701C  93 84 00 04 */	stw r28, 4(r4)
/* 80627020  48 00 00 20 */	b lbl_80627040
lbl_80627024:
/* 80627024  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 80627028  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8062702C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 80627030  38 64 00 08 */	addi r3, r4, 8
/* 80627034  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80627038  90 04 00 00 */	stw r0, 0(r4)
/* 8062703C  93 A4 00 04 */	stw r29, 4(r4)
lbl_80627040:
/* 80627040  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80627044  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80627048  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8062704C  3C 60 D5 02 */	lis r3, 0xD502 /* 0xD5020001@ha */
/* 80627050  38 C7 00 08 */	addi r6, r7, 8
/* 80627054  38 A4 00 FF */	addi r5, r4, 0x00FF /* 0xFA0000FF@l */
/* 80627058  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 8062705C  64 04 FF FF */	oris r4, r0, 0xffff
/* 80627060  60 84 FF 00 */	ori r4, r4, 0xff00
/* 80627064  38 63 00 01 */	addi r3, r3, 0x0001 /* 0xD5020001@l */
/* 80627068  90 A7 00 00 */	stw r5, 0(r7)
/* 8062706C  38 00 00 00 */	li r0, 0
/* 80627070  90 87 00 04 */	stw r4, 4(r7)
/* 80627074  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80627078  38 85 00 08 */	addi r4, r5, 8
/* 8062707C  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 80627080  90 65 00 00 */	stw r3, 0(r5)
/* 80627084  90 05 00 04 */	stw r0, 4(r5)
/* 80627088  A8 19 00 08 */	lha r0, 8(r25)
/* 8062708C  2C 00 00 01 */	cmpwi r0, 1
/* 80627090  40 82 00 58 */	bne lbl_806270E8
/* 80627094  A8 19 00 4C */	lha r0, 0x4c(r25)
/* 80627098  2C 00 00 03 */	cmpwi r0, 3
/* 8062709C  40 82 00 28 */	bne lbl_806270C4
/* 806270A0  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 806270A4  3C 60 80 CC */	lis r3, ef_w_young_palm_modelT@ha /* 0x80CC4AE0@ha */
/* 806270A8  3C 80 DE 00 */	lis r4, 0xde00
/* 806270AC  38 A6 00 08 */	addi r5, r6, 8
/* 806270B0  38 03 4A E0 */	addi r0, r3, ef_w_young_palm_modelT@l /* 0x80CC4AE0@l */
/* 806270B4  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 806270B8  90 86 00 00 */	stw r4, 0(r6)
/* 806270BC  90 06 00 04 */	stw r0, 4(r6)
/* 806270C0  48 00 01 10 */	b lbl_806271D0
lbl_806270C4:
/* 806270C4  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 806270C8  3C 60 80 CC */	lis r3, ef_s_young_palm_modelT@ha /* 0x80CC4820@ha */
/* 806270CC  3C 80 DE 00 */	lis r4, 0xde00
/* 806270D0  38 A6 00 08 */	addi r5, r6, 8
/* 806270D4  38 03 48 20 */	addi r0, r3, ef_s_young_palm_modelT@l /* 0x80CC4820@l */
/* 806270D8  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 806270DC  90 86 00 00 */	stw r4, 0(r6)
/* 806270E0  90 06 00 04 */	stw r0, 4(r6)
/* 806270E4  48 00 00 EC */	b lbl_806271D0
lbl_806270E8:
/* 806270E8  2C 00 00 02 */	cmpwi r0, 2
/* 806270EC  40 82 00 58 */	bne lbl_80627144
/* 806270F0  A8 19 00 4C */	lha r0, 0x4c(r25)
/* 806270F4  2C 00 00 03 */	cmpwi r0, 3
/* 806270F8  40 82 00 28 */	bne lbl_80627120
/* 806270FC  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80627100  3C 60 80 CC */	lis r3, ef_w_young_cedar_modelT@ha /* 0x80CC5060@ha */
/* 80627104  3C 80 DE 00 */	lis r4, 0xde00
/* 80627108  38 A6 00 08 */	addi r5, r6, 8
/* 8062710C  38 03 50 60 */	addi r0, r3, ef_w_young_cedar_modelT@l /* 0x80CC5060@l */
/* 80627110  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80627114  90 86 00 00 */	stw r4, 0(r6)
/* 80627118  90 06 00 04 */	stw r0, 4(r6)
/* 8062711C  48 00 00 B4 */	b lbl_806271D0
lbl_80627120:
/* 80627120  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80627124  3C 60 80 CC */	lis r3, ef_s_young_cedar_modelT@ha /* 0x80CC4DA0@ha */
/* 80627128  3C 80 DE 00 */	lis r4, 0xde00
/* 8062712C  38 A6 00 08 */	addi r5, r6, 8
/* 80627130  38 03 4D A0 */	addi r0, r3, ef_s_young_cedar_modelT@l /* 0x80CC4DA0@l */
/* 80627134  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80627138  90 86 00 00 */	stw r4, 0(r6)
/* 8062713C  90 06 00 04 */	stw r0, 4(r6)
/* 80627140  48 00 00 90 */	b lbl_806271D0
lbl_80627144:
/* 80627144  A8 19 00 4C */	lha r0, 0x4c(r25)
/* 80627148  2C 00 00 03 */	cmpwi r0, 3
/* 8062714C  40 82 00 28 */	bne lbl_80627174
/* 80627150  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80627154  3C 60 80 CC */	lis r3, ef_w_youngtree_00_modelT@ha /* 0x80CC4290@ha */
/* 80627158  3C 80 DE 00 */	lis r4, 0xde00
/* 8062715C  38 A6 00 08 */	addi r5, r6, 8
/* 80627160  38 03 42 90 */	addi r0, r3, ef_w_youngtree_00_modelT@l /* 0x80CC4290@l */
/* 80627164  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80627168  90 86 00 00 */	stw r4, 0(r6)
/* 8062716C  90 06 00 04 */	stw r0, 4(r6)
/* 80627170  48 00 00 60 */	b lbl_806271D0
lbl_80627174:
/* 80627174  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80627178  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062717C  3C 63 00 02 */	addis r3, r3, 2
/* 80627180  80 03 61 14 */	lwz r0, 0x6114(r3)
/* 80627184  28 00 00 04 */	cmplwi r0, 4
/* 80627188  40 82 00 28 */	bne lbl_806271B0
/* 8062718C  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80627190  3C 60 80 CC */	lis r3, ef_f_youngtree_00_modelT@ha /* 0x80CC4550@ha */
/* 80627194  3C 80 DE 00 */	lis r4, 0xde00
/* 80627198  38 A6 00 08 */	addi r5, r6, 8
/* 8062719C  38 03 45 50 */	addi r0, r3, ef_f_youngtree_00_modelT@l /* 0x80CC4550@l */
/* 806271A0  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 806271A4  90 86 00 00 */	stw r4, 0(r6)
/* 806271A8  90 06 00 04 */	stw r0, 4(r6)
/* 806271AC  48 00 00 24 */	b lbl_806271D0
lbl_806271B0:
/* 806271B0  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 806271B4  3C 60 80 CC */	lis r3, ef_s_youngtree_00_modelT@ha /* 0x80CC3FD0@ha */
/* 806271B8  3C 80 DE 00 */	lis r4, 0xde00
/* 806271BC  38 A6 00 08 */	addi r5, r6, 8
/* 806271C0  38 03 3F D0 */	addi r0, r3, ef_s_youngtree_00_modelT@l /* 0x80CC3FD0@l */
/* 806271C4  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 806271C8  90 86 00 00 */	stw r4, 0(r6)
/* 806271CC  90 06 00 04 */	stw r0, 4(r6)
lbl_806271D0:
/* 806271D0  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 806271D4  3C 60 D5 02 */	lis r3, 0xd502
/* 806271D8  38 00 00 00 */	li r0, 0
/* 806271DC  38 85 00 08 */	addi r4, r5, 8
/* 806271E0  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 806271E4  90 65 00 00 */	stw r3, 0(r5)
/* 806271E8  90 05 00 04 */	stw r0, 4(r5)
/* 806271EC  39 61 00 40 */	addi r11, r1, 0x40
/* 806271F0  4B A7 3D 1D */	bl func_8009AF0C
/* 806271F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806271F8  7C 08 03 A6 */	mtlr r0
/* 806271FC  38 21 00 40 */	addi r1, r1, 0x40
/* 80627200  4E 80 00 20 */	blr 
