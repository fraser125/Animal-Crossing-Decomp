lbl_805E2C90:
/* 805E2C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E2C94  7C 08 02 A6 */	mflr r0
/* 805E2C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E2C9C  39 61 00 20 */	addi r11, r1, 0x20
/* 805E2CA0  4B AB 82 2D */	bl func_8009AECC
/* 805E2CA4  7C 7F 1B 78 */	mr r31, r3
/* 805E2CA8  7C 9B 23 78 */	mr r27, r4
/* 805E2CAC  4B E0 24 5D */	bl _texture_z_light_fog_prim
/* 805E2CB0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805E2CB4  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805E2CB8  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 805E2CBC  3C 80 80 CC */	lis r4, ef_takurami01_menu_render_mode@ha /* 0x80CC05A0@ha */
/* 805E2CC0  80 E3 09 88 */	lwz r7, 0x988(r3)
/* 805E2CC4  3C 60 80 CC */	lis r3, ef_takurami01_kira_modelT@ha /* 0x80CC0400@ha */
/* 805E2CC8  38 06 00 08 */	addi r0, r6, 8
/* 805E2CCC  38 A5 00 20 */	addi r5, r5, 0x0020 /* 0xDB060020@l */
/* 805E2CD0  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 805E2CD4  38 04 05 A0 */	addi r0, r4, ef_takurami01_menu_render_mode@l /* 0x80CC05A0@l */
/* 805E2CD8  3B 67 03 FC */	addi r27, r7, 0x3fc
/* 805E2CDC  3B A3 04 00 */	addi r29, r3, ef_takurami01_kira_modelT@l /* 0x80CC0400@l */
/* 805E2CE0  90 A6 00 00 */	stw r5, 0(r6)
/* 805E2CE4  3B 80 00 00 */	li r28, 0
/* 805E2CE8  90 06 00 04 */	stw r0, 4(r6)
lbl_805E2CEC:
/* 805E2CEC  80 1B 00 00 */	lwz r0, 0(r27)
/* 805E2CF0  2C 00 00 00 */	cmpwi r0, 0
/* 805E2CF4  41 82 00 68 */	beq lbl_805E2D5C
/* 805E2CF8  C0 3B 00 04 */	lfs f1, 4(r27)
/* 805E2CFC  38 60 00 00 */	li r3, 0
/* 805E2D00  C0 5B 00 08 */	lfs f2, 8(r27)
/* 805E2D04  C0 7B 00 0C */	lfs f3, 0xc(r27)
/* 805E2D08  4B E2 95 F9 */	bl Matrix_translate
/* 805E2D0C  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 805E2D10  38 60 00 01 */	li r3, 1
/* 805E2D14  FC 40 08 90 */	fmr f2, f1
/* 805E2D18  FC 60 08 90 */	fmr f3, f1
/* 805E2D1C  4B E2 96 D1 */	bl Matrix_scale
/* 805E2D20  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805E2D24  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E2D28  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E2D2C  7F E3 FB 78 */	mr r3, r31
/* 805E2D30  38 9E 00 08 */	addi r4, r30, 8
/* 805E2D34  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805E2D38  90 1E 00 00 */	stw r0, 0(r30)
/* 805E2D3C  4B E2 A6 99 */	bl _Matrix_to_Mtx_new
/* 805E2D40  90 7E 00 04 */	stw r3, 4(r30)
/* 805E2D44  3C 00 DE 00 */	lis r0, 0xde00
/* 805E2D48  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 805E2D4C  38 64 00 08 */	addi r3, r4, 8
/* 805E2D50  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 805E2D54  90 04 00 00 */	stw r0, 0(r4)
/* 805E2D58  93 A4 00 04 */	stw r29, 4(r4)
lbl_805E2D5C:
/* 805E2D5C  3B 9C 00 01 */	addi r28, r28, 1
/* 805E2D60  3B 7B 00 18 */	addi r27, r27, 0x18
/* 805E2D64  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805E2D68  41 80 FF 84 */	blt lbl_805E2CEC
/* 805E2D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 805E2D70  4B AB 81 A9 */	bl func_8009AF18
/* 805E2D74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E2D78  7C 08 03 A6 */	mtlr r0
/* 805E2D7C  38 21 00 20 */	addi r1, r1, 0x20
/* 805E2D80  4E 80 00 20 */	blr 
