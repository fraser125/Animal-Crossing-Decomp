lbl_80640810:
/* 80640810  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80640814  7C 08 02 A6 */	mflr r0
/* 80640818  90 01 00 34 */	stw r0, 0x34(r1)
/* 8064081C  39 61 00 30 */	addi r11, r1, 0x30
/* 80640820  4B A5 A6 A5 */	bl func_8009AEC4
/* 80640824  7C BB 2B 78 */	mr r27, r5
/* 80640828  7C 7A 1B 78 */	mr r26, r3
/* 8064082C  80 85 00 A0 */	lwz r4, 0xa0(r5)
/* 80640830  3B DA 01 34 */	addi r30, r26, 0x134
/* 80640834  A8 03 00 02 */	lha r0, 2(r3)
/* 80640838  54 83 07 FE */	clrlwi r3, r4, 0x1f
/* 8064083C  1C 63 03 00 */	mulli r3, r3, 0x300
/* 80640840  2C 00 00 01 */	cmpwi r0, 1
/* 80640844  3B A3 02 10 */	addi r29, r3, 0x210
/* 80640848  7F BA EA 14 */	add r29, r26, r29
/* 8064084C  40 82 00 08 */	bne lbl_80640854
/* 80640850  80 9B 20 90 */	lwz r4, 0x2090(r27)
lbl_80640854:
/* 80640854  7C 04 00 D0 */	neg r0, r4
/* 80640858  7F 67 DB 78 */	mr r7, r27
/* 8064085C  1C 80 00 03 */	mulli r4, r0, 3
/* 80640860  38 60 00 00 */	li r3, 0
/* 80640864  54 05 08 3C */	slwi r5, r0, 1
/* 80640868  38 C0 00 00 */	li r6, 0
/* 8064086C  4B FF FF 51 */	bl fITF02_GetTwoTileGfx
/* 80640870  7C 7F 1B 79 */	or. r31, r3, r3
/* 80640874  41 82 00 90 */	beq lbl_80640904
/* 80640878  83 9B 00 00 */	lwz r28, 0(r27)
/* 8064087C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80640880  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80640884  83 3C 02 D0 */	lwz r25, 0x2d0(r28)
/* 80640888  38 79 00 08 */	addi r3, r25, 8
/* 8064088C  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 80640890  90 19 00 00 */	stw r0, 0(r25)
/* 80640894  80 7B 00 00 */	lwz r3, 0(r27)
/* 80640898  4B DC CB 3D */	bl _Matrix_to_Mtx_new
/* 8064089C  90 79 00 04 */	stw r3, 4(r25)
/* 806408A0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 806408A4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 806408A8  83 3C 02 E0 */	lwz r25, 0x2e0(r28)
/* 806408AC  38 79 00 08 */	addi r3, r25, 8
/* 806408B0  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 806408B4  90 19 00 00 */	stw r0, 0(r25)
/* 806408B8  80 7B 00 00 */	lwz r3, 0(r27)
/* 806408BC  4B DC CB 19 */	bl _Matrix_to_Mtx_new
/* 806408C0  90 79 00 04 */	stw r3, 4(r25)
/* 806408C4  3C 80 80 64 */	lis r4, fITF02_DwBefore@ha /* 0x806407A4@ha */
/* 806408C8  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 806408CC  3C 60 80 64 */	lis r3, fITF02_DwAfter@ha /* 0x8064065C@ha */
/* 806408D0  81 3C 02 E0 */	lwz r9, 0x2e0(r28)
/* 806408D4  38 C4 07 A4 */	addi r6, r4, fITF02_DwBefore@l /* 0x806407A4@l */
/* 806408D8  38 05 00 24 */	addi r0, r5, 0x0024 /* 0xDB060024@l */
/* 806408DC  38 E3 06 5C */	addi r7, r3, fITF02_DwAfter@l /* 0x8064065C@l */
/* 806408E0  38 89 00 08 */	addi r4, r9, 8
/* 806408E4  7F 63 DB 78 */	mr r3, r27
/* 806408E8  90 9C 02 E0 */	stw r4, 0x2e0(r28)
/* 806408EC  7F C4 F3 78 */	mr r4, r30
/* 806408F0  7F A5 EB 78 */	mr r5, r29
/* 806408F4  7F 48 D3 78 */	mr r8, r26
/* 806408F8  90 09 00 00 */	stw r0, 0(r9)
/* 806408FC  93 E9 00 04 */	stw r31, 4(r9)
/* 80640900  4B D3 0E 39 */	bl cKF_Si3_draw_R_SV
lbl_80640904:
/* 80640904  39 61 00 30 */	addi r11, r1, 0x30
/* 80640908  4B A5 A6 09 */	bl func_8009AF10
/* 8064090C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80640910  7C 08 03 A6 */	mtlr r0
/* 80640914  38 21 00 30 */	addi r1, r1, 0x30
/* 80640918  4E 80 00 20 */	blr 