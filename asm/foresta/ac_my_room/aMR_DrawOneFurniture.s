lbl_80482510:
/* 80482510  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80482514  7C 08 02 A6 */	mflr r0
/* 80482518  90 01 00 54 */	stw r0, 0x54(r1)
/* 8048251C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80482520  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80482524  39 61 00 40 */	addi r11, r1, 0x40
/* 80482528  4B C1 89 99 */	bl func_8009AEC0
/* 8048252C  7C 7C 1B 78 */	mr r28, r3
/* 80482530  80 63 08 14 */	lwz r3, 0x814(r3)
/* 80482534  7C 9D 23 78 */	mr r29, r4
/* 80482538  80 9C 08 18 */	lwz r4, 0x818(r28)
/* 8048253C  80 1C 08 1C */	lwz r0, 0x81c(r28)
/* 80482540  7C BE 2B 78 */	mr r30, r5
/* 80482544  90 61 00 08 */	stw r3, 8(r1)
/* 80482548  7C D8 33 78 */	mr r24, r6
/* 8048254C  A0 7C 00 00 */	lhz r3, 0(r28)
/* 80482550  90 81 00 0C */	stw r4, 0xc(r1)
/* 80482554  90 01 00 10 */	stw r0, 0x10(r1)
/* 80482558  4B FE DC 49 */	bl func_804701A0
/* 8048255C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80482560  41 82 03 64 */	beq lbl_804828C4
/* 80482564  C3 FF 00 24 */	lfs f31, 0x24(r31)
/* 80482568  80 7E 00 00 */	lwz r3, 0(r30)
/* 8048256C  4B F6 2B ED */	bl _texture_z_light_fog_prim_xlu
/* 80482570  80 7E 00 00 */	lwz r3, 0(r30)
/* 80482574  4B F6 2B 95 */	bl _texture_z_light_fog_prim
/* 80482578  7F 83 E3 78 */	mr r3, r28
/* 8048257C  7F C4 F3 78 */	mr r4, r30
/* 80482580  4B FF FF 2D */	bl aMR_FurnitureLightSet
/* 80482584  7F E3 FB 78 */	mr r3, r31
/* 80482588  7F C4 F3 78 */	mr r4, r30
/* 8048258C  4B FF F8 5D */	bl aMR_LoadTexture
/* 80482590  7F E3 FB 78 */	mr r3, r31
/* 80482594  7F C4 F3 78 */	mr r4, r30
/* 80482598  4B FF F6 51 */	bl aMR_LoadPallet
/* 8048259C  7F 83 E3 78 */	mr r3, r28
/* 804825A0  7F C4 F3 78 */	mr r4, r30
/* 804825A4  4B FF F5 D1 */	bl func_80481B74
/* 804825A8  2C 18 00 01 */	cmpwi r24, 1
/* 804825AC  40 82 01 7C */	bne lbl_80482728
/* 804825B0  80 1D 05 00 */	lwz r0, 0x500(r29)
/* 804825B4  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 804825B8  80 A3 DF E8 */	lwz r5, data_811CDFE8@l(r3)  /* 0x811CDFE8@l */
/* 804825BC  3B 7D 05 00 */	addi r27, r29, 0x500
/* 804825C0  1C 00 08 58 */	mulli r0, r0, 0x858
/* 804825C4  7F A3 EB 78 */	mr r3, r29
/* 804825C8  7F 84 E3 78 */	mr r4, r28
/* 804825CC  7F 45 02 14 */	add r26, r5, r0
/* 804825D0  4B FF FE A1 */	bl aMR_GetFitNo
/* 804825D4  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 804825D8  A8 BB 00 04 */	lha r5, 4(r27)
/* 804825DC  1C 80 00 24 */	mulli r4, r0, 0x24
/* 804825E0  A8 1A 01 24 */	lha r0, 0x124(r26)
/* 804825E4  C0 3A 00 08 */	lfs f1, 8(r26)
/* 804825E8  38 60 00 00 */	li r3, 0
/* 804825EC  7C 05 00 50 */	subf r0, r5, r0
/* 804825F0  C0 5A 00 0C */	lfs f2, 0xc(r26)
/* 804825F4  3B 04 00 0C */	addi r24, r4, 0xc
/* 804825F8  C0 7A 00 10 */	lfs f3, 0x10(r26)
/* 804825FC  7C 19 07 34 */	extsh r25, r0
/* 80482600  7F 1B C2 14 */	add r24, r27, r24
/* 80482604  4B F8 9C FD */	bl Matrix_translate
/* 80482608  7F 23 CB 78 */	mr r3, r25
/* 8048260C  38 80 00 01 */	li r4, 1
/* 80482610  4B F8 A0 4D */	bl Matrix_RotateY
/* 80482614  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 80482618  38 60 00 01 */	li r3, 1
/* 8048261C  C0 5A 00 44 */	lfs f2, 0x44(r26)
/* 80482620  C0 7A 00 48 */	lfs f3, 0x48(r26)
/* 80482624  4B F8 9C DD */	bl Matrix_translate
/* 80482628  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8048262C  28 00 00 9A */	cmplwi r0, 0x9a
/* 80482630  40 82 00 28 */	bne lbl_80482658
/* 80482634  3C 60 80 64 */	lis r3, lit_6389@ha /* 0x80644B2C@ha */
/* 80482638  C0 58 00 04 */	lfs f2, 4(r24)
/* 8048263C  C0 03 4B 2C */	lfs f0, lit_6389@l(r3)  /* 0x80644B2C@l */
/* 80482640  38 60 00 01 */	li r3, 1
/* 80482644  C0 38 00 00 */	lfs f1, 0(r24)
/* 80482648  EC 42 00 28 */	fsubs f2, f2, f0
/* 8048264C  C0 78 00 08 */	lfs f3, 8(r24)
/* 80482650  4B F8 9C B1 */	bl Matrix_translate
/* 80482654  48 00 00 18 */	b lbl_8048266C
lbl_80482658:
/* 80482658  C0 38 00 00 */	lfs f1, 0(r24)
/* 8048265C  38 60 00 01 */	li r3, 1
/* 80482660  C0 58 00 04 */	lfs f2, 4(r24)
/* 80482664  C0 78 00 08 */	lfs f3, 8(r24)
/* 80482668  4B F8 9C 99 */	bl Matrix_translate
lbl_8048266C:
/* 8048266C  A8 7C 01 24 */	lha r3, 0x124(r28)
/* 80482670  38 80 00 01 */	li r4, 1
/* 80482674  4B F8 9F E9 */	bl Matrix_RotateY
/* 80482678  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 8048267C  38 60 00 01 */	li r3, 1
/* 80482680  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 80482684  C0 7C 00 48 */	lfs f3, 0x48(r28)
/* 80482688  4B F8 9C 79 */	bl Matrix_translate
/* 8048268C  A8 1C 00 3C */	lha r0, 0x3c(r28)
/* 80482690  2C 00 00 0D */	cmpwi r0, 0xd
/* 80482694  40 82 00 30 */	bne lbl_804826C4
/* 80482698  88 1C 00 3E */	lbz r0, 0x3e(r28)
/* 8048269C  28 00 00 03 */	cmplwi r0, 3
/* 804826A0  41 81 00 24 */	bgt lbl_804826C4
/* 804826A4  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 804826A8  3C A0 80 64 */	lis r5, lit_884@ha /* 0x806449F0@ha */
/* 804826AC  38 83 49 F8 */	addi r4, r3, lit_886@l /* 0x806449F8@l */
/* 804826B0  C0 25 49 F0 */	lfs f1, lit_884@l(r5)  /* 0x806449F0@l */
/* 804826B4  C0 44 00 00 */	lfs f2, 0(r4)
/* 804826B8  38 60 00 01 */	li r3, 1
/* 804826BC  FC 60 10 90 */	fmr f3, f2
/* 804826C0  4B F8 9C 41 */	bl Matrix_translate
lbl_804826C4:
/* 804826C4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804826C8  38 60 00 01 */	li r3, 1
/* 804826CC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804826D0  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804826D4  4B F8 9D 19 */	bl Matrix_scale
/* 804826D8  A8 1C 00 3C */	lha r0, 0x3c(r28)
/* 804826DC  2C 00 00 0D */	cmpwi r0, 0xd
/* 804826E0  40 82 00 30 */	bne lbl_80482710
/* 804826E4  88 1C 00 3E */	lbz r0, 0x3e(r28)
/* 804826E8  28 00 00 03 */	cmplwi r0, 3
/* 804826EC  41 81 00 24 */	bgt lbl_80482710
/* 804826F0  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 804826F4  3C A0 80 64 */	lis r5, lit_6390@ha /* 0x80644B30@ha */
/* 804826F8  38 83 49 F8 */	addi r4, r3, lit_886@l /* 0x806449F8@l */
/* 804826FC  C0 25 4B 30 */	lfs f1, lit_6390@l(r5)  /* 0x80644B30@l */
/* 80482700  C0 44 00 00 */	lfs f2, 0(r4)
/* 80482704  38 60 00 01 */	li r3, 1
/* 80482708  FC 60 10 90 */	fmr f3, f2
/* 8048270C  4B F8 9B F5 */	bl Matrix_translate
lbl_80482710:
/* 80482710  FC 20 F8 90 */	fmr f1, f31
/* 80482714  38 60 00 01 */	li r3, 1
/* 80482718  FC 40 F8 90 */	fmr f2, f31
/* 8048271C  FC 60 F8 90 */	fmr f3, f31
/* 80482720  4B F8 9C CD */	bl Matrix_scale
/* 80482724  48 00 01 50 */	b lbl_80482874
lbl_80482728:
/* 80482728  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8048272C  28 00 00 9A */	cmplwi r0, 0x9a
/* 80482730  40 82 00 28 */	bne lbl_80482758
/* 80482734  3C 60 80 64 */	lis r3, lit_6389@ha /* 0x80644B2C@ha */
/* 80482738  C0 5C 00 0C */	lfs f2, 0xc(r28)
/* 8048273C  C0 03 4B 2C */	lfs f0, lit_6389@l(r3)  /* 0x80644B2C@l */
/* 80482740  38 60 00 00 */	li r3, 0
/* 80482744  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80482748  EC 42 00 28 */	fsubs f2, f2, f0
/* 8048274C  C0 7C 00 10 */	lfs f3, 0x10(r28)
/* 80482750  4B F8 9B B1 */	bl Matrix_translate
/* 80482754  48 00 00 18 */	b lbl_8048276C
lbl_80482758:
/* 80482758  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8048275C  38 60 00 00 */	li r3, 0
/* 80482760  C0 5C 00 0C */	lfs f2, 0xc(r28)
/* 80482764  C0 7C 00 10 */	lfs f3, 0x10(r28)
/* 80482768  4B F8 9B 99 */	bl Matrix_translate
lbl_8048276C:
/* 8048276C  A8 7C 01 24 */	lha r3, 0x124(r28)
/* 80482770  38 80 00 01 */	li r4, 1
/* 80482774  4B F8 9E E9 */	bl Matrix_RotateY
/* 80482778  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048277C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80482780  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80482784  2C 00 00 25 */	cmpwi r0, 0x25
/* 80482788  40 82 00 40 */	bne lbl_804827C8
/* 8048278C  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 80482790  54 00 B7 FF */	rlwinm. r0, r0, 0x16, 0x1f, 0x1f
/* 80482794  41 82 00 34 */	beq lbl_804827C8
/* 80482798  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 8048279C  28 00 00 03 */	cmplwi r0, 3
/* 804827A0  41 81 00 28 */	bgt lbl_804827C8
/* 804827A4  3C 60 80 64 */	lis r3, lit_6391@ha /* 0x80644B34@ha */
/* 804827A8  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 804827AC  C0 23 4B 34 */	lfs f1, lit_6391@l(r3)  /* 0x80644B34@l */
/* 804827B0  38 60 00 01 */	li r3, 1
/* 804827B4  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 804827B8  EC 21 00 2A */	fadds f1, f1, f0
/* 804827BC  C0 7C 00 48 */	lfs f3, 0x48(r28)
/* 804827C0  4B F8 9B 41 */	bl Matrix_translate
/* 804827C4  48 00 00 18 */	b lbl_804827DC
lbl_804827C8:
/* 804827C8  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 804827CC  38 60 00 01 */	li r3, 1
/* 804827D0  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 804827D4  C0 7C 00 48 */	lfs f3, 0x48(r28)
/* 804827D8  4B F8 9B 29 */	bl Matrix_translate
lbl_804827DC:
/* 804827DC  A8 1C 00 3C */	lha r0, 0x3c(r28)
/* 804827E0  2C 00 00 0D */	cmpwi r0, 0xd
/* 804827E4  40 82 00 30 */	bne lbl_80482814
/* 804827E8  88 1C 00 3E */	lbz r0, 0x3e(r28)
/* 804827EC  28 00 00 03 */	cmplwi r0, 3
/* 804827F0  41 81 00 24 */	bgt lbl_80482814
/* 804827F4  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 804827F8  3C A0 80 64 */	lis r5, lit_884@ha /* 0x806449F0@ha */
/* 804827FC  38 83 49 F8 */	addi r4, r3, lit_886@l /* 0x806449F8@l */
/* 80482800  C0 25 49 F0 */	lfs f1, lit_884@l(r5)  /* 0x806449F0@l */
/* 80482804  C0 44 00 00 */	lfs f2, 0(r4)
/* 80482808  38 60 00 01 */	li r3, 1
/* 8048280C  FC 60 10 90 */	fmr f3, f2
/* 80482810  4B F8 9A F1 */	bl Matrix_translate
lbl_80482814:
/* 80482814  C0 21 00 08 */	lfs f1, 8(r1)
/* 80482818  38 60 00 01 */	li r3, 1
/* 8048281C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80482820  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80482824  4B F8 9B C9 */	bl Matrix_scale
/* 80482828  A8 1C 00 3C */	lha r0, 0x3c(r28)
/* 8048282C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80482830  40 82 00 30 */	bne lbl_80482860
/* 80482834  88 1C 00 3E */	lbz r0, 0x3e(r28)
/* 80482838  28 00 00 03 */	cmplwi r0, 3
/* 8048283C  41 81 00 24 */	bgt lbl_80482860
/* 80482840  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 80482844  3C A0 80 64 */	lis r5, lit_6390@ha /* 0x80644B30@ha */
/* 80482848  38 83 49 F8 */	addi r4, r3, lit_886@l /* 0x806449F8@l */
/* 8048284C  C0 25 4B 30 */	lfs f1, lit_6390@l(r5)  /* 0x80644B30@l */
/* 80482850  C0 44 00 00 */	lfs f2, 0(r4)
/* 80482854  38 60 00 01 */	li r3, 1
/* 80482858  FC 60 10 90 */	fmr f3, f2
/* 8048285C  4B F8 9A A5 */	bl Matrix_translate
lbl_80482860:
/* 80482860  FC 20 F8 90 */	fmr f1, f31
/* 80482864  38 60 00 01 */	li r3, 1
/* 80482868  FC 40 F8 90 */	fmr f2, f31
/* 8048286C  FC 60 F8 90 */	fmr f3, f31
/* 80482870  4B F8 9B 7D */	bl Matrix_scale
lbl_80482874:
/* 80482874  7F 83 E3 78 */	mr r3, r28
/* 80482878  7F E4 FB 78 */	mr r4, r31
/* 8048287C  7F C5 F3 78 */	mr r5, r30
/* 80482880  4B FF F7 C1 */	bl aMR_SetLoopTextureAnime
/* 80482884  7F E3 FB 78 */	mr r3, r31
/* 80482888  7F C4 F3 78 */	mr r4, r30
/* 8048288C  4B FF F8 09 */	bl aMR_DrawRegistModel
/* 80482890  7F 83 E3 78 */	mr r3, r28
/* 80482894  7F E4 FB 78 */	mr r4, r31
/* 80482898  7F C5 F3 78 */	mr r5, r30
/* 8048289C  4B FF F9 49 */	bl aMR_DrawSkelShape
/* 804828A0  7F 83 E3 78 */	mr r3, r28
/* 804828A4  7F A4 EB 78 */	mr r4, r29
/* 804828A8  7F E5 FB 78 */	mr r5, r31
/* 804828AC  7F C6 F3 78 */	mr r6, r30
/* 804828B0  4B FF F9 F1 */	bl aMR_DrawUniqueShape
/* 804828B4  7F A3 EB 78 */	mr r3, r29
/* 804828B8  7F 84 E3 78 */	mr r4, r28
/* 804828BC  7F C5 F3 78 */	mr r5, r30
/* 804828C0  4B FF FA AD */	bl aMR_DrawItemOnMovingFurniture
lbl_804828C4:
/* 804828C4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804828C8  39 61 00 40 */	addi r11, r1, 0x40
/* 804828CC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804828D0  4B C1 86 3D */	bl func_8009AF0C
/* 804828D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804828D8  7C 08 03 A6 */	mtlr r0
/* 804828DC  38 21 00 50 */	addi r1, r1, 0x50
/* 804828E0  4E 80 00 20 */	blr 
