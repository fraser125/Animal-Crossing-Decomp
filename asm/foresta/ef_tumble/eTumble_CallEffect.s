lbl_80622600:
/* 80622600  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80622604  7C 08 02 A6 */	mflr r0
/* 80622608  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8062260C  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80622610  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80622614  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80622618  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 8062261C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80622620  4B A7 88 91 */	bl func_8009AEB0
/* 80622624  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 80622628  7C B6 2B 78 */	mr r22, r5
/* 8062262C  38 AA 85 38 */	addi r5, r10, common_data@l /* 0x81138538@l */
/* 80622630  7C 74 1B 78 */	mr r20, r3
/* 80622634  3C 65 00 02 */	addis r3, r5, 2
/* 80622638  7C 95 23 78 */	mr r21, r4
/* 8062263C  83 C3 61 10 */	lwz r30, 0x6110(r3)
/* 80622640  7C D7 33 78 */	mr r23, r6
/* 80622644  7C F8 3B 78 */	mr r24, r7
/* 80622648  7D 19 43 78 */	mr r25, r8
/* 8062264C  7D 3A 4B 78 */	mr r26, r9
/* 80622650  7E C3 B3 78 */	mr r3, r22
/* 80622654  4B D9 84 9D */	bl sin_s
/* 80622658  FF C0 08 90 */	fmr f30, f1
/* 8062265C  7E C3 B3 78 */	mr r3, r22
/* 80622660  4B D9 84 3D */	bl cos_s
/* 80622664  FF E0 08 90 */	fmr f31, f1
/* 80622668  7F 40 07 35 */	extsh. r0, r26
/* 8062266C  40 82 00 10 */	bne lbl_8062267C
/* 80622670  3B A0 00 03 */	li r29, 3
/* 80622674  3B 80 00 03 */	li r28, 3
/* 80622678  48 00 00 0C */	b lbl_80622684
lbl_8062267C:
/* 8062267C  3B A0 00 07 */	li r29, 7
/* 80622680  3B 80 00 07 */	li r28, 7
lbl_80622684:
/* 80622684  7F 20 07 34 */	extsh r0, r25
/* 80622688  3B E0 00 0A */	li r31, 0xa
/* 8062268C  28 00 00 16 */	cmplwi r0, 0x16
/* 80622690  3B 60 00 0A */	li r27, 0xa
/* 80622694  41 81 04 EC */	bgt lbl_80622B80
/* 80622698  3C 60 80 6D */	lis r3, lit_516@ha /* 0x806D3840@ha */
/* 8062269C  54 00 10 3A */	slwi r0, r0, 2
/* 806226A0  38 63 38 40 */	addi r3, r3, lit_516@l /* 0x806D3840@l */
/* 806226A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 806226A8  7C 09 03 A6 */	mtctr r0
/* 806226AC  4E 80 04 20 */	bctr 
lbl_806226B0:
/* 806226B0  28 1E 00 03 */	cmplwi r30, 3
/* 806226B4  40 82 01 10 */	bne lbl_806227C4
/* 806226B8  7F 40 07 34 */	extsh r0, r26
/* 806226BC  2C 00 00 01 */	cmpwi r0, 1
/* 806226C0  40 82 00 AC */	bne lbl_8062276C
/* 806226C4  3C 60 80 65 */	lis r3, data_8064CE4C@ha /* 0x8064CE4C@ha */
/* 806226C8  3C 80 80 65 */	lis r4, lit_511@ha /* 0x8064CE50@ha */
/* 806226CC  38 A3 CE 4C */	addi r5, r3, data_8064CE4C@l /* 0x8064CE4C@l */
/* 806226D0  C0 74 00 00 */	lfs f3, 0(r20)
/* 806226D4  C0 25 00 00 */	lfs f1, 0(r5)
/* 806226D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806226DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806226E0  C0 04 CE 50 */	lfs f0, lit_511@l(r4)  /* 0x8064CE50@l */
/* 806226E4  EC 41 07 B2 */	fmuls f2, f1, f30
/* 806226E8  3F 43 00 02 */	addis r26, r3, 2
/* 806226EC  EC 21 07 F2 */	fmuls f1, f1, f31
/* 806226F0  EC 43 10 2A */	fadds f2, f3, f2
/* 806226F4  D0 54 00 00 */	stfs f2, 0(r20)
/* 806226F8  C0 54 00 08 */	lfs f2, 8(r20)
/* 806226FC  EC 22 08 2A */	fadds f1, f2, f1
/* 80622700  D0 34 00 08 */	stfs f1, 8(r20)
/* 80622704  C0 34 00 04 */	lfs f1, 4(r20)
/* 80622708  EC 01 00 2A */	fadds f0, f1, f0
/* 8062270C  D0 14 00 04 */	stfs f0, 4(r20)
/* 80622710  48 00 00 4C */	b lbl_8062275C
lbl_80622714:
/* 80622714  80 94 00 00 */	lwz r4, 0(r20)
/* 80622718  7E A5 AB 78 */	mr r5, r21
/* 8062271C  80 74 00 04 */	lwz r3, 4(r20)
/* 80622720  7E C6 B3 78 */	mr r6, r22
/* 80622724  80 14 00 08 */	lwz r0, 8(r20)
/* 80622728  7E E7 BB 78 */	mr r7, r23
/* 8062272C  90 81 00 74 */	stw r4, 0x74(r1)
/* 80622730  7F 08 C3 78 */	mr r8, r24
/* 80622734  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 80622738  7F 29 CB 78 */	mr r9, r25
/* 8062273C  90 61 00 78 */	stw r3, 0x78(r1)
/* 80622740  7F 6A DB 78 */	mr r10, r27
/* 80622744  38 81 00 74 */	addi r4, r1, 0x74
/* 80622748  38 60 00 3C */	li r3, 0x3c
/* 8062274C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80622750  81 8B 00 00 */	lwz r12, 0(r11)
/* 80622754  7D 89 03 A6 */	mtctr r12
/* 80622758  4E 80 04 21 */	bctrl 
lbl_8062275C:
/* 8062275C  7F 60 07 35 */	extsh. r0, r27
/* 80622760  3B 7B FF FF */	addi r27, r27, -1
/* 80622764  40 82 FF B0 */	bne lbl_80622714
/* 80622768  48 00 05 64 */	b lbl_80622CCC
lbl_8062276C:
/* 8062276C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80622770  80 B4 00 00 */	lwz r5, 0(r20)
/* 80622774  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80622778  80 94 00 04 */	lwz r4, 4(r20)
/* 8062277C  80 14 00 08 */	lwz r0, 8(r20)
/* 80622780  3C 63 00 02 */	addis r3, r3, 2
/* 80622784  90 A1 00 68 */	stw r5, 0x68(r1)
/* 80622788  7E A5 AB 78 */	mr r5, r21
/* 8062278C  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 80622790  7E C6 B3 78 */	mr r6, r22
/* 80622794  90 81 00 6C */	stw r4, 0x6c(r1)
/* 80622798  7E E7 BB 78 */	mr r7, r23
/* 8062279C  7F 08 C3 78 */	mr r8, r24
/* 806227A0  7F 29 CB 78 */	mr r9, r25
/* 806227A4  90 01 00 70 */	stw r0, 0x70(r1)
/* 806227A8  7F 4A D3 78 */	mr r10, r26
/* 806227AC  38 81 00 68 */	addi r4, r1, 0x68
/* 806227B0  38 60 00 31 */	li r3, 0x31
/* 806227B4  81 8B 00 00 */	lwz r12, 0(r11)
/* 806227B8  7D 89 03 A6 */	mtctr r12
/* 806227BC  4E 80 04 21 */	bctrl 
/* 806227C0  48 00 05 0C */	b lbl_80622CCC
lbl_806227C4:
/* 806227C4  7F 40 07 34 */	extsh r0, r26
/* 806227C8  2C 00 00 01 */	cmpwi r0, 1
/* 806227CC  40 82 05 00 */	bne lbl_80622CCC
/* 806227D0  4B D9 81 C9 */	bl mEnv_NowWeather
/* 806227D4  2C 03 00 01 */	cmpwi r3, 1
/* 806227D8  41 82 00 C0 */	beq lbl_80622898
/* 806227DC  3C 60 80 65 */	lis r3, lit_512@ha /* 0x8064CE54@ha */
/* 806227E0  38 16 CB 62 */	addi r0, r22, -13470
/* 806227E4  38 A3 CE 54 */	addi r5, r3, lit_512@l /* 0x8064CE54@l */
/* 806227E8  C0 74 00 00 */	lfs f3, 0(r20)
/* 806227EC  C0 05 00 00 */	lfs f0, 0(r5)
/* 806227F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806227F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806227F8  3C 80 80 65 */	lis r4, lit_513@ha /* 0x8064CE58@ha */
/* 806227FC  EC 40 07 B2 */	fmuls f2, f0, f30
/* 80622800  7C 1B 07 34 */	extsh r27, r0
/* 80622804  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80622808  C0 04 CE 58 */	lfs f0, lit_513@l(r4)  /* 0x8064CE58@l */
/* 8062280C  3E C3 00 02 */	addis r22, r3, 2
/* 80622810  3B 40 00 00 */	li r26, 0
/* 80622814  EC 43 10 2A */	fadds f2, f3, f2
/* 80622818  D0 54 00 00 */	stfs f2, 0(r20)
/* 8062281C  C0 54 00 08 */	lfs f2, 8(r20)
/* 80622820  EC 22 08 2A */	fadds f1, f2, f1
/* 80622824  D0 34 00 08 */	stfs f1, 8(r20)
/* 80622828  C0 34 00 04 */	lfs f1, 4(r20)
/* 8062282C  EC 01 00 2A */	fadds f0, f1, f0
/* 80622830  D0 14 00 04 */	stfs f0, 4(r20)
/* 80622834  48 00 00 54 */	b lbl_80622888
lbl_80622838:
/* 80622838  80 94 00 00 */	lwz r4, 0(r20)
/* 8062283C  7E A5 AB 78 */	mr r5, r21
/* 80622840  80 74 00 04 */	lwz r3, 4(r20)
/* 80622844  7F 66 DB 78 */	mr r6, r27
/* 80622848  80 14 00 08 */	lwz r0, 8(r20)
/* 8062284C  7E E7 BB 78 */	mr r7, r23
/* 80622850  90 81 00 5C */	stw r4, 0x5c(r1)
/* 80622854  7F 08 C3 78 */	mr r8, r24
/* 80622858  81 76 60 9C */	lwz r11, 0x609c(r22)
/* 8062285C  7F 29 CB 78 */	mr r9, r25
/* 80622860  90 61 00 60 */	stw r3, 0x60(r1)
/* 80622864  7F 4A D3 78 */	mr r10, r26
/* 80622868  38 81 00 5C */	addi r4, r1, 0x5c
/* 8062286C  38 60 00 38 */	li r3, 0x38
/* 80622870  90 01 00 64 */	stw r0, 0x64(r1)
/* 80622874  81 8B 00 00 */	lwz r12, 0(r11)
/* 80622878  7D 89 03 A6 */	mtctr r12
/* 8062287C  4E 80 04 21 */	bctrl 
/* 80622880  3B 7B 1A 4F */	addi r27, r27, 0x1a4f
/* 80622884  3B 5A 00 01 */	addi r26, r26, 1
lbl_80622888:
/* 80622888  7F 40 07 34 */	extsh r0, r26
/* 8062288C  2C 00 00 05 */	cmpwi r0, 5
/* 80622890  41 80 FF A8 */	blt lbl_80622838
/* 80622894  48 00 04 38 */	b lbl_80622CCC
lbl_80622898:
/* 80622898  3C 80 80 65 */	lis r4, lit_511@ha /* 0x8064CE50@ha */
/* 8062289C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806228A0  C0 34 00 04 */	lfs f1, 4(r20)
/* 806228A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806228A8  C0 04 CE 50 */	lfs f0, lit_511@l(r4)  /* 0x8064CE50@l */
/* 806228AC  3F 43 00 02 */	addis r26, r3, 2
/* 806228B0  EC 01 00 2A */	fadds f0, f1, f0
/* 806228B4  D0 14 00 04 */	stfs f0, 4(r20)
/* 806228B8  48 00 00 4C */	b lbl_80622904
lbl_806228BC:
/* 806228BC  80 94 00 00 */	lwz r4, 0(r20)
/* 806228C0  7E A5 AB 78 */	mr r5, r21
/* 806228C4  80 74 00 04 */	lwz r3, 4(r20)
/* 806228C8  7E C6 B3 78 */	mr r6, r22
/* 806228CC  80 14 00 08 */	lwz r0, 8(r20)
/* 806228D0  7E E7 BB 78 */	mr r7, r23
/* 806228D4  90 81 00 50 */	stw r4, 0x50(r1)
/* 806228D8  7F 08 C3 78 */	mr r8, r24
/* 806228DC  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 806228E0  7F 29 CB 78 */	mr r9, r25
/* 806228E4  90 61 00 54 */	stw r3, 0x54(r1)
/* 806228E8  7F EA FB 78 */	mr r10, r31
/* 806228EC  38 81 00 50 */	addi r4, r1, 0x50
/* 806228F0  38 60 00 3B */	li r3, 0x3b
/* 806228F4  90 01 00 58 */	stw r0, 0x58(r1)
/* 806228F8  81 8B 00 00 */	lwz r12, 0(r11)
/* 806228FC  7D 89 03 A6 */	mtctr r12
/* 80622900  4E 80 04 21 */	bctrl 
lbl_80622904:
/* 80622904  7F E0 07 35 */	extsh. r0, r31
/* 80622908  3B FF FF FF */	addi r31, r31, -1
/* 8062290C  40 82 FF B0 */	bne lbl_806228BC
/* 80622910  48 00 03 BC */	b lbl_80622CCC
lbl_80622914:
/* 80622914  3C 60 80 65 */	lis r3, lit_512@ha /* 0x8064CE54@ha */
/* 80622918  7F 40 07 34 */	extsh r0, r26
/* 8062291C  38 83 CE 54 */	addi r4, r3, lit_512@l /* 0x8064CE54@l */
/* 80622920  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80622924  C0 04 00 00 */	lfs f0, 0(r4)
/* 80622928  30 00 FF FF */	addic r0, r0, -1
/* 8062292C  7C 80 01 10 */	subfe r4, r0, r0
/* 80622930  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80622934  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80622938  C0 54 00 00 */	lfs f2, 0(r20)
/* 8062293C  38 04 00 02 */	addi r0, r4, 2
/* 80622940  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80622944  7C 1A 03 78 */	mr r26, r0
/* 80622948  3F E3 00 02 */	addis r31, r3, 2
/* 8062294C  EC 22 08 2A */	fadds f1, f2, f1
/* 80622950  D0 34 00 00 */	stfs f1, 0(r20)
/* 80622954  C0 34 00 08 */	lfs f1, 8(r20)
/* 80622958  EC 01 00 2A */	fadds f0, f1, f0
/* 8062295C  D0 14 00 08 */	stfs f0, 8(r20)
/* 80622960  48 00 00 4C */	b lbl_806229AC
lbl_80622964:
/* 80622964  80 94 00 00 */	lwz r4, 0(r20)
/* 80622968  7E A5 AB 78 */	mr r5, r21
/* 8062296C  80 74 00 04 */	lwz r3, 4(r20)
/* 80622970  7E C6 B3 78 */	mr r6, r22
/* 80622974  80 14 00 08 */	lwz r0, 8(r20)
/* 80622978  7E E7 BB 78 */	mr r7, r23
/* 8062297C  90 81 00 44 */	stw r4, 0x44(r1)
/* 80622980  7F 08 C3 78 */	mr r8, r24
/* 80622984  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 80622988  7F 29 CB 78 */	mr r9, r25
/* 8062298C  90 61 00 48 */	stw r3, 0x48(r1)
/* 80622990  7F 4A D3 78 */	mr r10, r26
/* 80622994  38 81 00 44 */	addi r4, r1, 0x44
/* 80622998  38 60 00 33 */	li r3, 0x33
/* 8062299C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806229A0  81 8B 00 00 */	lwz r12, 0(r11)
/* 806229A4  7D 89 03 A6 */	mtctr r12
/* 806229A8  4E 80 04 21 */	bctrl 
lbl_806229AC:
/* 806229AC  7F A0 07 35 */	extsh. r0, r29
/* 806229B0  3B BD FF FF */	addi r29, r29, -1
/* 806229B4  40 82 FF B0 */	bne lbl_80622964
/* 806229B8  28 1E 00 03 */	cmplwi r30, 3
/* 806229BC  40 82 03 10 */	bne lbl_80622CCC
/* 806229C0  48 00 00 4C */	b lbl_80622A0C
lbl_806229C4:
/* 806229C4  80 94 00 00 */	lwz r4, 0(r20)
/* 806229C8  7E A5 AB 78 */	mr r5, r21
/* 806229CC  80 74 00 04 */	lwz r3, 4(r20)
/* 806229D0  7E C6 B3 78 */	mr r6, r22
/* 806229D4  80 14 00 08 */	lwz r0, 8(r20)
/* 806229D8  7E E7 BB 78 */	mr r7, r23
/* 806229DC  90 81 00 38 */	stw r4, 0x38(r1)
/* 806229E0  7F 08 C3 78 */	mr r8, r24
/* 806229E4  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 806229E8  7F 29 CB 78 */	mr r9, r25
/* 806229EC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 806229F0  38 81 00 38 */	addi r4, r1, 0x38
/* 806229F4  38 60 00 34 */	li r3, 0x34
/* 806229F8  39 40 00 00 */	li r10, 0
/* 806229FC  90 01 00 40 */	stw r0, 0x40(r1)
/* 80622A00  81 8B 00 00 */	lwz r12, 0(r11)
/* 80622A04  7D 89 03 A6 */	mtctr r12
/* 80622A08  4E 80 04 21 */	bctrl 
lbl_80622A0C:
/* 80622A0C  7F 80 07 35 */	extsh. r0, r28
/* 80622A10  3B 9C FF FF */	addi r28, r28, -1
/* 80622A14  40 82 FF B0 */	bne lbl_806229C4
/* 80622A18  48 00 02 B4 */	b lbl_80622CCC
lbl_80622A1C:
/* 80622A1C  7F 40 07 34 */	extsh r0, r26
/* 80622A20  2C 00 00 01 */	cmpwi r0, 1
/* 80622A24  40 82 02 A8 */	bne lbl_80622CCC
/* 80622A28  3C 80 80 65 */	lis r4, lit_513@ha /* 0x8064CE58@ha */
/* 80622A2C  3C 60 80 65 */	lis r3, lit_514@ha /* 0x8064CE5C@ha */
/* 80622A30  38 A4 CE 58 */	addi r5, r4, lit_513@l /* 0x8064CE58@l */
/* 80622A34  38 16 CB 62 */	addi r0, r22, -13470
/* 80622A38  C0 34 00 04 */	lfs f1, 4(r20)
/* 80622A3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80622A40  C0 05 00 00 */	lfs f0, 0(r5)
/* 80622A44  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80622A48  C3 E3 CE 5C */	lfs f31, lit_514@l(r3)  /* 0x8064CE5C@l */
/* 80622A4C  7C 1A 07 34 */	extsh r26, r0
/* 80622A50  EC 01 00 2A */	fadds f0, f1, f0
/* 80622A54  3E C4 00 02 */	addis r22, r4, 2
/* 80622A58  3B 20 00 04 */	li r25, 4
/* 80622A5C  D0 14 00 04 */	stfs f0, 4(r20)
lbl_80622A60:
/* 80622A60  80 B4 00 00 */	lwz r5, 0(r20)
/* 80622A64  7F 43 D3 78 */	mr r3, r26
/* 80622A68  80 94 00 04 */	lwz r4, 4(r20)
/* 80622A6C  80 14 00 08 */	lwz r0, 8(r20)
/* 80622A70  90 A1 00 80 */	stw r5, 0x80(r1)
/* 80622A74  90 81 00 84 */	stw r4, 0x84(r1)
/* 80622A78  90 01 00 88 */	stw r0, 0x88(r1)
/* 80622A7C  4B D9 80 75 */	bl sin_s
/* 80622A80  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80622A84  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80622A88  7F 43 D3 78 */	mr r3, r26
/* 80622A8C  EC 00 08 2A */	fadds f0, f0, f1
/* 80622A90  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80622A94  4B D9 80 09 */	bl cos_s
/* 80622A98  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80622A9C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80622AA0  80 61 00 80 */	lwz r3, 0x80(r1)
/* 80622AA4  7E A5 AB 78 */	mr r5, r21
/* 80622AA8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80622AAC  7F 46 D3 78 */	mr r6, r26
/* 80622AB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80622AB4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80622AB8  81 76 60 9C */	lwz r11, 0x609c(r22)
/* 80622ABC  7E E7 BB 78 */	mr r7, r23
/* 80622AC0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80622AC4  7F 08 C3 78 */	mr r8, r24
/* 80622AC8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80622ACC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80622AD0  38 60 00 4C */	li r3, 0x4c
/* 80622AD4  39 20 00 01 */	li r9, 1
/* 80622AD8  80 01 00 88 */	lwz r0, 0x88(r1)
/* 80622ADC  39 40 00 00 */	li r10, 0
/* 80622AE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80622AE4  81 8B 00 00 */	lwz r12, 0(r11)
/* 80622AE8  7D 89 03 A6 */	mtctr r12
/* 80622AEC  4E 80 04 21 */	bctrl 
/* 80622AF0  2C 19 00 00 */	cmpwi r25, 0
/* 80622AF4  3B 5A 1A 4F */	addi r26, r26, 0x1a4f
/* 80622AF8  3B 39 FF FF */	addi r25, r25, -1
/* 80622AFC  40 82 FF 64 */	bne lbl_80622A60
/* 80622B00  48 00 01 CC */	b lbl_80622CCC
lbl_80622B04:
/* 80622B04  3C 80 80 65 */	lis r4, lit_511@ha /* 0x8064CE50@ha */
/* 80622B08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80622B0C  C0 34 00 04 */	lfs f1, 4(r20)
/* 80622B10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80622B14  C0 04 CE 50 */	lfs f0, lit_511@l(r4)  /* 0x8064CE50@l */
/* 80622B18  3F 43 00 02 */	addis r26, r3, 2
/* 80622B1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80622B20  D0 14 00 04 */	stfs f0, 4(r20)
/* 80622B24  48 00 00 4C */	b lbl_80622B70
lbl_80622B28:
/* 80622B28  80 94 00 00 */	lwz r4, 0(r20)
/* 80622B2C  7E A5 AB 78 */	mr r5, r21
/* 80622B30  80 74 00 04 */	lwz r3, 4(r20)
/* 80622B34  7E C6 B3 78 */	mr r6, r22
/* 80622B38  80 14 00 08 */	lwz r0, 8(r20)
/* 80622B3C  7E E7 BB 78 */	mr r7, r23
/* 80622B40  90 81 00 20 */	stw r4, 0x20(r1)
/* 80622B44  7F 08 C3 78 */	mr r8, r24
/* 80622B48  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 80622B4C  7F 29 CB 78 */	mr r9, r25
/* 80622B50  90 61 00 24 */	stw r3, 0x24(r1)
/* 80622B54  7F EA FB 78 */	mr r10, r31
/* 80622B58  38 81 00 20 */	addi r4, r1, 0x20
/* 80622B5C  38 60 00 3B */	li r3, 0x3b
/* 80622B60  90 01 00 28 */	stw r0, 0x28(r1)
/* 80622B64  81 8B 00 00 */	lwz r12, 0(r11)
/* 80622B68  7D 89 03 A6 */	mtctr r12
/* 80622B6C  4E 80 04 21 */	bctrl 
lbl_80622B70:
/* 80622B70  7F E0 07 35 */	extsh. r0, r31
/* 80622B74  3B FF FF FF */	addi r31, r31, -1
/* 80622B78  40 82 FF B0 */	bne lbl_80622B28
/* 80622B7C  48 00 01 50 */	b lbl_80622CCC
lbl_80622B80:
/* 80622B80  7F 40 07 34 */	extsh r0, r26
/* 80622B84  2C 00 00 01 */	cmpwi r0, 1
/* 80622B88  40 82 01 44 */	bne lbl_80622CCC
/* 80622B8C  4B D9 7E 0D */	bl mEnv_NowWeather
/* 80622B90  2C 03 00 01 */	cmpwi r3, 1
/* 80622B94  41 82 00 C0 */	beq lbl_80622C54
/* 80622B98  3C 60 80 65 */	lis r3, lit_512@ha /* 0x8064CE54@ha */
/* 80622B9C  38 16 CB 62 */	addi r0, r22, -13470
/* 80622BA0  38 A3 CE 54 */	addi r5, r3, lit_512@l /* 0x8064CE54@l */
/* 80622BA4  C0 74 00 00 */	lfs f3, 0(r20)
/* 80622BA8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80622BAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80622BB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80622BB4  3C 80 80 65 */	lis r4, lit_513@ha /* 0x8064CE58@ha */
/* 80622BB8  EC 40 07 B2 */	fmuls f2, f0, f30
/* 80622BBC  7C 1A 07 34 */	extsh r26, r0
/* 80622BC0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80622BC4  C0 04 CE 58 */	lfs f0, lit_513@l(r4)  /* 0x8064CE58@l */
/* 80622BC8  3E C3 00 02 */	addis r22, r3, 2
/* 80622BCC  3B 60 00 00 */	li r27, 0
/* 80622BD0  EC 43 10 2A */	fadds f2, f3, f2
/* 80622BD4  D0 54 00 00 */	stfs f2, 0(r20)
/* 80622BD8  C0 54 00 08 */	lfs f2, 8(r20)
/* 80622BDC  EC 22 08 2A */	fadds f1, f2, f1
/* 80622BE0  D0 34 00 08 */	stfs f1, 8(r20)
/* 80622BE4  C0 34 00 04 */	lfs f1, 4(r20)
/* 80622BE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80622BEC  D0 14 00 04 */	stfs f0, 4(r20)
/* 80622BF0  48 00 00 54 */	b lbl_80622C44
lbl_80622BF4:
/* 80622BF4  80 94 00 00 */	lwz r4, 0(r20)
/* 80622BF8  7E A5 AB 78 */	mr r5, r21
/* 80622BFC  80 74 00 04 */	lwz r3, 4(r20)
/* 80622C00  7F 46 D3 78 */	mr r6, r26
/* 80622C04  80 14 00 08 */	lwz r0, 8(r20)
/* 80622C08  7E E7 BB 78 */	mr r7, r23
/* 80622C0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80622C10  7F 08 C3 78 */	mr r8, r24
/* 80622C14  81 76 60 9C */	lwz r11, 0x609c(r22)
/* 80622C18  7F 29 CB 78 */	mr r9, r25
/* 80622C1C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80622C20  7F 6A DB 78 */	mr r10, r27
/* 80622C24  38 81 00 14 */	addi r4, r1, 0x14
/* 80622C28  38 60 00 38 */	li r3, 0x38
/* 80622C2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80622C30  81 8B 00 00 */	lwz r12, 0(r11)
/* 80622C34  7D 89 03 A6 */	mtctr r12
/* 80622C38  4E 80 04 21 */	bctrl 
/* 80622C3C  3B 5A 1A 4F */	addi r26, r26, 0x1a4f
/* 80622C40  3B 7B 00 01 */	addi r27, r27, 1
lbl_80622C44:
/* 80622C44  7F 60 07 34 */	extsh r0, r27
/* 80622C48  2C 00 00 05 */	cmpwi r0, 5
/* 80622C4C  41 80 FF A8 */	blt lbl_80622BF4
/* 80622C50  48 00 00 7C */	b lbl_80622CCC
lbl_80622C54:
/* 80622C54  3C 80 80 65 */	lis r4, lit_511@ha /* 0x8064CE50@ha */
/* 80622C58  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80622C5C  C0 34 00 04 */	lfs f1, 4(r20)
/* 80622C60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80622C64  C0 04 CE 50 */	lfs f0, lit_511@l(r4)  /* 0x8064CE50@l */
/* 80622C68  3F 43 00 02 */	addis r26, r3, 2
/* 80622C6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80622C70  D0 14 00 04 */	stfs f0, 4(r20)
/* 80622C74  48 00 00 4C */	b lbl_80622CC0
lbl_80622C78:
/* 80622C78  80 94 00 00 */	lwz r4, 0(r20)
/* 80622C7C  7E A5 AB 78 */	mr r5, r21
/* 80622C80  80 74 00 04 */	lwz r3, 4(r20)
/* 80622C84  7E C6 B3 78 */	mr r6, r22
/* 80622C88  80 14 00 08 */	lwz r0, 8(r20)
/* 80622C8C  7E E7 BB 78 */	mr r7, r23
/* 80622C90  90 81 00 08 */	stw r4, 8(r1)
/* 80622C94  7F 08 C3 78 */	mr r8, r24
/* 80622C98  81 7A 60 9C */	lwz r11, 0x609c(r26)
/* 80622C9C  7F 29 CB 78 */	mr r9, r25
/* 80622CA0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80622CA4  7F EA FB 78 */	mr r10, r31
/* 80622CA8  38 81 00 08 */	addi r4, r1, 8
/* 80622CAC  38 60 00 3B */	li r3, 0x3b
/* 80622CB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80622CB4  81 8B 00 00 */	lwz r12, 0(r11)
/* 80622CB8  7D 89 03 A6 */	mtctr r12
/* 80622CBC  4E 80 04 21 */	bctrl 
lbl_80622CC0:
/* 80622CC0  7F E0 07 35 */	extsh. r0, r31
/* 80622CC4  3B FF FF FF */	addi r31, r31, -1
/* 80622CC8  40 82 FF B0 */	bne lbl_80622C78
lbl_80622CCC:
/* 80622CCC  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80622CD0  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80622CD4  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80622CD8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80622CDC  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80622CE0  4B A7 82 1D */	bl func_8009AEFC
/* 80622CE4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80622CE8  7C 08 03 A6 */	mtlr r0
/* 80622CEC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80622CF0  4E 80 00 20 */	blr 