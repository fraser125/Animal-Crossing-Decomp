lbl_80411CA4:
/* 80411CA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80411CA8  7C 08 02 A6 */	mflr r0
/* 80411CAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80411CB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80411CB4  4B C8 92 1D */	bl func_8009AED0
/* 80411CB8  7C 9C 23 78 */	mr r28, r4
/* 80411CBC  83 E3 01 78 */	lwz r31, 0x178(r3)
/* 80411CC0  80 64 00 00 */	lwz r3, 0(r4)
/* 80411CC4  4B FD 34 45 */	bl _texture_z_light_fog_prim
/* 80411CC8  3C 60 80 64 */	lis r3, data_8064399C@ha /* 0x8064399C@ha */
/* 80411CCC  83 DC 00 00 */	lwz r30, 0(r28)
/* 80411CD0  38 83 39 9C */	addi r4, r3, data_8064399C@l /* 0x8064399C@l */
/* 80411CD4  38 60 00 00 */	li r3, 0
/* 80411CD8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80411CDC  FC 40 08 90 */	fmr f2, f1
/* 80411CE0  FC 60 08 90 */	fmr f3, f1
/* 80411CE4  4B FF A6 1D */	bl Matrix_translate
/* 80411CE8  3C 80 80 64 */	lis r4, lit_485@ha /* 0x806439A0@ha */
/* 80411CEC  38 60 00 01 */	li r3, 1
/* 80411CF0  C0 24 39 A0 */	lfs f1, lit_485@l(r4)  /* 0x806439A0@l */
/* 80411CF4  FC 40 08 90 */	fmr f2, f1
/* 80411CF8  FC 60 08 90 */	fmr f3, f1
/* 80411CFC  4B FF A6 F1 */	bl Matrix_scale
/* 80411D00  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 80411D04  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80411D08  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80411D0C  38 7D 00 08 */	addi r3, r29, 8
/* 80411D10  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411D14  90 1D 00 00 */	stw r0, 0(r29)
/* 80411D18  80 7C 00 00 */	lwz r3, 0(r28)
/* 80411D1C  4B FF B6 B9 */	bl _Matrix_to_Mtx_new
/* 80411D20  90 7D 00 04 */	stw r3, 4(r29)
/* 80411D24  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 80411D28  3C 80 80 90 */	lis r4, rom_myhome2_wall_model@ha /* 0x809075D8@ha */
/* 80411D2C  3C 60 80 90 */	lis r3, rom_myhome2_wall_modelT@ha /* 0x809075D0@ha */
/* 80411D30  81 5E 02 D0 */	lwz r10, 0x2d0(r30)
/* 80411D34  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 80411D38  39 3F 00 20 */	addi r9, r31, 0x20
/* 80411D3C  39 05 00 24 */	addi r8, r5, 0x24
/* 80411D40  38 CA 00 08 */	addi r6, r10, 8
/* 80411D44  38 FF 08 20 */	addi r7, r31, 0x820
/* 80411D48  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 80411D4C  38 C5 00 28 */	addi r6, r5, 0x28
/* 80411D50  3C A0 DE 00 */	lis r5, 0xde00
/* 80411D54  38 84 75 D8 */	addi r4, r4, rom_myhome2_wall_model@l /* 0x809075D8@l */
/* 80411D58  90 0A 00 00 */	stw r0, 0(r10)
/* 80411D5C  38 03 75 D0 */	addi r0, r3, rom_myhome2_wall_modelT@l /* 0x809075D0@l */
/* 80411D60  91 2A 00 04 */	stw r9, 4(r10)
/* 80411D64  81 3E 02 D0 */	lwz r9, 0x2d0(r30)
/* 80411D68  38 69 00 08 */	addi r3, r9, 8
/* 80411D6C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411D70  91 09 00 00 */	stw r8, 0(r9)
/* 80411D74  90 E9 00 04 */	stw r7, 4(r9)
/* 80411D78  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 80411D7C  38 67 00 08 */	addi r3, r7, 8
/* 80411D80  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411D84  90 C7 00 00 */	stw r6, 0(r7)
/* 80411D88  93 E7 00 04 */	stw r31, 4(r7)
/* 80411D8C  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 80411D90  38 66 00 08 */	addi r3, r6, 8
/* 80411D94  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411D98  90 A6 00 00 */	stw r5, 0(r6)
/* 80411D9C  90 86 00 04 */	stw r4, 4(r6)
/* 80411DA0  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 80411DA4  38 64 00 08 */	addi r3, r4, 8
/* 80411DA8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80411DAC  90 A4 00 00 */	stw r5, 0(r4)
/* 80411DB0  90 04 00 04 */	stw r0, 4(r4)
/* 80411DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80411DB8  4B C8 91 65 */	bl func_8009AF1C
/* 80411DBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80411DC0  7C 08 03 A6 */	mtlr r0
/* 80411DC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80411DC8  4E 80 00 20 */	blr 
