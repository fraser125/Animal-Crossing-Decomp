lbl_80430794:
/* 80430794  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80430798  7C 08 02 A6 */	mflr r0
/* 8043079C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804307A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804307A4  4B C6 A7 29 */	bl func_8009AECC
/* 804307A8  7C BF 2B 78 */	mr r31, r5
/* 804307AC  83 A4 00 00 */	lwz r29, 0(r4)
/* 804307B0  2C 1F 00 04 */	cmpwi r31, 4
/* 804307B4  7C 9E 23 78 */	mr r30, r4
/* 804307B8  7C 7C 1B 78 */	mr r28, r3
/* 804307BC  40 80 01 38 */	bge lbl_804308F4
/* 804307C0  1F 7F 00 0C */	mulli r27, r31, 0xc
/* 804307C4  3C C0 80 68 */	lis r6, suisou_pos@ha /* 0x80684E7C@ha */
/* 804307C8  3C A0 80 64 */	lis r5, lit_10226@ha /* 0x80644560@ha */
/* 804307CC  38 06 4E 7C */	addi r0, r6, suisou_pos@l /* 0x80684E7C@l */
/* 804307D0  3C 80 80 64 */	lis r4, lit_698@ha /* 0x806442B4@ha */
/* 804307D4  38 C5 45 60 */	addi r6, r5, lit_10226@l /* 0x80644560@l */
/* 804307D8  3C 60 80 64 */	lis r3, lit_10227@ha /* 0x80644564@ha */
/* 804307DC  7F E0 DA 14 */	add r31, r0, r27
/* 804307E0  38 A3 45 64 */	addi r5, r3, lit_10227@l /* 0x80644564@l */
/* 804307E4  C0 44 42 B4 */	lfs f2, lit_698@l(r4)  /* 0x806442B4@l */
/* 804307E8  C0 26 00 00 */	lfs f1, 0(r6)
/* 804307EC  7F C3 F3 78 */	mr r3, r30
/* 804307F0  C0 65 00 00 */	lfs f3, 0(r5)
/* 804307F4  7F E4 FB 78 */	mr r4, r31
/* 804307F8  48 00 07 59 */	bl mfish_cull_check
/* 804307FC  2C 03 00 00 */	cmpwi r3, 0
/* 80430800  41 82 02 40 */	beq lbl_80430A40
/* 80430804  3C 60 80 68 */	lis r3, suisou_pos@ha /* 0x80684E7C@ha */
/* 80430808  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043080C  38 03 4E 7C */	addi r0, r3, suisou_pos@l /* 0x80684E7C@l */
/* 80430810  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80430814  38 A4 42 48 */	addi r5, r4, lit_468@l /* 0x80644248@l */
/* 80430818  38 60 00 00 */	li r3, 0
/* 8043081C  7C 80 DA 14 */	add r4, r0, r27
/* 80430820  C0 45 00 00 */	lfs f2, 0(r5)
/* 80430824  C0 64 00 08 */	lfs f3, 8(r4)
/* 80430828  4B FD BA D9 */	bl Matrix_translate
/* 8043082C  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806442C4@ha */
/* 80430830  38 60 00 01 */	li r3, 1
/* 80430834  C0 24 42 C4 */	lfs f1, lit_793@l(r4)  /* 0x806442C4@l */
/* 80430838  FC 40 08 90 */	fmr f2, f1
/* 8043083C  FC 60 08 90 */	fmr f3, f1
/* 80430840  4B FD BB AD */	bl Matrix_scale
/* 80430844  83 7D 02 E0 */	lwz r27, 0x2e0(r29)
/* 80430848  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8043084C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80430850  38 7B 00 08 */	addi r3, r27, 8
/* 80430854  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80430858  90 1B 00 00 */	stw r0, 0(r27)
/* 8043085C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80430860  4B FD CB 75 */	bl _Matrix_to_Mtx_new
/* 80430864  90 7B 00 04 */	stw r3, 4(r27)
/* 80430868  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8043086C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80430870  83 7D 02 D0 */	lwz r27, 0x2d0(r29)
/* 80430874  38 7B 00 08 */	addi r3, r27, 8
/* 80430878  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8043087C  90 1B 00 00 */	stw r0, 0(r27)
/* 80430880  80 7E 00 00 */	lwz r3, 0(r30)
/* 80430884  4B FD CB 51 */	bl _Matrix_to_Mtx_new
/* 80430888  90 7B 00 04 */	stw r3, 4(r27)
/* 8043088C  7F E3 FB 78 */	mr r3, r31
/* 80430890  7F C4 F3 78 */	mr r4, r30
/* 80430894  4B F4 57 85 */	bl Setpos_HiliteReflect_xlu_init
/* 80430898  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 8043089C  3C 80 80 CE */	lis r4, obj_suisou1_model@ha /* 0x80CE54A0@ha */
/* 804308A0  3C C0 DE 00 */	lis r6, 0xde00
/* 804308A4  3C 60 80 CE */	lis r3, obj_suisou1_modelT@ha /* 0x80CE52F0@ha */
/* 804308A8  38 05 00 08 */	addi r0, r5, 8
/* 804308AC  38 84 54 A0 */	addi r4, r4, obj_suisou1_model@l /* 0x80CE54A0@l */
/* 804308B0  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 804308B4  38 03 52 F0 */	addi r0, r3, obj_suisou1_modelT@l /* 0x80CE52F0@l */
/* 804308B8  3C 7C 00 01 */	addis r3, r28, 1
/* 804308BC  90 C5 00 00 */	stw r6, 0(r5)
/* 804308C0  90 85 00 04 */	stw r4, 4(r5)
/* 804308C4  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 804308C8  38 85 00 08 */	addi r4, r5, 8
/* 804308CC  90 9D 02 E0 */	stw r4, 0x2e0(r29)
/* 804308D0  90 C5 00 00 */	stw r6, 0(r5)
/* 804308D4  90 05 00 04 */	stw r0, 4(r5)
/* 804308D8  A8 03 D6 EE */	lha r0, -0x2912(r3)
/* 804308DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804308E0  40 82 01 60 */	bne lbl_80430A40
/* 804308E4  7F C4 F3 78 */	mr r4, r30
/* 804308E8  38 63 47 88 */	addi r3, r3, 0x4788
/* 804308EC  48 02 88 F9 */	bl mfish_hasu_dw
/* 804308F0  48 00 01 50 */	b lbl_80430A40
lbl_804308F4:
/* 804308F4  3C A0 80 64 */	lis r5, lit_10228@ha /* 0x80644568@ha */
/* 804308F8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804308FC  38 C5 45 68 */	addi r6, r5, lit_10228@l /* 0x80644568@l */
/* 80430900  3C 80 80 64 */	lis r4, lit_3229@ha /* 0x806443B4@ha */
/* 80430904  38 A3 42 48 */	addi r5, r3, lit_468@l /* 0x80644248@l */
/* 80430908  3C E0 80 68 */	lis r7, suisou_pos@ha /* 0x80684E7C@ha */
/* 8043090C  38 E7 4E 7C */	addi r7, r7, suisou_pos@l /* 0x80684E7C@l */
/* 80430910  C0 44 43 B4 */	lfs f2, lit_3229@l(r4)  /* 0x806443B4@l */
/* 80430914  C0 26 00 00 */	lfs f1, 0(r6)
/* 80430918  7F C3 F3 78 */	mr r3, r30
/* 8043091C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80430920  38 87 00 30 */	addi r4, r7, 0x30
/* 80430924  48 00 06 2D */	bl mfish_cull_check
/* 80430928  2C 03 00 00 */	cmpwi r3, 0
/* 8043092C  41 82 01 14 */	beq lbl_80430A40
/* 80430930  3C 80 80 64 */	lis r4, lit_7929@ha /* 0x80644484@ha */
/* 80430934  38 60 00 00 */	li r3, 0
/* 80430938  C0 24 44 84 */	lfs f1, lit_7929@l(r4)  /* 0x80644484@l */
/* 8043093C  FC 40 08 90 */	fmr f2, f1
/* 80430940  FC 60 08 90 */	fmr f3, f1
/* 80430944  4B FD BA A9 */	bl Matrix_scale
/* 80430948  83 9D 02 E0 */	lwz r28, 0x2e0(r29)
/* 8043094C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80430950  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80430954  38 7C 00 08 */	addi r3, r28, 8
/* 80430958  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8043095C  90 1C 00 00 */	stw r0, 0(r28)
/* 80430960  80 7E 00 00 */	lwz r3, 0(r30)
/* 80430964  4B FD CA 71 */	bl _Matrix_to_Mtx_new
/* 80430968  90 7C 00 04 */	stw r3, 4(r28)
/* 8043096C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80430970  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80430974  83 9D 02 D0 */	lwz r28, 0x2d0(r29)
/* 80430978  38 7C 00 08 */	addi r3, r28, 8
/* 8043097C  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 80430980  90 1C 00 00 */	stw r0, 0(r28)
/* 80430984  80 7E 00 00 */	lwz r3, 0(r30)
/* 80430988  4B FD CA 4D */	bl _Matrix_to_Mtx_new
/* 8043098C  1C DF 00 0C */	mulli r6, r31, 0xc
/* 80430990  3C A0 80 68 */	lis r5, suisou_pos@ha /* 0x80684E7C@ha */
/* 80430994  90 7C 00 04 */	stw r3, 4(r28)
/* 80430998  7F C4 F3 78 */	mr r4, r30
/* 8043099C  38 05 4E 7C */	addi r0, r5, suisou_pos@l /* 0x80684E7C@l */
/* 804309A0  7C 60 32 14 */	add r3, r0, r6
/* 804309A4  4B F4 56 75 */	bl Setpos_HiliteReflect_xlu_init
/* 804309A8  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 804309AC  3D 00 D5 02 */	lis r8, 0xD502 /* 0xD5020001@ha */
/* 804309B0  3C 80 80 CE */	lis r4, obj_museum5_model@ha /* 0x80CE1860@ha */
/* 804309B4  3C 60 80 CE */	lis r3, obj_museum5_modelT@ha /* 0x80CE1730@ha */
/* 804309B8  38 06 00 08 */	addi r0, r6, 8
/* 804309BC  39 28 00 01 */	addi r9, r8, 0x0001 /* 0xD5020001@l */
/* 804309C0  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 804309C4  38 E0 00 00 */	li r7, 0
/* 804309C8  3C A0 DE 00 */	lis r5, 0xde00
/* 804309CC  38 84 18 60 */	addi r4, r4, obj_museum5_model@l /* 0x80CE1860@l */
/* 804309D0  91 26 00 00 */	stw r9, 0(r6)
/* 804309D4  38 03 17 30 */	addi r0, r3, obj_museum5_modelT@l /* 0x80CE1730@l */
/* 804309D8  90 E6 00 04 */	stw r7, 4(r6)
/* 804309DC  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 804309E0  38 66 00 08 */	addi r3, r6, 8
/* 804309E4  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 804309E8  91 26 00 00 */	stw r9, 0(r6)
/* 804309EC  90 E6 00 04 */	stw r7, 4(r6)
/* 804309F0  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 804309F4  38 66 00 08 */	addi r3, r6, 8
/* 804309F8  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 804309FC  90 A6 00 00 */	stw r5, 0(r6)
/* 80430A00  90 86 00 04 */	stw r4, 4(r6)
/* 80430A04  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 80430A08  38 64 00 08 */	addi r3, r4, 8
/* 80430A0C  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80430A10  90 A4 00 00 */	stw r5, 0(r4)
/* 80430A14  90 04 00 04 */	stw r0, 4(r4)
/* 80430A18  80 7D 02 D0 */	lwz r3, 0x2d0(r29)
/* 80430A1C  38 03 00 08 */	addi r0, r3, 8
/* 80430A20  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 80430A24  91 03 00 00 */	stw r8, 0(r3)
/* 80430A28  90 E3 00 04 */	stw r7, 4(r3)
/* 80430A2C  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 80430A30  38 03 00 08 */	addi r0, r3, 8
/* 80430A34  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80430A38  91 03 00 00 */	stw r8, 0(r3)
/* 80430A3C  90 E3 00 04 */	stw r7, 4(r3)
lbl_80430A40:
/* 80430A40  39 61 00 20 */	addi r11, r1, 0x20
/* 80430A44  4B C6 A4 D5 */	bl func_8009AF18
/* 80430A48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80430A4C  7C 08 03 A6 */	mtlr r0
/* 80430A50  38 21 00 20 */	addi r1, r1, 0x20
/* 80430A54  4E 80 00 20 */	blr 