lbl_80610534:
/* 80610534  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80610538  7C 08 02 A6 */	mflr r0
/* 8061053C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80610540  39 61 00 40 */	addi r11, r1, 0x40
/* 80610544  4B A8 A9 89 */	bl func_8009AECC
/* 80610548  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 8061054C  7C 7F 1B 78 */	mr r31, r3
/* 80610550  38 6A 85 38 */	addi r3, r10, common_data@l /* 0x81138538@l */
/* 80610554  7C 9B 23 78 */	mr r27, r4
/* 80610558  3F A3 00 02 */	addis r29, r3, 2
/* 8061055C  7C A0 2B 78 */	mr r0, r5
/* 80610560  81 7D 60 9C */	lwz r11, 0x609c(r29)
/* 80610564  7C DC 33 78 */	mr r28, r6
/* 80610568  7C FE 3B 78 */	mr r30, r7
/* 8061056C  7D 0C 43 78 */	mr r12, r8
/* 80610570  28 0B 00 00 */	cmplwi r11, 0
/* 80610574  7D 2A 4B 78 */	mr r10, r9
/* 80610578  41 82 00 44 */	beq lbl_806105BC
/* 8061057C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80610580  7C 06 03 78 */	mr r6, r0
/* 80610584  80 7F 00 04 */	lwz r3, 4(r31)
/* 80610588  7D 89 63 78 */	mr r9, r12
/* 8061058C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80610590  7F 65 DB 78 */	mr r5, r27
/* 80610594  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80610598  7F 87 E3 78 */	mr r7, r28
/* 8061059C  7F C8 F3 78 */	mr r8, r30
/* 806105A0  38 81 00 1C */	addi r4, r1, 0x1c
/* 806105A4  90 61 00 20 */	stw r3, 0x20(r1)
/* 806105A8  38 60 00 1C */	li r3, 0x1c
/* 806105AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806105B0  81 8B 00 00 */	lwz r12, 0(r11)
/* 806105B4  7D 89 03 A6 */	mtctr r12
/* 806105B8  4E 80 04 21 */	bctrl 
lbl_806105BC:
/* 806105BC  3C 60 80 65 */	lis r3, data_8064C314@ha /* 0x8064C314@ha */
/* 806105C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806105C4  C0 03 C3 14 */	lfs f0, data_8064C314@l(r3)  /* 0x8064C314@l */
/* 806105C8  7F C8 F3 78 */	mr r8, r30
/* 806105CC  38 00 00 00 */	li r0, 0
/* 806105D0  7F 86 E3 78 */	mr r6, r28
/* 806105D4  EC 01 00 2A */	fadds f0, f1, f0
/* 806105D8  7F 69 DB 78 */	mr r9, r27
/* 806105DC  38 81 00 10 */	addi r4, r1, 0x10
/* 806105E0  38 60 00 1B */	li r3, 0x1b
/* 806105E4  38 A0 00 00 */	li r5, 0
/* 806105E8  38 E0 00 00 */	li r7, 0
/* 806105EC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 806105F0  39 40 00 00 */	li r10, 0
/* 806105F4  83 DF 00 00 */	lwz r30, 0(r31)
/* 806105F8  81 9F 00 04 */	lwz r12, 4(r31)
/* 806105FC  81 7F 00 08 */	lwz r11, 8(r31)
/* 80610600  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80610604  91 81 00 14 */	stw r12, 0x14(r1)
/* 80610608  91 61 00 18 */	stw r11, 0x18(r1)
/* 8061060C  90 01 00 08 */	stw r0, 8(r1)
/* 80610610  81 7D 60 9C */	lwz r11, 0x609c(r29)
/* 80610614  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80610618  7D 89 03 A6 */	mtctr r12
/* 8061061C  4E 80 04 21 */	bctrl 
/* 80610620  39 61 00 40 */	addi r11, r1, 0x40
/* 80610624  4B A8 A8 F5 */	bl func_8009AF18
/* 80610628  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061062C  7C 08 03 A6 */	mtlr r0
/* 80610630  38 21 00 40 */	addi r1, r1, 0x40
/* 80610634  4E 80 00 20 */	blr 