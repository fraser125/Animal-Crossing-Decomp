lbl_8062F8FC:
/* 8062F8FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8062F900  7C 08 02 A6 */	mflr r0
/* 8062F904  90 01 00 44 */	stw r0, 0x44(r1)
/* 8062F908  39 61 00 40 */	addi r11, r1, 0x40
/* 8062F90C  4B A6 B5 B5 */	bl func_8009AEC0
/* 8062F910  7C B9 2B 78 */	mr r25, r5
/* 8062F914  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062F918  80 05 00 A0 */	lwz r0, 0xa0(r5)
/* 8062F91C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062F920  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8062F924  7C 7A 1B 78 */	mr r26, r3
/* 8062F928  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8062F92C  3B 00 00 00 */	li r24, 0
/* 8062F930  1C 60 03 00 */	mulli r3, r0, 0x300
/* 8062F934  2C 04 00 2A */	cmpwi r4, 0x2a
/* 8062F938  3B 9A 01 34 */	addi r28, r26, 0x134
/* 8062F93C  3B 63 02 10 */	addi r27, r3, 0x210
/* 8062F940  7F 7A DA 14 */	add r27, r26, r27
/* 8062F944  41 82 00 1C */	beq lbl_8062F960
/* 8062F948  2C 04 00 2B */	cmpwi r4, 0x2b
/* 8062F94C  41 82 00 14 */	beq lbl_8062F960
/* 8062F950  2C 04 00 2C */	cmpwi r4, 0x2c
/* 8062F954  41 82 00 0C */	beq lbl_8062F960
/* 8062F958  2C 04 00 2D */	cmpwi r4, 0x2d
/* 8062F95C  40 82 00 14 */	bne lbl_8062F970
lbl_8062F960:
/* 8062F960  4B D8 9C B9 */	bl mEnv_PointLightMin
/* 8062F964  2C 03 00 00 */	cmpwi r3, 0
/* 8062F968  41 82 00 08 */	beq lbl_8062F970
/* 8062F96C  3B 00 00 01 */	li r24, 1
lbl_8062F970:
/* 8062F970  93 21 00 08 */	stw r25, 8(r1)
/* 8062F974  20 18 00 00 */	subfic r0, r24, 0
/* 8062F978  7C 80 01 10 */	subfe r4, r0, r0
/* 8062F97C  38 60 00 02 */	li r3, 2
/* 8062F980  93 41 00 0C */	stw r26, 0xc(r1)
/* 8062F984  38 00 00 00 */	li r0, 0
/* 8062F988  7C 78 20 78 */	andc r24, r3, r4
/* 8062F98C  38 60 00 20 */	li r3, 0x20
/* 8062F990  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062F994  7F 05 C3 78 */	mr r5, r24
/* 8062F998  38 80 00 08 */	li r4, 8
/* 8062F99C  38 C0 00 00 */	li r6, 0
/* 8062F9A0  38 E0 00 20 */	li r7, 0x20
/* 8062F9A4  39 00 00 08 */	li r8, 8
/* 8062F9A8  39 20 00 00 */	li r9, 0
/* 8062F9AC  39 40 00 00 */	li r10, 0
/* 8062F9B0  4B FF F1 55 */	bl fFTR_GetTwoTileGfx
/* 8062F9B4  93 21 00 08 */	stw r25, 8(r1)
/* 8062F9B8  7C 7D 1B 78 */	mr r29, r3
/* 8062F9BC  38 00 00 05 */	li r0, 5
/* 8062F9C0  7F 05 C3 78 */	mr r5, r24
/* 8062F9C4  93 41 00 0C */	stw r26, 0xc(r1)
/* 8062F9C8  38 60 00 20 */	li r3, 0x20
/* 8062F9CC  38 80 00 08 */	li r4, 8
/* 8062F9D0  38 C0 00 00 */	li r6, 0
/* 8062F9D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062F9D8  38 E0 00 20 */	li r7, 0x20
/* 8062F9DC  39 00 00 08 */	li r8, 8
/* 8062F9E0  39 20 00 00 */	li r9, 0
/* 8062F9E4  39 40 00 00 */	li r10, 0
/* 8062F9E8  4B FF F1 1D */	bl fFTR_GetTwoTileGfx
/* 8062F9EC  93 21 00 08 */	stw r25, 8(r1)
/* 8062F9F0  7C 7E 1B 78 */	mr r30, r3
/* 8062F9F4  38 00 00 0F */	li r0, 0xf
/* 8062F9F8  7F 05 C3 78 */	mr r5, r24
/* 8062F9FC  93 41 00 0C */	stw r26, 0xc(r1)
/* 8062FA00  38 60 00 20 */	li r3, 0x20
/* 8062FA04  38 80 00 08 */	li r4, 8
/* 8062FA08  38 C0 00 00 */	li r6, 0
/* 8062FA0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062FA10  38 E0 00 20 */	li r7, 0x20
/* 8062FA14  39 00 00 08 */	li r8, 8
/* 8062FA18  39 20 00 00 */	li r9, 0
/* 8062FA1C  39 40 00 00 */	li r10, 0
/* 8062FA20  4B FF F0 E5 */	bl fFTR_GetTwoTileGfx
/* 8062FA24  28 1D 00 00 */	cmplwi r29, 0
/* 8062FA28  7C 7F 1B 78 */	mr r31, r3
/* 8062FA2C  41 82 00 A4 */	beq lbl_8062FAD0
/* 8062FA30  28 1E 00 00 */	cmplwi r30, 0
/* 8062FA34  41 82 00 9C */	beq lbl_8062FAD0
/* 8062FA38  28 1F 00 00 */	cmplwi r31, 0
/* 8062FA3C  41 82 00 94 */	beq lbl_8062FAD0
/* 8062FA40  83 59 00 00 */	lwz r26, 0(r25)
/* 8062FA44  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8062FA48  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8062FA4C  83 1A 02 D0 */	lwz r24, 0x2d0(r26)
/* 8062FA50  38 78 00 08 */	addi r3, r24, 8
/* 8062FA54  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 8062FA58  90 18 00 00 */	stw r0, 0(r24)
/* 8062FA5C  80 79 00 00 */	lwz r3, 0(r25)
/* 8062FA60  4B DD D9 75 */	bl _Matrix_to_Mtx_new
/* 8062FA64  90 78 00 04 */	stw r3, 4(r24)
/* 8062FA68  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 8062FA6C  39 44 00 20 */	addi r10, r4, 0x0020 /* 0xDB060020@l */
/* 8062FA70  7F 23 CB 78 */	mr r3, r25
/* 8062FA74  81 7A 02 D0 */	lwz r11, 0x2d0(r26)
/* 8062FA78  39 24 00 24 */	addi r9, r4, 0x24
/* 8062FA7C  38 04 00 28 */	addi r0, r4, 0x28
/* 8062FA80  7F 84 E3 78 */	mr r4, r28
/* 8062FA84  38 CB 00 08 */	addi r6, r11, 8
/* 8062FA88  7F 65 DB 78 */	mr r5, r27
/* 8062FA8C  90 DA 02 D0 */	stw r6, 0x2d0(r26)
/* 8062FA90  38 C0 00 00 */	li r6, 0
/* 8062FA94  38 E0 00 00 */	li r7, 0
/* 8062FA98  39 00 00 00 */	li r8, 0
/* 8062FA9C  91 4B 00 00 */	stw r10, 0(r11)
/* 8062FAA0  93 AB 00 04 */	stw r29, 4(r11)
/* 8062FAA4  81 7A 02 D0 */	lwz r11, 0x2d0(r26)
/* 8062FAA8  39 4B 00 08 */	addi r10, r11, 8
/* 8062FAAC  91 5A 02 D0 */	stw r10, 0x2d0(r26)
/* 8062FAB0  91 2B 00 00 */	stw r9, 0(r11)
/* 8062FAB4  93 CB 00 04 */	stw r30, 4(r11)
/* 8062FAB8  81 5A 02 D0 */	lwz r10, 0x2d0(r26)
/* 8062FABC  39 2A 00 08 */	addi r9, r10, 8
/* 8062FAC0  91 3A 02 D0 */	stw r9, 0x2d0(r26)
/* 8062FAC4  90 0A 00 00 */	stw r0, 0(r10)
/* 8062FAC8  93 EA 00 04 */	stw r31, 4(r10)
/* 8062FACC  4B D4 1C 6D */	bl cKF_Si3_draw_R_SV
lbl_8062FAD0:
/* 8062FAD0  39 61 00 40 */	addi r11, r1, 0x40
/* 8062FAD4  4B A6 B4 39 */	bl func_8009AF0C
/* 8062FAD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8062FADC  7C 08 03 A6 */	mtlr r0
/* 8062FAE0  38 21 00 40 */	addi r1, r1, 0x40
/* 8062FAE4  4E 80 00 20 */	blr 
