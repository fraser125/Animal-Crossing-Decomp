lbl_804EDD94:
/* 804EDD94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EDD98  7C 08 02 A6 */	mflr r0
/* 804EDD9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EDDA0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804EDDA4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804EDDA8  39 61 00 20 */	addi r11, r1, 0x20
/* 804EDDAC  4B BA D1 1D */	bl func_8009AEC8
/* 804EDDB0  7C 7C 1B 78 */	mr r28, r3
/* 804EDDB4  83 E3 0D 44 */	lwz r31, 0xd44(r3)
/* 804EDDB8  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804EDDBC  2C 1F 00 00 */	cmpwi r31, 0
/* 804EDDC0  41 82 00 10 */	beq lbl_804EDDD0
/* 804EDDC4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EDDC8  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EDDCC  48 00 00 0C */	b lbl_804EDDD8
lbl_804EDDD0:
/* 804EDDD0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EDDD4  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
lbl_804EDDD8:
/* 804EDDD8  3C 60 80 65 */	lis r3, lit_9741@ha /* 0x806484D8@ha */
/* 804EDDDC  EF E1 00 28 */	fsubs f31, f1, f0
/* 804EDDE0  C0 23 84 D8 */	lfs f1, lit_9741@l(r3)  /* 0x806484D8@l */
/* 804EDDE4  3B DC 0D 24 */	addi r30, r28, 0xd24
/* 804EDDE8  3B BC 0D 3C */	addi r29, r28, 0xd3c
/* 804EDDEC  3B 5C 0D 30 */	addi r26, r28, 0xd30
/* 804EDDF0  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804EDDF4  4C 40 13 82 */	cror 2, 0, 2
/* 804EDDF8  40 82 00 80 */	bne lbl_804EDE78
/* 804EDDFC  2C 1F 00 00 */	cmpwi r31, 0
/* 804EDE00  41 82 00 44 */	beq lbl_804EDE44
/* 804EDE04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EDE08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EDE0C  3F 63 00 02 */	addis r27, r3, 2
/* 804EDE10  80 7B 60 8C */	lwz r3, 0x608c(r27)
/* 804EDE14  28 03 00 00 */	cmplwi r3, 0
/* 804EDE18  41 82 00 2C */	beq lbl_804EDE44
/* 804EDE1C  81 83 00 44 */	lwz r12, 0x44(r3)
/* 804EDE20  7D 89 03 A6 */	mtctr r12
/* 804EDE24  4E 80 04 21 */	bctrl 
/* 804EDE28  2C 03 00 00 */	cmpwi r3, 0
/* 804EDE2C  41 82 00 18 */	beq lbl_804EDE44
/* 804EDE30  80 9B 60 8C */	lwz r4, 0x608c(r27)
/* 804EDE34  7F C3 F3 78 */	mr r3, r30
/* 804EDE38  81 84 00 48 */	lwz r12, 0x48(r4)
/* 804EDE3C  7D 89 03 A6 */	mtctr r12
/* 804EDE40  4E 80 04 21 */	bctrl 
lbl_804EDE44:
/* 804EDE44  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804EDE48  C0 1C 10 5C */	lfs f0, 0x105c(r28)
/* 804EDE4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EDE50  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804EDE54  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804EDE58  C0 1C 10 60 */	lfs f0, 0x1060(r28)
/* 804EDE5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EDE60  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804EDE64  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804EDE68  C0 1C 10 64 */	lfs f0, 0x1064(r28)
/* 804EDE6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EDE70  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804EDE74  48 00 00 8C */	b lbl_804EDF00
lbl_804EDE78:
/* 804EDE78  3C 60 80 64 */	lis r3, lit_4068@ha /* 0x80647A90@ha */
/* 804EDE7C  C0 03 7A 90 */	lfs f0, lit_4068@l(r3)  /* 0x80647A90@l */
/* 804EDE80  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804EDE84  4C 40 13 82 */	cror 2, 0, 2
/* 804EDE88  40 82 00 60 */	bne lbl_804EDEE8
/* 804EDE8C  3C 60 80 64 */	lis r3, lit_6171@ha /* 0x80647DDC@ha */
/* 804EDE90  EC 1F 08 28 */	fsubs f0, f31, f1
/* 804EDE94  C0 23 7D DC */	lfs f1, lit_6171@l(r3)  /* 0x80647DDC@l */
/* 804EDE98  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804EDE9C  C0 64 65 64 */	lfs f3, lit_603@l(r4)  /* 0x80646564@l */
/* 804EDEA0  EC 41 00 32 */	fmuls f2, f1, f0
/* 804EDEA4  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804EDEA8  C0 3C 10 5C */	lfs f1, 0x105c(r28)
/* 804EDEAC  EC 43 10 28 */	fsubs f2, f3, f2
/* 804EDEB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EDEB4  EC 01 00 2A */	fadds f0, f1, f0
/* 804EDEB8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804EDEBC  C0 1A 00 04 */	lfs f0, 4(r26)
/* 804EDEC0  C0 3C 10 60 */	lfs f1, 0x1060(r28)
/* 804EDEC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EDEC8  EC 01 00 2A */	fadds f0, f1, f0
/* 804EDECC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 804EDED0  C0 1A 00 08 */	lfs f0, 8(r26)
/* 804EDED4  C0 3C 10 64 */	lfs f1, 0x1064(r28)
/* 804EDED8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EDEDC  EC 01 00 2A */	fadds f0, f1, f0
/* 804EDEE0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 804EDEE4  48 00 00 1C */	b lbl_804EDF00
lbl_804EDEE8:
/* 804EDEE8  80 7C 10 5C */	lwz r3, 0x105c(r28)
/* 804EDEEC  80 1C 10 60 */	lwz r0, 0x1060(r28)
/* 804EDEF0  90 7E 00 00 */	stw r3, 0(r30)
/* 804EDEF4  90 1E 00 04 */	stw r0, 4(r30)
/* 804EDEF8  80 1C 10 64 */	lwz r0, 0x1064(r28)
/* 804EDEFC  90 1E 00 08 */	stw r0, 8(r30)
lbl_804EDF00:
/* 804EDF00  3C 60 80 65 */	lis r3, lit_9741@ha /* 0x806484D8@ha */
/* 804EDF04  C0 03 84 D8 */	lfs f0, lit_9741@l(r3)  /* 0x806484D8@l */
/* 804EDF08  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804EDF0C  4C 40 13 82 */	cror 2, 0, 2
/* 804EDF10  40 82 00 14 */	bne lbl_804EDF24
/* 804EDF14  3C 60 80 64 */	lis r3, lit_790@ha /* 0x80646668@ha */
/* 804EDF18  C0 03 66 68 */	lfs f0, lit_790@l(r3)  /* 0x80646668@l */
/* 804EDF1C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804EDF20  48 00 00 94 */	b lbl_804EDFB4
lbl_804EDF24:
/* 804EDF24  3C 60 80 64 */	lis r3, lit_4068@ha /* 0x80647A90@ha */
/* 804EDF28  C0 23 7A 90 */	lfs f1, lit_4068@l(r3)  /* 0x80647A90@l */
/* 804EDF2C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804EDF30  4C 40 13 82 */	cror 2, 0, 2
/* 804EDF34  40 82 00 38 */	bne lbl_804EDF6C
/* 804EDF38  3C 60 80 65 */	lis r3, lit_9742@ha /* 0x806484DC@ha */
/* 804EDF3C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 804EDF40  C0 23 84 DC */	lfs f1, lit_9742@l(r3)  /* 0x806484DC@l */
/* 804EDF44  3C 80 80 64 */	lis r4, lit_6171@ha /* 0x80647DDC@ha */
/* 804EDF48  38 64 7D DC */	addi r3, r4, lit_6171@l /* 0x80647DDC@l */
/* 804EDF4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EDF50  C0 43 00 00 */	lfs f2, 0(r3)
/* 804EDF54  3C 80 80 64 */	lis r4, lit_790@ha /* 0x80646668@ha */
/* 804EDF58  C0 24 66 68 */	lfs f1, lit_790@l(r4)  /* 0x80646668@l */
/* 804EDF5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EDF60  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EDF64  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804EDF68  48 00 00 4C */	b lbl_804EDFB4
lbl_804EDF6C:
/* 804EDF6C  3C 60 80 65 */	lis r3, lit_6484@ha /* 0x80648090@ha */
/* 804EDF70  C0 03 80 90 */	lfs f0, lit_6484@l(r3)  /* 0x80648090@l */
/* 804EDF74  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804EDF78  4C 40 13 82 */	cror 2, 0, 2
/* 804EDF7C  40 82 00 2C */	bne lbl_804EDFA8
/* 804EDF80  3C 80 80 65 */	lis r4, lit_9743@ha /* 0x806484E0@ha */
/* 804EDF84  EC 1F 08 28 */	fsubs f0, f31, f1
/* 804EDF88  C0 44 84 E0 */	lfs f2, lit_9743@l(r4)  /* 0x806484E0@l */
/* 804EDF8C  3C 60 80 65 */	lis r3, lit_9744@ha /* 0x806484E4@ha */
/* 804EDF90  C0 23 84 E4 */	lfs f1, lit_9744@l(r3)  /* 0x806484E4@l */
/* 804EDF94  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EDF98  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EDF9C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804EDFA0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804EDFA4  48 00 00 10 */	b lbl_804EDFB4
lbl_804EDFA8:
/* 804EDFA8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EDFAC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EDFB0  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_804EDFB4:
/* 804EDFB4  3C 60 80 64 */	lis r3, lit_790@ha /* 0x80646668@ha */
/* 804EDFB8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804EDFBC  C0 03 66 68 */	lfs f0, lit_790@l(r3)  /* 0x80646668@l */
/* 804EDFC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EDFC4  40 81 00 0C */	ble lbl_804EDFD0
/* 804EDFC8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804EDFCC  48 00 00 18 */	b lbl_804EDFE4
lbl_804EDFD0:
/* 804EDFD0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EDFD4  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EDFD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EDFDC  40 80 00 08 */	bge lbl_804EDFE4
/* 804EDFE0  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_804EDFE4:
/* 804EDFE4  2C 1F 00 00 */	cmpwi r31, 0
/* 804EDFE8  41 82 00 48 */	beq lbl_804EE030
/* 804EDFEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EDFF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EDFF4  3F 63 00 02 */	addis r27, r3, 2
/* 804EDFF8  80 7B 60 8C */	lwz r3, 0x608c(r27)
/* 804EDFFC  28 03 00 00 */	cmplwi r3, 0
/* 804EE000  41 82 00 30 */	beq lbl_804EE030
/* 804EE004  81 83 00 44 */	lwz r12, 0x44(r3)
/* 804EE008  7D 89 03 A6 */	mtctr r12
/* 804EE00C  4E 80 04 21 */	bctrl 
/* 804EE010  2C 03 00 00 */	cmpwi r3, 0
/* 804EE014  41 82 00 1C */	beq lbl_804EE030
/* 804EE018  80 9B 60 8C */	lwz r4, 0x608c(r27)
/* 804EE01C  7F C3 F3 78 */	mr r3, r30
/* 804EE020  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804EE024  81 84 00 40 */	lwz r12, 0x40(r4)
/* 804EE028  7D 89 03 A6 */	mtctr r12
/* 804EE02C  4E 80 04 21 */	bctrl 
lbl_804EE030:
/* 804EE030  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804EE034  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE038  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804EE03C  4B BA CE D9 */	bl func_8009AF14
/* 804EE040  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EE044  7C 08 03 A6 */	mtlr r0
/* 804EE048  38 21 00 30 */	addi r1, r1, 0x30
/* 804EE04C  4E 80 00 20 */	blr 
