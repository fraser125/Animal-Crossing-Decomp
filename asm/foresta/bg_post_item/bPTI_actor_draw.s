lbl_804BE7F8:
/* 804BE7F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BE7FC  7C 08 02 A6 */	mflr r0
/* 804BE800  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BE804  39 61 00 40 */	addi r11, r1, 0x40
/* 804BE808  4B BD C6 AD */	bl func_8009AEB4
/* 804BE80C  7C 76 1B 78 */	mr r22, r3
/* 804BE810  7C 95 23 78 */	mr r21, r4
/* 804BE814  88 03 01 75 */	lbz r0, 0x175(r3)
/* 804BE818  28 00 00 01 */	cmplwi r0, 1
/* 804BE81C  40 82 00 14 */	bne lbl_804BE830
/* 804BE820  4B F2 06 45 */	bl mPO_get_keep_mail_sum
/* 804BE824  98 76 01 74 */	stb r3, 0x174(r22)
/* 804BE828  38 00 00 00 */	li r0, 0
/* 804BE82C  98 16 01 75 */	stb r0, 0x175(r22)
lbl_804BE830:
/* 804BE830  8B 16 01 74 */	lbz r24, 0x174(r22)
/* 804BE834  2C 18 00 00 */	cmpwi r24, 0
/* 804BE838  40 81 00 C4 */	ble lbl_804BE8FC
/* 804BE83C  82 F5 00 00 */	lwz r23, 0(r21)
/* 804BE840  3C 60 80 69 */	lis r3, setX@ha /* 0x80695C84@ha */
/* 804BE844  38 03 5C 84 */	addi r0, r3, setX@l /* 0x80695C84@l */
/* 804BE848  7C 16 03 78 */	mr r22, r0
/* 804BE84C  7E E3 BB 78 */	mr r3, r23
/* 804BE850  4B F2 68 B9 */	bl _texture_z_light_fog_prim
/* 804BE854  82 B7 02 D0 */	lwz r21, 0x2d0(r23)
/* 804BE858  3F 20 DE 00 */	lis r25, 0xde00
/* 804BE85C  3C 60 80 EE */	lis r3, obj_letterT_mat_model@ha /* 0x80EE0620@ha */
/* 804BE860  3C C0 80 EE */	lis r6, obj_letterT_gfx_model@ha /* 0x80EE0668@ha */
/* 804BE864  93 35 00 00 */	stw r25, 0(r21)
/* 804BE868  38 03 06 20 */	addi r0, r3, obj_letterT_mat_model@l /* 0x80EE0620@l */
/* 804BE86C  3C A0 80 64 */	lis r5, data_80646134@ha /* 0x80646134@ha */
/* 804BE870  3C 80 80 64 */	lis r4, lit_421@ha /* 0x80646138@ha */
/* 804BE874  90 15 00 04 */	stw r0, 4(r21)
/* 804BE878  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804BE87C  3B 46 06 68 */	addi r26, r6, obj_letterT_gfx_model@l /* 0x80EE0668@l */
/* 804BE880  3B 65 61 34 */	addi r27, r5, data_80646134@l /* 0x80646134@l */
/* 804BE884  3B 84 61 38 */	addi r28, r4, lit_421@l /* 0x80646138@l */
/* 804BE888  3B E3 00 03 */	addi r31, r3, 0x0003 /* 0xDA380003@l */
/* 804BE88C  3F A0 E7 00 */	lis r29, 0xe700
/* 804BE890  3B C0 00 00 */	li r30, 0
/* 804BE894  3A B5 00 08 */	addi r21, r21, 8
/* 804BE898  48 00 00 58 */	b lbl_804BE8F0
lbl_804BE89C:
/* 804BE89C  C0 5B 00 00 */	lfs f2, 0(r27)
/* 804BE8A0  38 60 00 00 */	li r3, 0
/* 804BE8A4  C0 36 00 00 */	lfs f1, 0(r22)
/* 804BE8A8  FC 60 10 90 */	fmr f3, f2
/* 804BE8AC  4B F4 DA 55 */	bl Matrix_translate
/* 804BE8B0  C0 3C 00 00 */	lfs f1, 0(r28)
/* 804BE8B4  38 60 00 01 */	li r3, 1
/* 804BE8B8  FC 40 08 90 */	fmr f2, f1
/* 804BE8BC  FC 60 08 90 */	fmr f3, f1
/* 804BE8C0  4B F4 DB 2D */	bl Matrix_scale
/* 804BE8C4  93 B5 00 00 */	stw r29, 0(r21)
/* 804BE8C8  7E E3 BB 78 */	mr r3, r23
/* 804BE8CC  93 D5 00 04 */	stw r30, 4(r21)
/* 804BE8D0  97 F5 00 08 */	stwu r31, 8(r21)
/* 804BE8D4  4B F4 EB 01 */	bl _Matrix_to_Mtx_new
/* 804BE8D8  90 75 00 04 */	stw r3, 4(r21)
/* 804BE8DC  3A D6 00 04 */	addi r22, r22, 4
/* 804BE8E0  3B 18 FF FF */	addi r24, r24, -1
/* 804BE8E4  93 35 00 08 */	stw r25, 8(r21)
/* 804BE8E8  93 55 00 0C */	stw r26, 0xc(r21)
/* 804BE8EC  3A B5 00 10 */	addi r21, r21, 0x10
lbl_804BE8F0:
/* 804BE8F0  2C 18 00 00 */	cmpwi r24, 0
/* 804BE8F4  40 82 FF A8 */	bne lbl_804BE89C
/* 804BE8F8  92 B7 02 D0 */	stw r21, 0x2d0(r23)
lbl_804BE8FC:
/* 804BE8FC  39 61 00 40 */	addi r11, r1, 0x40
/* 804BE900  4B BD C6 01 */	bl func_8009AF00
/* 804BE904  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BE908  7C 08 03 A6 */	mtlr r0
/* 804BE90C  38 21 00 40 */	addi r1, r1, 0x40
/* 804BE910  4E 80 00 20 */	blr 
