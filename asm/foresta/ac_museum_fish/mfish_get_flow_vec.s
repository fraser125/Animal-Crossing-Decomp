lbl_804377A4:
/* 804377A4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804377A8  7C 08 02 A6 */	mflr r0
/* 804377AC  90 01 00 94 */	stw r0, 0x94(r1)
/* 804377B0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804377B4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804377B8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804377BC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804377C0  39 61 00 70 */	addi r11, r1, 0x70
/* 804377C4  4B C6 37 11 */	bl func_8009AED4
/* 804377C8  7C 9E 23 78 */	mr r30, r4
/* 804377CC  3C 80 80 68 */	lis r4, suisou_pos@ha /* 0x80684E7C@ha */
/* 804377D0  A8 DE 06 30 */	lha r6, 0x630(r30)
/* 804377D4  38 84 4E 7C */	addi r4, r4, suisou_pos@l /* 0x80684E7C@l */
/* 804377D8  7C 7D 1B 78 */	mr r29, r3
/* 804377DC  1C 66 00 0C */	mulli r3, r6, 0xc
/* 804377E0  7C C0 07 35 */	extsh. r0, r6
/* 804377E4  7C A4 1A 14 */	add r5, r4, r3
/* 804377E8  80 85 00 00 */	lwz r4, 0(r5)
/* 804377EC  80 65 00 04 */	lwz r3, 4(r5)
/* 804377F0  80 05 00 08 */	lwz r0, 8(r5)
/* 804377F4  90 81 00 28 */	stw r4, 0x28(r1)
/* 804377F8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 804377FC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80437800  40 82 00 10 */	bne lbl_80437810
/* 80437804  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80437808  C3 C3 42 AC */	lfs f30, lit_666@l(r3)  /* 0x806442AC@l */
/* 8043780C  48 00 00 50 */	b lbl_8043785C
lbl_80437810:
/* 80437810  2C 06 00 01 */	cmpwi r6, 1
/* 80437814  40 82 00 10 */	bne lbl_80437824
/* 80437818  3C 60 80 64 */	lis r3, lit_6875@ha /* 0x80644444@ha */
/* 8043781C  C3 C3 44 44 */	lfs f30, lit_6875@l(r3)  /* 0x80644444@l */
/* 80437820  48 00 00 3C */	b lbl_8043785C
lbl_80437824:
/* 80437824  2C 06 00 02 */	cmpwi r6, 2
/* 80437828  40 82 00 10 */	bne lbl_80437838
/* 8043782C  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 80437830  C3 C3 42 D4 */	lfs f30, lit_839@l(r3)  /* 0x806442D4@l */
/* 80437834  48 00 00 28 */	b lbl_8043785C
lbl_80437838:
/* 80437838  2C 06 00 03 */	cmpwi r6, 3
/* 8043783C  40 82 00 10 */	bne lbl_8043784C
/* 80437840  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80437844  C3 C3 42 AC */	lfs f30, lit_666@l(r3)  /* 0x806442AC@l */
/* 80437848  48 00 00 14 */	b lbl_8043785C
lbl_8043784C:
/* 8043784C  2C 06 00 04 */	cmpwi r6, 4
/* 80437850  40 82 00 0C */	bne lbl_8043785C
/* 80437854  3C 60 80 64 */	lis r3, lit_1711@ha /* 0x80644364@ha */
/* 80437858  C3 C3 43 64 */	lfs f30, lit_1711@l(r3)  /* 0x80644364@l */
lbl_8043785C:
/* 8043785C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80437860  38 81 00 28 */	addi r4, r1, 0x28
/* 80437864  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80437868  4B F8 37 11 */	bl xyz_t_sub
/* 8043786C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80437870  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80437874  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80437878  EC 40 00 32 */	fmuls f2, f0, f0
/* 8043787C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80437880  EC 21 00 72 */	fmuls f1, f1, f1
/* 80437884  EC 82 08 2A */	fadds f4, f2, f1
/* 80437888  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8043788C  40 81 00 6C */	ble lbl_804378F8
/* 80437890  FC 20 20 34 */	frsqrte f1, f4
/* 80437894  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80437898  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 8043789C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 804378A0  C8 64 00 00 */	lfd f3, 0(r4)
/* 804378A4  FC 01 00 72 */	fmul f0, f1, f1
/* 804378A8  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 804378AC  FC 23 00 72 */	fmul f1, f3, f1
/* 804378B0  FC 04 00 32 */	fmul f0, f4, f0
/* 804378B4  FC 02 00 28 */	fsub f0, f2, f0
/* 804378B8  FC 21 00 32 */	fmul f1, f1, f0
/* 804378BC  FC 01 00 72 */	fmul f0, f1, f1
/* 804378C0  FC 23 00 72 */	fmul f1, f3, f1
/* 804378C4  FC 04 00 32 */	fmul f0, f4, f0
/* 804378C8  FC 02 00 28 */	fsub f0, f2, f0
/* 804378CC  FC 21 00 32 */	fmul f1, f1, f0
/* 804378D0  FC 01 00 72 */	fmul f0, f1, f1
/* 804378D4  FC 23 00 72 */	fmul f1, f3, f1
/* 804378D8  FC 04 00 32 */	fmul f0, f4, f0
/* 804378DC  FC 02 00 28 */	fsub f0, f2, f0
/* 804378E0  FC 01 00 32 */	fmul f0, f1, f0
/* 804378E4  FC 04 00 32 */	fmul f0, f4, f0
/* 804378E8  FC 00 00 18 */	frsp f0, f0
/* 804378EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804378F0  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804378F4  48 00 00 08 */	b lbl_804378FC
lbl_804378F8:
/* 804378F8  FC 40 20 90 */	fmr f2, f4
lbl_804378FC:
/* 804378FC  3C 80 80 64 */	lis r4, lit_9694@ha /* 0x8064454C@ha */
/* 80437900  3C 60 80 64 */	lis r3, lit_9785@ha /* 0x80644554@ha */
/* 80437904  C0 24 45 4C */	lfs f1, lit_9694@l(r4)  /* 0x8064454C@l */
/* 80437908  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8043790C  C0 03 45 54 */	lfs f0, lit_9785@l(r3)  /* 0x80644554@l */
/* 80437910  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80437914  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 80437918  EC 01 00 24 */	fdivs f0, f1, f0
/* 8043791C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80437920  FC 00 00 1E */	fctiwz f0, f0
/* 80437924  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80437928  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8043792C  7C 03 07 34 */	extsh r3, r0
/* 80437930  4B F8 31 C1 */	bl sin_s
/* 80437934  3C 80 80 64 */	lis r4, lit_9694@ha /* 0x8064454C@ha */
/* 80437938  3C C0 80 64 */	lis r6, lit_527@ha /* 0x80644268@ha */
/* 8043793C  C0 44 45 4C */	lfs f2, lit_9694@l(r4)  /* 0x8064454C@l */
/* 80437940  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 80437944  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80437948  38 85 42 98 */	addi r4, r5, lit_588@l /* 0x80644298@l */
/* 8043794C  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 80437950  C0 86 42 68 */	lfs f4, lit_527@l(r6)  /* 0x80644268@l */
/* 80437954  EC 42 00 32 */	fmuls f2, f2, f0
/* 80437958  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 8043795C  3C A0 80 64 */	lis r5, lit_839@ha /* 0x806442D4@ha */
/* 80437960  EC 24 00 72 */	fmuls f1, f4, f1
/* 80437964  C0 65 42 D4 */	lfs f3, lit_839@l(r5)  /* 0x806442D4@l */
/* 80437968  EC 02 00 24 */	fdivs f0, f2, f0
/* 8043796C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80437970  EC 02 00 32 */	fmuls f0, f2, f0
/* 80437974  EF E3 08 2A */	fadds f31, f3, f1
/* 80437978  FC 00 00 1E */	fctiwz f0, f0
/* 8043797C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80437980  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80437984  7C 03 07 34 */	extsh r3, r0
/* 80437988  4B F8 31 15 */	bl cos_s
/* 8043798C  3C 80 80 64 */	lis r4, lit_9694@ha /* 0x8064454C@ha */
/* 80437990  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 80437994  C0 64 45 4C */	lfs f3, lit_9694@l(r4)  /* 0x8064454C@l */
/* 80437998  EC 9F 00 72 */	fmuls f4, f31, f1
/* 8043799C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 804379A0  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 804379A4  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 804379A8  EC 23 00 B2 */	fmuls f1, f3, f2
/* 804379AC  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 804379B0  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 804379B4  EC 01 00 24 */	fdivs f0, f1, f0
/* 804379B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804379BC  FC 00 00 1E */	fctiwz f0, f0
/* 804379C0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804379C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804379C8  7C 03 07 34 */	extsh r3, r0
/* 804379CC  4B F8 30 D1 */	bl cos_s
/* 804379D0  3C 80 80 64 */	lis r4, lit_556@ha /* 0x8064427C@ha */
/* 804379D4  3C 60 80 64 */	lis r3, lit_5573@ha /* 0x80644410@ha */
/* 804379D8  C0 64 42 7C */	lfs f3, lit_556@l(r4)  /* 0x8064427C@l */
/* 804379DC  EC 9F 00 72 */	fmuls f4, f31, f1
/* 804379E0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 804379E4  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 804379E8  C0 03 44 10 */	lfs f0, lit_5573@l(r3)  /* 0x80644410@l */
/* 804379EC  EC 23 00 B2 */	fmuls f1, f3, f2
/* 804379F0  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 804379F4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 804379F8  EC 01 00 24 */	fdivs f0, f1, f0
/* 804379FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80437A00  FC 00 00 1E */	fctiwz f0, f0
/* 80437A04  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80437A08  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80437A0C  7C 03 07 34 */	extsh r3, r0
/* 80437A10  4B F8 30 8D */	bl cos_s
/* 80437A14  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 80437A18  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80437A1C  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 80437A20  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80437A24  EC 00 00 72 */	fmuls f0, f0, f1
/* 80437A28  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80437A2C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80437A30  4B FD 45 D1 */	bl atans_table
/* 80437A34  3C 80 81 1D */	lis r4, data_811CDFB8@ha /* 0x811CDFB8@ha */
/* 80437A38  A8 BE 06 30 */	lha r5, 0x630(r30)
/* 80437A3C  38 84 DF B8 */	addi r4, r4, data_811CDFB8@l /* 0x811CDFB8@l */
/* 80437A40  80 84 00 00 */	lwz r4, 0(r4)
/* 80437A44  54 A0 08 3C */	slwi r0, r5, 1
/* 80437A48  2C 05 00 02 */	cmpwi r5, 2
/* 80437A4C  3C 84 00 01 */	addis r4, r4, 1
/* 80437A50  7C 84 02 14 */	add r4, r4, r0
/* 80437A54  A8 04 4D AA */	lha r0, 0x4daa(r4)
/* 80437A58  7F E3 02 14 */	add r31, r3, r0
/* 80437A5C  40 82 00 C8 */	bne lbl_80437B24
/* 80437A60  7F E3 FB 78 */	mr r3, r31
/* 80437A64  4B F8 30 39 */	bl cos_s
/* 80437A68  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80437A6C  3C 00 43 30 */	lis r0, 0x4330
/* 80437A70  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80437A74  3C A0 80 64 */	lis r5, lit_793@ha /* 0x806442C4@ha */
/* 80437A78  80 84 00 00 */	lwz r4, 0(r4)
/* 80437A7C  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80437A80  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 80437A84  3C C0 80 64 */	lis r6, data_80644244@ha /* 0x80644244@ha */
/* 80437A88  A8 84 1B 2C */	lha r4, 0x1b2c(r4)
/* 80437A8C  7F E3 FB 78 */	mr r3, r31
/* 80437A90  90 01 00 58 */	stw r0, 0x58(r1)
/* 80437A94  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80437A98  C0 65 42 C4 */	lfs f3, lit_793@l(r5)  /* 0x806442C4@l */
/* 80437A9C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80437AA0  C0 86 42 44 */	lfs f4, data_80644244@l(r6)  /* 0x80644244@l */
/* 80437AA4  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80437AA8  EC 40 10 28 */	fsubs f2, f0, f2
/* 80437AAC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80437AB0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80437AB4  EC 44 10 2A */	fadds f2, f4, f2
/* 80437AB8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80437ABC  EC 00 08 2A */	fadds f0, f0, f1
/* 80437AC0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80437AC4  4B F8 30 2D */	bl sin_s
/* 80437AC8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80437ACC  3C 00 43 30 */	lis r0, 0x4330
/* 80437AD0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80437AD4  3C A0 80 64 */	lis r5, lit_793@ha /* 0x806442C4@ha */
/* 80437AD8  80 84 00 00 */	lwz r4, 0(r4)
/* 80437ADC  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80437AE0  3C C0 80 64 */	lis r6, data_80644244@ha /* 0x80644244@ha */
/* 80437AE4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80437AE8  A8 84 1B 2C */	lha r4, 0x1b2c(r4)
/* 80437AEC  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 80437AF0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80437AF4  C0 65 42 C4 */	lfs f3, lit_793@l(r5)  /* 0x806442C4@l */
/* 80437AF8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80437AFC  C0 86 42 44 */	lfs f4, data_80644244@l(r6)  /* 0x80644244@l */
/* 80437B00  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80437B04  EC 40 10 28 */	fsubs f2, f0, f2
/* 80437B08  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80437B0C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80437B10  EC 44 10 2A */	fadds f2, f4, f2
/* 80437B14  EC 22 00 72 */	fmuls f1, f2, f1
/* 80437B18  EC 00 08 2A */	fadds f0, f0, f1
/* 80437B1C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80437B20  48 00 00 C4 */	b lbl_80437BE4
lbl_80437B24:
/* 80437B24  7F E3 FB 78 */	mr r3, r31
/* 80437B28  4B F8 2F 75 */	bl cos_s
/* 80437B2C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80437B30  3C 00 43 30 */	lis r0, 0x4330
/* 80437B34  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80437B38  3C A0 80 64 */	lis r5, lit_793@ha /* 0x806442C4@ha */
/* 80437B3C  80 84 00 00 */	lwz r4, 0(r4)
/* 80437B40  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80437B44  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 80437B48  3C C0 80 64 */	lis r6, lit_1315@ha /* 0x80644334@ha */
/* 80437B4C  A8 84 1B 2C */	lha r4, 0x1b2c(r4)
/* 80437B50  7F E3 FB 78 */	mr r3, r31
/* 80437B54  90 01 00 58 */	stw r0, 0x58(r1)
/* 80437B58  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80437B5C  C0 65 42 C4 */	lfs f3, lit_793@l(r5)  /* 0x806442C4@l */
/* 80437B60  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80437B64  C0 86 43 34 */	lfs f4, lit_1315@l(r6)  /* 0x80644334@l */
/* 80437B68  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80437B6C  EC 40 10 28 */	fsubs f2, f0, f2
/* 80437B70  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80437B74  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80437B78  EC 44 10 2A */	fadds f2, f4, f2
/* 80437B7C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80437B80  EC 00 08 2A */	fadds f0, f0, f1
/* 80437B84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80437B88  4B F8 2F 69 */	bl sin_s
/* 80437B8C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80437B90  3C 00 43 30 */	lis r0, 0x4330
/* 80437B94  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80437B98  3C A0 80 64 */	lis r5, lit_793@ha /* 0x806442C4@ha */
/* 80437B9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80437BA0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80437BA4  3C C0 80 64 */	lis r6, lit_1315@ha /* 0x80644334@ha */
/* 80437BA8  90 01 00 50 */	stw r0, 0x50(r1)
/* 80437BAC  A8 84 1B 2C */	lha r4, 0x1b2c(r4)
/* 80437BB0  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 80437BB4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80437BB8  C0 65 42 C4 */	lfs f3, lit_793@l(r5)  /* 0x806442C4@l */
/* 80437BBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80437BC0  C0 86 43 34 */	lfs f4, lit_1315@l(r6)  /* 0x80644334@l */
/* 80437BC4  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80437BC8  EC 40 10 28 */	fsubs f2, f0, f2
/* 80437BCC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80437BD0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80437BD4  EC 44 10 2A */	fadds f2, f4, f2
/* 80437BD8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80437BDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80437BE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80437BE4:
/* 80437BE4  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80437BE8  4B F8 2E B5 */	bl cos_s
/* 80437BEC  FF E0 08 90 */	fmr f31, f1
/* 80437BF0  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437BF4  4B F8 2E A9 */	bl cos_s
/* 80437BF8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80437BFC  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80437C00  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80437C04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80437C08  4C 41 13 82 */	cror 2, 1, 2
/* 80437C0C  40 82 00 20 */	bne lbl_80437C2C
/* 80437C10  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80437C14  4B F8 2E 89 */	bl cos_s
/* 80437C18  FF E0 08 90 */	fmr f31, f1
/* 80437C1C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437C20  4B F8 2E 7D */	bl cos_s
/* 80437C24  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80437C28  48 00 00 20 */	b lbl_80437C48
lbl_80437C2C:
/* 80437C2C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80437C30  4B F8 2E 6D */	bl cos_s
/* 80437C34  FF E0 08 90 */	fmr f31, f1
/* 80437C38  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437C3C  4B F8 2E 61 */	bl cos_s
/* 80437C40  EC 01 07 F2 */	fmuls f0, f1, f31
/* 80437C44  FC 20 00 50 */	fneg f1, f0
lbl_80437C48:
/* 80437C48  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80437C4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80437C50  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80437C54  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80437C58  4B F8 2E 45 */	bl cos_s
/* 80437C5C  FF E0 08 90 */	fmr f31, f1
/* 80437C60  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437C64  4B F8 2E 8D */	bl sin_s
/* 80437C68  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80437C6C  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80437C70  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80437C74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80437C78  4C 41 13 82 */	cror 2, 1, 2
/* 80437C7C  40 82 00 20 */	bne lbl_80437C9C
/* 80437C80  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80437C84  4B F8 2E 19 */	bl cos_s
/* 80437C88  FF E0 08 90 */	fmr f31, f1
/* 80437C8C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437C90  4B F8 2E 61 */	bl sin_s
/* 80437C94  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80437C98  48 00 00 20 */	b lbl_80437CB8
lbl_80437C9C:
/* 80437C9C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80437CA0  4B F8 2D FD */	bl cos_s
/* 80437CA4  FF E0 08 90 */	fmr f31, f1
/* 80437CA8  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437CAC  4B F8 2E 45 */	bl sin_s
/* 80437CB0  EC 01 07 F2 */	fmuls f0, f1, f31
/* 80437CB4  FC 20 00 50 */	fneg f1, f0
lbl_80437CB8:
/* 80437CB8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80437CBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80437CC0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80437CC4  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 80437CC8  2C 00 00 03 */	cmpwi r0, 3
/* 80437CCC  41 82 00 2C */	beq lbl_80437CF8
/* 80437CD0  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 80437CD4  4B F8 2D C9 */	bl cos_s
/* 80437CD8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80437CDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80437CE0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80437CE4  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 80437CE8  4B F8 2D B5 */	bl cos_s
/* 80437CEC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80437CF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80437CF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80437CF8:
/* 80437CF8  A8 1E 06 30 */	lha r0, 0x630(r30)
/* 80437CFC  2C 00 00 04 */	cmpwi r0, 4
/* 80437D00  40 82 00 70 */	bne lbl_80437D70
/* 80437D04  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437D08  38 03 40 00 */	addi r0, r3, 0x4000
/* 80437D0C  7C 03 07 34 */	extsh r3, r0
/* 80437D10  4B F8 2D 8D */	bl cos_s
/* 80437D14  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80437D18  3C 00 43 30 */	lis r0, 0x4330
/* 80437D1C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80437D20  3C A0 80 64 */	lis r5, lit_793@ha /* 0x806442C4@ha */
/* 80437D24  80 84 00 00 */	lwz r4, 0(r4)
/* 80437D28  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80437D2C  3C C0 80 64 */	lis r6, lit_471@ha /* 0x8064425C@ha */
/* 80437D30  90 01 00 58 */	stw r0, 0x58(r1)
/* 80437D34  A8 84 1B 2A */	lha r4, 0x1b2a(r4)
/* 80437D38  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 80437D3C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80437D40  C0 65 42 C4 */	lfs f3, lit_793@l(r5)  /* 0x806442C4@l */
/* 80437D44  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80437D48  C0 86 42 5C */	lfs f4, lit_471@l(r6)  /* 0x8064425C@l */
/* 80437D4C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80437D50  EC 40 10 28 */	fsubs f2, f0, f2
/* 80437D54  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80437D58  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80437D5C  EC 44 10 2A */	fadds f2, f4, f2
/* 80437D60  EC 22 00 72 */	fmuls f1, f2, f1
/* 80437D64  EC 00 08 2A */	fadds f0, f0, f1
/* 80437D68  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80437D6C  48 00 00 E0 */	b lbl_80437E4C
lbl_80437D70:
/* 80437D70  2C 00 00 02 */	cmpwi r0, 2
/* 80437D74  40 82 00 D8 */	bne lbl_80437E4C
/* 80437D78  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437D7C  4B F8 2D 21 */	bl cos_s
/* 80437D80  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80437D84  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80437D88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80437D8C  4C 41 13 82 */	cror 2, 1, 2
/* 80437D90  40 82 00 10 */	bne lbl_80437DA0
/* 80437D94  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437D98  4B F8 2D 05 */	bl cos_s
/* 80437D9C  48 00 00 10 */	b lbl_80437DAC
lbl_80437DA0:
/* 80437DA0  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437DA4  4B F8 2C F9 */	bl cos_s
/* 80437DA8  FC 20 08 50 */	fneg f1, f1
lbl_80437DAC:
/* 80437DAC  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 80437DB0  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80437DB4  C0 03 43 48 */	lfs f0, lit_1558@l(r3)  /* 0x80644348@l */
/* 80437DB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80437DBC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80437DC0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80437DC4  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80437DC8  3C 63 FF FF */	addis r3, r3, 0xffff
/* 80437DCC  38 63 40 00 */	addi r3, r3, 0x4000
/* 80437DD0  7C 60 07 35 */	extsh. r0, r3
/* 80437DD4  7C 60 07 34 */	extsh r0, r3
/* 80437DD8  7C 60 00 D0 */	neg r3, r0
/* 80437DDC  41 80 00 08 */	blt lbl_80437DE4
/* 80437DE0  7C 03 03 78 */	mr r3, r0
lbl_80437DE4:
/* 80437DE4  2C 03 47 1C */	cmpwi r3, 0x471c
/* 80437DE8  40 80 00 64 */	bge lbl_80437E4C
/* 80437DEC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80437DF0  3C 00 43 30 */	lis r0, 0x4330
/* 80437DF4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80437DF8  3C A0 80 64 */	lis r5, lit_1712@ha /* 0x80644368@ha */
/* 80437DFC  80 84 00 00 */	lwz r4, 0(r4)
/* 80437E00  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80437E04  3C C0 80 64 */	lis r6, lit_8885@ha /* 0x806444F4@ha */
/* 80437E08  90 01 00 58 */	stw r0, 0x58(r1)
/* 80437E0C  A8 84 1B A4 */	lha r4, 0x1ba4(r4)
/* 80437E10  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 80437E14  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80437E18  C0 45 43 68 */	lfs f2, lit_1712@l(r5)  /* 0x80644368@l */
/* 80437E1C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80437E20  C0 66 44 F4 */	lfs f3, lit_8885@l(r6)  /* 0x806444F4@l */
/* 80437E24  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80437E28  EC 00 08 28 */	fsubs f0, f0, f1
/* 80437E2C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80437E30  EC 02 00 32 */	fmuls f0, f2, f0
/* 80437E34  EC 03 00 2A */	fadds f0, f3, f0
/* 80437E38  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80437E3C  40 80 00 08 */	bge lbl_80437E44
/* 80437E40  48 00 00 08 */	b lbl_80437E48
lbl_80437E44:
/* 80437E44  FC 00 08 90 */	fmr f0, f1
lbl_80437E48:
/* 80437E48  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80437E4C:
/* 80437E4C  80 BE 05 98 */	lwz r5, 0x598(r30)
/* 80437E50  28 05 00 00 */	cmplwi r5, 0
/* 80437E54  41 82 01 80 */	beq lbl_80437FD4
/* 80437E58  A8 1E 06 30 */	lha r0, 0x630(r30)
/* 80437E5C  2C 00 00 04 */	cmpwi r0, 4
/* 80437E60  40 82 00 2C */	bne lbl_80437E8C
/* 80437E64  3C 80 80 64 */	lis r4, lit_697@ha /* 0x806442B0@ha */
/* 80437E68  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 80437E6C  C0 45 00 08 */	lfs f2, 8(r5)
/* 80437E70  C0 64 42 B0 */	lfs f3, lit_697@l(r4)  /* 0x806442B0@l */
/* 80437E74  C0 23 42 44 */	lfs f1, data_80644244@l(r3)  /* 0x80644244@l */
/* 80437E78  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80437E7C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80437E80  EC 01 00 32 */	fmuls f0, f1, f0
/* 80437E84  EF E2 00 2A */	fadds f31, f2, f0
/* 80437E88  48 00 00 28 */	b lbl_80437EB0
lbl_80437E8C:
/* 80437E8C  3C 80 80 64 */	lis r4, lit_557@ha /* 0x80644280@ha */
/* 80437E90  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 80437E94  C0 45 00 08 */	lfs f2, 8(r5)
/* 80437E98  C0 64 42 80 */	lfs f3, lit_557@l(r4)  /* 0x80644280@l */
/* 80437E9C  C0 23 42 44 */	lfs f1, data_80644244@l(r3)  /* 0x80644244@l */
/* 80437EA0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80437EA4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80437EA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80437EAC  EF E2 00 2A */	fadds f31, f2, f0
lbl_80437EB0:
/* 80437EB0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80437EB4  38 85 05 A0 */	addi r4, r5, 0x5a0
/* 80437EB8  38 A1 00 10 */	addi r5, r1, 0x10
/* 80437EBC  4B F8 30 BD */	bl xyz_t_sub
/* 80437EC0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80437EC4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80437EC8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80437ECC  EC 41 00 72 */	fmuls f2, f1, f1
/* 80437ED0  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80437ED4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80437ED8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80437EDC  EC 63 00 F2 */	fmuls f3, f3, f3
/* 80437EE0  EC 22 08 2A */	fadds f1, f2, f1
/* 80437EE4  EC 83 08 2A */	fadds f4, f3, f1
/* 80437EE8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80437EEC  40 81 00 6C */	ble lbl_80437F58
/* 80437EF0  FC 20 20 34 */	frsqrte f1, f4
/* 80437EF4  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80437EF8  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80437EFC  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80437F00  C8 64 00 00 */	lfd f3, 0(r4)
/* 80437F04  FC 01 00 72 */	fmul f0, f1, f1
/* 80437F08  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 80437F0C  FC 23 00 72 */	fmul f1, f3, f1
/* 80437F10  FC 04 00 32 */	fmul f0, f4, f0
/* 80437F14  FC 02 00 28 */	fsub f0, f2, f0
/* 80437F18  FC 21 00 32 */	fmul f1, f1, f0
/* 80437F1C  FC 01 00 72 */	fmul f0, f1, f1
/* 80437F20  FC 23 00 72 */	fmul f1, f3, f1
/* 80437F24  FC 04 00 32 */	fmul f0, f4, f0
/* 80437F28  FC 02 00 28 */	fsub f0, f2, f0
/* 80437F2C  FC 21 00 32 */	fmul f1, f1, f0
/* 80437F30  FC 01 00 72 */	fmul f0, f1, f1
/* 80437F34  FC 23 00 72 */	fmul f1, f3, f1
/* 80437F38  FC 04 00 32 */	fmul f0, f4, f0
/* 80437F3C  FC 02 00 28 */	fsub f0, f2, f0
/* 80437F40  FC 01 00 32 */	fmul f0, f1, f0
/* 80437F44  FC 04 00 32 */	fmul f0, f4, f0
/* 80437F48  FC 00 00 18 */	frsp f0, f0
/* 80437F4C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80437F50  C1 01 00 08 */	lfs f8, 8(r1)
/* 80437F54  48 00 00 08 */	b lbl_80437F5C
lbl_80437F58:
/* 80437F58  FD 00 20 90 */	fmr f8, f4
lbl_80437F5C:
/* 80437F5C  FC 08 F8 40 */	fcmpo cr0, f8, f31
/* 80437F60  40 80 00 74 */	bge lbl_80437FD4
/* 80437F64  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80437F68  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 80437F6C  C0 24 42 60 */	lfs f1, lit_472@l(r4)  /* 0x80644260@l */
/* 80437F70  ED 28 F8 28 */	fsubs f9, f8, f31
/* 80437F74  80 7E 05 98 */	lwz r3, 0x598(r30)
/* 80437F78  EC 21 00 24 */	fdivs f1, f1, f0
/* 80437F7C  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 80437F80  C0 C3 00 20 */	lfs f6, 0x20(r3)
/* 80437F84  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80437F88  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80437F8C  C0 A1 00 34 */	lfs f5, 0x34(r1)
/* 80437F90  EC E1 02 72 */	fmuls f7, f1, f9
/* 80437F94  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 80437F98  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80437F9C  EC E9 01 F2 */	fmuls f7, f9, f7
/* 80437FA0  EC E7 01 B2 */	fmuls f7, f7, f6
/* 80437FA4  EC 87 01 32 */	fmuls f4, f7, f4
/* 80437FA8  EC 47 00 B2 */	fmuls f2, f7, f2
/* 80437FAC  EC 07 00 32 */	fmuls f0, f7, f0
/* 80437FB0  EC 84 40 24 */	fdivs f4, f4, f8
/* 80437FB4  EC 42 40 24 */	fdivs f2, f2, f8
/* 80437FB8  EC 00 40 24 */	fdivs f0, f0, f8
/* 80437FBC  EC 85 20 2A */	fadds f4, f5, f4
/* 80437FC0  EC 43 10 2A */	fadds f2, f3, f2
/* 80437FC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80437FC8  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80437FCC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80437FD0  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80437FD4:
/* 80437FD4  A8 1E 06 30 */	lha r0, 0x630(r30)
/* 80437FD8  2C 00 00 02 */	cmpwi r0, 2
/* 80437FDC  40 82 00 28 */	bne lbl_80438004
/* 80437FE0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80437FE4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80437FE8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80437FEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80437FF0  40 80 00 14 */	bge lbl_80438004
/* 80437FF4  3C 60 80 64 */	lis r3, lit_7611@ha /* 0x8064445C@ha */
/* 80437FF8  C0 03 44 5C */	lfs f0, lit_7611@l(r3)  /* 0x8064445C@l */
/* 80437FFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80438000  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80438004:
/* 80438004  FC 20 F0 90 */	fmr f1, f30
/* 80438008  38 61 00 34 */	addi r3, r1, 0x34
/* 8043800C  4B F8 2F A1 */	bl xyz_t_mult_v
/* 80438010  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80438014  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80438018  C0 63 42 68 */	lfs f3, lit_527@l(r3)  /* 0x80644268@l */
/* 8043801C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80438020  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80438024  C0 44 42 5C */	lfs f2, lit_471@l(r4)  /* 0x8064425C@l */
/* 80438028  4B F8 32 6D */	bl add_calc2
/* 8043802C  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80438030  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80438034  C0 63 42 68 */	lfs f3, lit_527@l(r3)  /* 0x80644268@l */
/* 80438038  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8043803C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80438040  C0 44 42 5C */	lfs f2, lit_471@l(r4)  /* 0x8064425C@l */
/* 80438044  4B F8 32 51 */	bl add_calc2
/* 80438048  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8043804C  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80438050  C0 63 42 68 */	lfs f3, lit_527@l(r3)  /* 0x80644268@l */
/* 80438054  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 80438058  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8043805C  C0 44 42 5C */	lfs f2, lit_471@l(r4)  /* 0x8064425C@l */
/* 80438060  4B F8 32 35 */	bl add_calc2
/* 80438064  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80438068  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 8043806C  90 7D 00 00 */	stw r3, 0(r29)
/* 80438070  90 1D 00 04 */	stw r0, 4(r29)
/* 80438074  80 1E 05 E4 */	lwz r0, 0x5e4(r30)
/* 80438078  90 1D 00 08 */	stw r0, 8(r29)
/* 8043807C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80438080  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80438084  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80438088  39 61 00 70 */	addi r11, r1, 0x70
/* 8043808C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80438090  4B C6 2E 91 */	bl func_8009AF20
/* 80438094  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80438098  7C 08 03 A6 */	mtlr r0
/* 8043809C  38 21 00 90 */	addi r1, r1, 0x90
/* 804380A0  4E 80 00 20 */	blr 
