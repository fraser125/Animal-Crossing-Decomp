lbl_80615480:
/* 80615480  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80615484  7C 08 02 A6 */	mflr r0
/* 80615488  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061548C  39 61 00 50 */	addi r11, r1, 0x50
/* 80615490  4B A8 5A 21 */	bl func_8009AEB0
/* 80615494  7C 74 1B 78 */	mr r20, r3
/* 80615498  3C 60 80 6D */	lis r3, data_806D2F00@ha /* 0x806D2F00@ha */
/* 8061549C  A8 14 00 00 */	lha r0, 0(r20)
/* 806154A0  7C 95 23 78 */	mr r21, r4
/* 806154A4  3B E3 2F 00 */	addi r31, r3, data_806D2F00@l /* 0x806D2F00@l */
/* 806154A8  20 00 00 1A */	subfic r0, r0, 0x1a
/* 806154AC  7C 1C 07 34 */	extsh r28, r0
/* 806154B0  7F 83 0E 71 */	srawi. r3, r28, 1
/* 806154B4  40 80 00 0C */	bge lbl_806154C0
/* 806154B8  38 00 00 00 */	li r0, 0
/* 806154BC  48 00 00 14 */	b lbl_806154D0
lbl_806154C0:
/* 806154C0  2C 03 00 0C */	cmpwi r3, 0xc
/* 806154C4  38 00 00 0C */	li r0, 0xc
/* 806154C8  41 81 00 08 */	bgt lbl_806154D0
/* 806154CC  7C 60 1B 78 */	mr r0, r3
lbl_806154D0:
/* 806154D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 806154D4  7C 00 07 34 */	extsh r0, r0
/* 806154D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 806154DC  3C A0 80 65 */	lis r5, lit_439@ha /* 0x8064C6B4@ha */
/* 806154E0  3F A3 00 02 */	addis r29, r3, 2
/* 806154E4  3C 80 80 65 */	lis r4, lit_440@ha /* 0x8064C6B8@ha */
/* 806154E8  80 7D 60 9C */	lwz r3, 0x609c(r29)
/* 806154EC  39 1F 00 D8 */	addi r8, r31, 0xd8
/* 806154F0  38 E5 C6 B4 */	addi r7, r5, lit_439@l /* 0x8064C6B4@l */
/* 806154F4  38 C4 C6 B8 */	addi r6, r4, lit_440@l /* 0x8064C6B8@l */
/* 806154F8  54 1E 10 3A */	slwi r30, r0, 2
/* 806154FC  38 BF 00 A4 */	addi r5, r31, 0xa4
/* 80615500  7C 85 F2 14 */	add r4, r5, r30
/* 80615504  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80615508  7F 83 E3 78 */	mr r3, r28
/* 8061550C  7F 65 F0 AE */	lbzx r27, r5, r30
/* 80615510  8B 44 00 01 */	lbz r26, 1(r4)
/* 80615514  38 80 00 00 */	li r4, 0
/* 80615518  7F 28 00 AE */	lbzx r25, r8, r0
/* 8061551C  38 A0 00 08 */	li r5, 8
/* 80615520  C0 27 00 00 */	lfs f1, 0(r7)
/* 80615524  C0 46 00 00 */	lfs f2, 0(r6)
/* 80615528  7D 89 03 A6 */	mtctr r12
/* 8061552C  4E 80 04 21 */	bctrl 
/* 80615530  FC 00 08 1E */	fctiwz f0, f1
/* 80615534  80 7D 60 9C */	lwz r3, 0x609c(r29)
/* 80615538  3C A0 80 65 */	lis r5, lit_440@ha /* 0x8064C6B8@ha */
/* 8061553C  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064C6AC@ha */
/* 80615540  38 C5 C6 B8 */	addi r6, r5, lit_440@l /* 0x8064C6B8@l */
/* 80615544  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80615548  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061554C  38 A4 C6 AC */	addi r5, r4, lit_393@l /* 0x8064C6AC@l */
/* 80615550  7F 83 E3 78 */	mr r3, r28
/* 80615554  C0 26 00 00 */	lfs f1, 0(r6)
/* 80615558  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061555C  38 80 00 0C */	li r4, 0xc
/* 80615560  C0 45 00 00 */	lfs f2, 0(r5)
/* 80615564  38 A0 00 1A */	li r5, 0x1a
/* 80615568  54 18 06 3E */	clrlwi r24, r0, 0x18
/* 8061556C  7D 89 03 A6 */	mtctr r12
/* 80615570  4E 80 04 21 */	bctrl 
/* 80615574  FC 00 08 1E */	fctiwz f0, f1
/* 80615578  80 7D 60 9C */	lwz r3, 0x609c(r29)
/* 8061557C  3C A0 80 65 */	lis r5, lit_393@ha /* 0x8064C6AC@ha */
/* 80615580  3C 80 80 65 */	lis r4, lit_440@ha /* 0x8064C6B8@ha */
/* 80615584  38 C5 C6 AC */	addi r6, r5, lit_393@l /* 0x8064C6AC@l */
/* 80615588  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061558C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80615590  38 A4 C6 B8 */	addi r5, r4, lit_440@l /* 0x8064C6B8@l */
/* 80615594  7F 83 E3 78 */	mr r3, r28
/* 80615598  C0 26 00 00 */	lfs f1, 0(r6)
/* 8061559C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806155A0  38 80 00 00 */	li r4, 0
/* 806155A4  C0 45 00 00 */	lfs f2, 0(r5)
/* 806155A8  38 A0 00 08 */	li r5, 8
/* 806155AC  54 17 06 3E */	clrlwi r23, r0, 0x18
/* 806155B0  7D 89 03 A6 */	mtctr r12
/* 806155B4  4E 80 04 21 */	bctrl 
/* 806155B8  FC 00 08 1E */	fctiwz f0, f1
/* 806155BC  2C 1C 00 08 */	cmpwi r28, 8
/* 806155C0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806155C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806155C8  54 16 06 3E */	clrlwi r22, r0, 0x18
/* 806155CC  41 81 00 20 */	bgt lbl_806155EC
/* 806155D0  38 9F 00 E8 */	addi r4, r31, 0xe8
/* 806155D4  3C 60 80 65 */	lis r3, lit_441@ha /* 0x8064C6BC@ha */
/* 806155D8  7C 24 F4 2E */	lfsx f1, r4, r30
/* 806155DC  C0 03 C6 BC */	lfs f0, lit_441@l(r3)  /* 0x8064C6BC@l */
/* 806155E0  D0 34 00 38 */	stfs f1, 0x38(r20)
/* 806155E4  D0 14 00 34 */	stfs f0, 0x34(r20)
/* 806155E8  48 00 00 3C */	b lbl_80615624
lbl_806155EC:
/* 806155EC  80 9D 60 9C */	lwz r4, 0x609c(r29)
/* 806155F0  3C C0 80 65 */	lis r6, lit_441@ha /* 0x8064C6BC@ha */
/* 806155F4  3C A0 80 65 */	lis r5, lit_442@ha /* 0x8064C6C0@ha */
/* 806155F8  7F 83 E3 78 */	mr r3, r28
/* 806155FC  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80615600  38 80 00 0A */	li r4, 0xa
/* 80615604  C0 45 C6 C0 */	lfs f2, lit_442@l(r5)  /* 0x8064C6C0@l */
/* 80615608  38 A0 00 1A */	li r5, 0x1a
/* 8061560C  C0 26 C6 BC */	lfs f1, lit_441@l(r6)  /* 0x8064C6BC@l */
/* 80615610  7D 89 03 A6 */	mtctr r12
/* 80615614  4E 80 04 21 */	bctrl 
/* 80615618  D0 34 00 34 */	stfs f1, 0x34(r20)
/* 8061561C  C0 14 00 34 */	lfs f0, 0x34(r20)
/* 80615620  D0 14 00 38 */	stfs f0, 0x38(r20)
lbl_80615624:
/* 80615624  83 B5 00 00 */	lwz r29, 0(r21)
/* 80615628  7F A3 EB 78 */	mr r3, r29
/* 8061562C  4B DC FB 2D */	bl _texture_z_light_fog_prim_xlu
/* 80615630  C0 34 00 10 */	lfs f1, 0x10(r20)
/* 80615634  38 60 00 00 */	li r3, 0
/* 80615638  C0 54 00 14 */	lfs f2, 0x14(r20)
/* 8061563C  C0 74 00 18 */	lfs f3, 0x18(r20)
/* 80615640  4B DF 6C C1 */	bl Matrix_translate
/* 80615644  38 75 20 4C */	addi r3, r21, 0x204c
/* 80615648  38 80 00 01 */	li r4, 1
/* 8061564C  4B DF 6C 4D */	bl Matrix_mult
/* 80615650  A8 74 00 4C */	lha r3, 0x4c(r20)
/* 80615654  38 80 00 01 */	li r4, 1
/* 80615658  4B DF 71 99 */	bl Matrix_RotateZ
/* 8061565C  C0 34 00 40 */	lfs f1, 0x40(r20)
/* 80615660  38 60 00 01 */	li r3, 1
/* 80615664  C0 54 00 44 */	lfs f2, 0x44(r20)
/* 80615668  C0 74 00 48 */	lfs f3, 0x48(r20)
/* 8061566C  4B DF 6C 95 */	bl Matrix_translate
/* 80615670  C0 34 00 34 */	lfs f1, 0x34(r20)
/* 80615674  38 60 00 01 */	li r3, 1
/* 80615678  C0 54 00 38 */	lfs f2, 0x38(r20)
/* 8061567C  C0 74 00 3C */	lfs f3, 0x3c(r20)
/* 80615680  4B DF 6D 6D */	bl Matrix_scale
/* 80615684  82 9D 02 E0 */	lwz r20, 0x2e0(r29)
/* 80615688  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061568C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80615690  38 74 00 08 */	addi r3, r20, 8
/* 80615694  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80615698  90 14 00 00 */	stw r0, 0(r20)
/* 8061569C  80 75 00 00 */	lwz r3, 0(r21)
/* 806156A0  4B DF 7D 35 */	bl _Matrix_to_Mtx_new
/* 806156A4  90 74 00 04 */	stw r3, 4(r20)
/* 806156A8  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 806156AC  57 04 80 1E */	slwi r4, r24, 0x10
/* 806156B0  56 C0 80 1E */	slwi r0, r22, 0x10
/* 806156B4  81 7D 02 E0 */	lwz r11, 0x2e0(r29)
/* 806156B8  3C 60 80 CC */	lis r3, ef_pun01_00_modelT@ha /* 0x80CBC8E0@ha */
/* 806156BC  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 806156C0  57 67 10 3A */	slwi r7, r27, 2
/* 806156C4  39 0B 00 08 */	addi r8, r11, 8
/* 806156C8  39 9F 00 00 */	addi r12, r31, 0
/* 806156CC  91 1D 02 E0 */	stw r8, 0x2e0(r29)
/* 806156D0  39 45 00 24 */	addi r10, r5, 0x24
/* 806156D4  57 49 10 3A */	slwi r9, r26, 2
/* 806156D8  67 28 FA 00 */	oris r8, r25, 0xfa00
/* 806156DC  90 CB 00 00 */	stw r6, 0(r11)
/* 806156E0  64 86 FF 00 */	oris r6, r4, 0xff00
/* 806156E4  57 05 40 2E */	slwi r5, r24, 8
/* 806156E8  64 04 FF 00 */	oris r4, r0, 0xff00
/* 806156EC  7C EC 38 2E */	lwzx r7, r12, r7
/* 806156F0  7C C5 2B 78 */	or r5, r6, r5
/* 806156F4  56 C0 40 2E */	slwi r0, r22, 8
/* 806156F8  3C C0 FB 00 */	lis r6, 0xfb00
/* 806156FC  90 EB 00 04 */	stw r7, 4(r11)
/* 80615700  7C 80 03 78 */	or r0, r4, r0
/* 80615704  7E E7 2B 78 */	or r7, r23, r5
/* 80615708  3C 80 DE 00 */	lis r4, 0xde00
/* 8061570C  81 7D 02 E0 */	lwz r11, 0x2e0(r29)
/* 80615710  60 05 00 FF */	ori r5, r0, 0xff
/* 80615714  38 03 C8 E0 */	addi r0, r3, ef_pun01_00_modelT@l /* 0x80CBC8E0@l */
/* 80615718  38 6B 00 08 */	addi r3, r11, 8
/* 8061571C  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80615720  91 4B 00 00 */	stw r10, 0(r11)
/* 80615724  7C 6C 48 2E */	lwzx r3, r12, r9
/* 80615728  90 6B 00 04 */	stw r3, 4(r11)
/* 8061572C  81 3D 02 E0 */	lwz r9, 0x2e0(r29)
/* 80615730  38 69 00 08 */	addi r3, r9, 8
/* 80615734  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80615738  91 09 00 00 */	stw r8, 0(r9)
/* 8061573C  90 E9 00 04 */	stw r7, 4(r9)
/* 80615740  80 FD 02 E0 */	lwz r7, 0x2e0(r29)
/* 80615744  38 67 00 08 */	addi r3, r7, 8
/* 80615748  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8061574C  90 C7 00 00 */	stw r6, 0(r7)
/* 80615750  90 A7 00 04 */	stw r5, 4(r7)
/* 80615754  80 BD 02 E0 */	lwz r5, 0x2e0(r29)
/* 80615758  38 65 00 08 */	addi r3, r5, 8
/* 8061575C  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80615760  90 85 00 00 */	stw r4, 0(r5)
/* 80615764  90 05 00 04 */	stw r0, 4(r5)
/* 80615768  39 61 00 50 */	addi r11, r1, 0x50
/* 8061576C  4B A8 57 91 */	bl func_8009AEFC
/* 80615770  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80615774  7C 08 03 A6 */	mtlr r0
/* 80615778  38 21 00 50 */	addi r1, r1, 0x50
/* 8061577C  4E 80 00 20 */	blr 