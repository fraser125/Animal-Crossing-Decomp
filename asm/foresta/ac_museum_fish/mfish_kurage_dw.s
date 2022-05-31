lbl_80458DBC:
/* 80458DBC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80458DC0  7C 08 02 A6 */	mflr r0
/* 80458DC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80458DC8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80458DCC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80458DD0  39 61 00 40 */	addi r11, r1, 0x40
/* 80458DD4  4B C4 20 FD */	bl func_8009AED0
/* 80458DD8  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 80458DDC  7C 7D 1B 78 */	mr r29, r3
/* 80458DE0  80 C5 61 38 */	lwz r6, debug_mode@l(r5)  /* 0x81166138@l */
/* 80458DE4  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80458DE8  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80458DEC  3C 00 43 30 */	lis r0, 0x4330
/* 80458DF0  A8 66 1B 4A */	lha r3, 0x1b4a(r6)
/* 80458DF4  3C E0 80 64 */	lis r7, lit_793@ha /* 0x806442C4@ha */
/* 80458DF8  38 C7 42 C4 */	addi r6, r7, lit_793@l /* 0x806442C4@l */
/* 80458DFC  3D 00 80 64 */	lis r8, lit_527@ha /* 0x80644268@ha */
/* 80458E00  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80458E04  90 01 00 08 */	stw r0, 8(r1)
/* 80458E08  C8 25 00 00 */	lfd f1, 0(r5)
/* 80458E0C  3C E0 80 64 */	lis r7, lit_1070@ha /* 0x80644310@ha */
/* 80458E10  90 61 00 0C */	stw r3, 0xc(r1)
/* 80458E14  7C 9E 23 78 */	mr r30, r4
/* 80458E18  C0 46 00 00 */	lfs f2, 0(r6)
/* 80458E1C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80458E20  C0 9D 05 E8 */	lfs f4, 0x5e8(r29)
/* 80458E24  EC 00 08 28 */	fsubs f0, f0, f1
/* 80458E28  C0 68 42 68 */	lfs f3, lit_527@l(r8)  /* 0x80644268@l */
/* 80458E2C  C0 27 43 10 */	lfs f1, lit_1070@l(r7)  /* 0x80644310@l */
/* 80458E30  A8 7D 06 32 */	lha r3, 0x632(r29)
/* 80458E34  EC 02 00 32 */	fmuls f0, f2, f0
/* 80458E38  EC 44 18 28 */	fsubs f2, f4, f3
/* 80458E3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80458E40  EF E2 00 32 */	fmuls f31, f2, f0
/* 80458E44  4B F6 1C AD */	bl sin_s
/* 80458E48  C0 1D 05 F4 */	lfs f0, 0x5f4(r29)
/* 80458E4C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80458E50  83 FE 00 00 */	lwz r31, 0(r30)
/* 80458E54  EC 60 00 72 */	fmuls f3, f0, f1
/* 80458E58  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80458E5C  C0 3D 05 A0 */	lfs f1, 0x5a0(r29)
/* 80458E60  38 60 00 00 */	li r3, 0
/* 80458E64  C0 5D 05 A4 */	lfs f2, 0x5a4(r29)
/* 80458E68  EC 00 18 2A */	fadds f0, f0, f3
/* 80458E6C  C0 7D 05 A8 */	lfs f3, 0x5a8(r29)
/* 80458E70  EF FF 00 2A */	fadds f31, f31, f0
/* 80458E74  4B FB 34 8D */	bl Matrix_translate
/* 80458E78  A8 7D 06 0C */	lha r3, 0x60c(r29)
/* 80458E7C  38 C0 00 01 */	li r6, 1
/* 80458E80  A8 9D 06 0E */	lha r4, 0x60e(r29)
/* 80458E84  A8 BD 06 10 */	lha r5, 0x610(r29)
/* 80458E88  4B FB 3B 0D */	bl Matrix_rotateXYZ
/* 80458E8C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80458E90  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 80458E94  C0 43 42 60 */	lfs f2, lit_472@l(r3)  /* 0x80644260@l */
/* 80458E98  38 60 00 01 */	li r3, 1
/* 80458E9C  C0 9D 00 00 */	lfs f4, 0(r29)
/* 80458EA0  EC 02 00 24 */	fdivs f0, f2, f0
/* 80458EA4  EC 24 07 F2 */	fmuls f1, f4, f31
/* 80458EA8  EC 44 00 32 */	fmuls f2, f4, f0
/* 80458EAC  FC 60 08 90 */	fmr f3, f1
/* 80458EB0  4B FB 35 3D */	bl Matrix_scale
/* 80458EB4  4B FB 33 21 */	bl Matrix_push
/* 80458EB8  A8 7D 06 3C */	lha r3, 0x63c(r29)
/* 80458EBC  38 80 00 01 */	li r4, 1
/* 80458EC0  4B FB 37 9D */	bl Matrix_RotateY
/* 80458EC4  A8 7D 06 3C */	lha r3, 0x63c(r29)
/* 80458EC8  4B F6 1B D5 */	bl cos_s
/* 80458ECC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80458ED0  3C 00 43 30 */	lis r0, 0x4330
/* 80458ED4  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80458ED8  3C E0 80 64 */	lis r7, lit_527@ha /* 0x80644268@ha */
/* 80458EDC  80 84 00 00 */	lwz r4, 0(r4)
/* 80458EE0  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80458EE4  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80458EE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80458EEC  A8 84 1B AA */	lha r4, 0x1baa(r4)
/* 80458EF0  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80458EF4  38 C3 42 C4 */	addi r6, r3, lit_793@l /* 0x806442C4@l */
/* 80458EF8  C8 45 00 00 */	lfd f2, 0(r5)
/* 80458EFC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80458F00  C0 66 00 00 */	lfs f3, 0(r6)
/* 80458F04  90 81 00 14 */	stw r4, 0x14(r1)
/* 80458F08  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80458F0C  C0 87 42 68 */	lfs f4, lit_527@l(r7)  /* 0x80644268@l */
/* 80458F10  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80458F14  EC 40 10 28 */	fsubs f2, f0, f2
/* 80458F18  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80458F1C  A8 7D 06 3C */	lha r3, 0x63c(r29)
/* 80458F20  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80458F24  EC 44 10 2A */	fadds f2, f4, f2
/* 80458F28  EC 22 00 72 */	fmuls f1, f2, f1
/* 80458F2C  EF E0 08 2A */	fadds f31, f0, f1
/* 80458F30  4B F6 1B C1 */	bl sin_s
/* 80458F34  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80458F38  3C 00 43 30 */	lis r0, 0x4330
/* 80458F3C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80458F40  90 01 00 18 */	stw r0, 0x18(r1)
/* 80458F44  80 84 00 00 */	lwz r4, 0(r4)
/* 80458F48  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80458F4C  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80458F50  3C E0 80 64 */	lis r7, lit_527@ha /* 0x80644268@ha */
/* 80458F54  A8 84 1B AA */	lha r4, 0x1baa(r4)
/* 80458F58  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80458F5C  38 C3 42 C4 */	addi r6, r3, lit_793@l /* 0x806442C4@l */
/* 80458F60  C8 85 00 00 */	lfd f4, 0(r5)
/* 80458F64  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80458F68  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80458F6C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80458F70  FC 60 F8 90 */	fmr f3, f31
/* 80458F74  C0 43 42 60 */	lfs f2, lit_472@l(r3)  /* 0x80644260@l */
/* 80458F78  38 60 00 01 */	li r3, 1
/* 80458F7C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80458F80  C0 A6 00 00 */	lfs f5, 0(r6)
/* 80458F84  EC 00 20 28 */	fsubs f0, f0, f4
/* 80458F88  C0 87 42 68 */	lfs f4, lit_527@l(r7)  /* 0x80644268@l */
/* 80458F8C  EC 05 00 32 */	fmuls f0, f5, f0
/* 80458F90  EC 04 00 2A */	fadds f0, f4, f0
/* 80458F94  EC 00 00 72 */	fmuls f0, f0, f1
/* 80458F98  EC 22 00 2A */	fadds f1, f2, f0
/* 80458F9C  4B FB 34 51 */	bl Matrix_scale
/* 80458FA0  A8 1D 06 3C */	lha r0, 0x63c(r29)
/* 80458FA4  38 80 00 01 */	li r4, 1
/* 80458FA8  7C 00 00 D0 */	neg r0, r0
/* 80458FAC  7C 03 07 34 */	extsh r3, r0
/* 80458FB0  4B FB 36 AD */	bl Matrix_RotateY
/* 80458FB4  83 9F 02 E0 */	lwz r28, 0x2e0(r31)
/* 80458FB8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80458FBC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80458FC0  38 7C 00 08 */	addi r3, r28, 8
/* 80458FC4  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80458FC8  90 1C 00 00 */	stw r0, 0(r28)
/* 80458FCC  80 7E 00 00 */	lwz r3, 0(r30)
/* 80458FD0  4B FB 44 05 */	bl _Matrix_to_Mtx_new
/* 80458FD4  90 7C 00 04 */	stw r3, 4(r28)
/* 80458FD8  3C 60 80 CD */	lis r3, act_mus_kurage_sakana_body_model@ha /* 0x80CD2C28@ha */
/* 80458FDC  3C 80 DE 00 */	lis r4, 0xde00
/* 80458FE0  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80458FE4  38 03 2C 28 */	addi r0, r3, act_mus_kurage_sakana_body_model@l /* 0x80CD2C28@l */
/* 80458FE8  38 65 00 08 */	addi r3, r5, 8
/* 80458FEC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80458FF0  90 85 00 00 */	stw r4, 0(r5)
/* 80458FF4  90 05 00 04 */	stw r0, 4(r5)
/* 80458FF8  4B FB 32 1D */	bl Matrix_pull
/* 80458FFC  A8 7D 06 3C */	lha r3, 0x63c(r29)
/* 80459000  38 80 00 01 */	li r4, 1
/* 80459004  4B FB 36 59 */	bl Matrix_RotateY
/* 80459008  A8 7D 06 3C */	lha r3, 0x63c(r29)
/* 8045900C  4B F6 1A 91 */	bl cos_s
/* 80459010  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80459014  3C 00 43 30 */	lis r0, 0x4330
/* 80459018  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8045901C  3C E0 80 64 */	lis r7, lit_527@ha /* 0x80644268@ha */
/* 80459020  80 84 00 00 */	lwz r4, 0(r4)
/* 80459024  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80459028  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 8045902C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80459030  A8 84 1B AA */	lha r4, 0x1baa(r4)
/* 80459034  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 80459038  38 C3 42 C4 */	addi r6, r3, lit_793@l /* 0x806442C4@l */
/* 8045903C  C8 45 00 00 */	lfd f2, 0(r5)
/* 80459040  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80459044  C0 66 00 00 */	lfs f3, 0(r6)
/* 80459048  90 81 00 24 */	stw r4, 0x24(r1)
/* 8045904C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80459050  C0 87 42 68 */	lfs f4, lit_527@l(r7)  /* 0x80644268@l */
/* 80459054  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80459058  EC 40 10 28 */	fsubs f2, f0, f2
/* 8045905C  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80459060  A8 7D 06 3C */	lha r3, 0x63c(r29)
/* 80459064  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80459068  EC 44 10 2A */	fadds f2, f4, f2
/* 8045906C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80459070  EF E0 08 2A */	fadds f31, f0, f1
/* 80459074  4B F6 1A 7D */	bl sin_s
/* 80459078  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8045907C  3C 00 43 30 */	lis r0, 0x4330
/* 80459080  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80459084  90 01 00 28 */	stw r0, 0x28(r1)
/* 80459088  80 84 00 00 */	lwz r4, 0(r4)
/* 8045908C  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80459090  38 A3 42 8C */	addi r5, r3, lit_570@l /* 0x8064428C@l */
/* 80459094  3C E0 80 64 */	lis r7, lit_527@ha /* 0x80644268@ha */
/* 80459098  A8 84 1B AA */	lha r4, 0x1baa(r4)
/* 8045909C  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 804590A0  38 C3 42 C4 */	addi r6, r3, lit_793@l /* 0x806442C4@l */
/* 804590A4  C8 85 00 00 */	lfd f4, 0(r5)
/* 804590A8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804590AC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804590B0  90 81 00 2C */	stw r4, 0x2c(r1)
/* 804590B4  FC 60 F8 90 */	fmr f3, f31
/* 804590B8  C0 43 42 60 */	lfs f2, lit_472@l(r3)  /* 0x80644260@l */
/* 804590BC  38 60 00 01 */	li r3, 1
/* 804590C0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804590C4  C0 A6 00 00 */	lfs f5, 0(r6)
/* 804590C8  EC 00 20 28 */	fsubs f0, f0, f4
/* 804590CC  C0 87 42 68 */	lfs f4, lit_527@l(r7)  /* 0x80644268@l */
/* 804590D0  EC 05 00 32 */	fmuls f0, f5, f0
/* 804590D4  EC 04 00 2A */	fadds f0, f4, f0
/* 804590D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804590DC  EC 22 00 2A */	fadds f1, f2, f0
/* 804590E0  4B FB 33 0D */	bl Matrix_scale
/* 804590E4  A8 1D 06 3C */	lha r0, 0x63c(r29)
/* 804590E8  38 80 00 01 */	li r4, 1
/* 804590EC  7C 00 00 D0 */	neg r0, r0
/* 804590F0  7C 03 07 34 */	extsh r3, r0
/* 804590F4  4B FB 35 69 */	bl Matrix_RotateY
/* 804590F8  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 804590FC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80459100  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80459104  38 7D 00 08 */	addi r3, r29, 8
/* 80459108  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8045910C  90 1D 00 00 */	stw r0, 0(r29)
/* 80459110  80 7E 00 00 */	lwz r3, 0(r30)
/* 80459114  4B FB 42 C1 */	bl _Matrix_to_Mtx_new
/* 80459118  90 7D 00 04 */	stw r3, 4(r29)
/* 8045911C  3C 60 80 CD */	lis r3, act_mus_kurage_sakana_foot_model@ha /* 0x80CD2BA0@ha */
/* 80459120  3C 80 DE 00 */	lis r4, 0xde00
/* 80459124  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80459128  38 03 2B A0 */	addi r0, r3, act_mus_kurage_sakana_foot_model@l /* 0x80CD2BA0@l */
/* 8045912C  38 65 00 08 */	addi r3, r5, 8
/* 80459130  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80459134  90 85 00 00 */	stw r4, 0(r5)
/* 80459138  90 05 00 04 */	stw r0, 4(r5)
/* 8045913C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80459140  39 61 00 40 */	addi r11, r1, 0x40
/* 80459144  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80459148  4B C4 1D D5 */	bl func_8009AF1C
/* 8045914C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80459150  7C 08 03 A6 */	mtlr r0
/* 80459154  38 21 00 50 */	addi r1, r1, 0x50
/* 80459158  4E 80 00 20 */	blr 
