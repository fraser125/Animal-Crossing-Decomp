lbl_8046F764:
/* 8046F764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046F768  7C 08 02 A6 */	mflr r0
/* 8046F76C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046F770  39 61 00 30 */	addi r11, r1, 0x30
/* 8046F774  4B C2 B7 49 */	bl func_8009AEBC
/* 8046F778  A8 A3 01 80 */	lha r5, 0x180(r3)
/* 8046F77C  7C 98 23 78 */	mr r24, r4
/* 8046F780  80 03 01 78 */	lwz r0, 0x178(r3)
/* 8046F784  1C 85 00 18 */	mulli r4, r5, 0x18
/* 8046F788  2C 00 00 00 */	cmpwi r0, 0
/* 8046F78C  38 04 01 90 */	addi r0, r4, 0x190
/* 8046F790  7F A3 00 2E */	lwzx r29, r3, r0
/* 8046F794  3B 9D 00 20 */	addi r28, r29, 0x20
/* 8046F798  3B 7D 08 20 */	addi r27, r29, 0x820
/* 8046F79C  3B 5D 10 20 */	addi r26, r29, 0x1020
/* 8046F7A0  3B 3D 18 20 */	addi r25, r29, 0x1820
/* 8046F7A4  40 82 00 20 */	bne lbl_8046F7C4
/* 8046F7A8  A8 83 01 D4 */	lha r4, 0x1d4(r3)
/* 8046F7AC  3C 60 80 68 */	lis r3, data_80686FF0@ha /* 0x80686FF0@ha */
/* 8046F7B0  38 03 6F F0 */	addi r0, r3, data_80686FF0@l /* 0x80686FF0@l */
/* 8046F7B4  1C 64 00 1C */	mulli r3, r4, 0x1c
/* 8046F7B8  7C 60 1A 14 */	add r3, r0, r3
/* 8046F7BC  3B E3 00 08 */	addi r31, r3, 8
/* 8046F7C0  48 00 00 1C */	b lbl_8046F7DC
lbl_8046F7C4:
/* 8046F7C4  A8 83 01 D4 */	lha r4, 0x1d4(r3)
/* 8046F7C8  3C 60 80 68 */	lis r3, data_80686FF0@ha /* 0x80686FF0@ha */
/* 8046F7CC  38 03 6F F0 */	addi r0, r3, data_80686FF0@l /* 0x80686FF0@l */
/* 8046F7D0  1C 64 00 1C */	mulli r3, r4, 0x1c
/* 8046F7D4  7C 60 1A 14 */	add r3, r0, r3
/* 8046F7D8  3B E3 00 10 */	addi r31, r3, 0x10
lbl_8046F7DC:
/* 8046F7DC  7F 03 C3 78 */	mr r3, r24
/* 8046F7E0  4B F4 8F 39 */	bl Global_kankyo_set_room_prim
/* 8046F7E4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8046F7E8  28 00 00 00 */	cmplwi r0, 0
/* 8046F7EC  41 82 00 FC */	beq lbl_8046F8E8
/* 8046F7F0  83 D8 00 00 */	lwz r30, 0(r24)
/* 8046F7F4  7F C3 F3 78 */	mr r3, r30
/* 8046F7F8  4B F7 59 11 */	bl _texture_z_light_fog_prim
/* 8046F7FC  3C 80 80 64 */	lis r4, lit_671@ha /* 0x806449A0@ha */
/* 8046F800  38 60 00 00 */	li r3, 0
/* 8046F804  C0 24 49 A0 */	lfs f1, lit_671@l(r4)  /* 0x806449A0@l */
/* 8046F808  FC 40 08 90 */	fmr f2, f1
/* 8046F80C  FC 60 08 90 */	fmr f3, f1
/* 8046F810  4B F9 CA F1 */	bl Matrix_translate
/* 8046F814  3C 80 80 64 */	lis r4, lit_672@ha /* 0x806449A4@ha */
/* 8046F818  38 60 00 01 */	li r3, 1
/* 8046F81C  C0 24 49 A4 */	lfs f1, lit_672@l(r4)  /* 0x806449A4@l */
/* 8046F820  FC 40 08 90 */	fmr f2, f1
/* 8046F824  FC 60 08 90 */	fmr f3, f1
/* 8046F828  4B F9 CB C5 */	bl Matrix_scale
/* 8046F82C  82 FE 02 D0 */	lwz r23, 0x2d0(r30)
/* 8046F830  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046F834  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046F838  38 77 00 08 */	addi r3, r23, 8
/* 8046F83C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8046F840  90 17 00 00 */	stw r0, 0(r23)
/* 8046F844  80 78 00 00 */	lwz r3, 0(r24)
/* 8046F848  4B F9 DB 8D */	bl _Matrix_to_Mtx_new
/* 8046F84C  90 77 00 04 */	stw r3, 4(r23)
/* 8046F850  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8046F854  38 E3 00 20 */	addi r7, r3, 0x0020 /* 0xDB060020@l */
/* 8046F858  3C 00 DE 00 */	lis r0, 0xde00
/* 8046F85C  81 3E 02 D0 */	lwz r9, 0x2d0(r30)
/* 8046F860  38 C3 00 24 */	addi r6, r3, 0x24
/* 8046F864  38 A3 00 28 */	addi r5, r3, 0x28
/* 8046F868  38 83 00 2C */	addi r4, r3, 0x2c
/* 8046F86C  39 09 00 08 */	addi r8, r9, 8
/* 8046F870  38 63 00 30 */	addi r3, r3, 0x30
/* 8046F874  91 1E 02 D0 */	stw r8, 0x2d0(r30)
/* 8046F878  90 E9 00 00 */	stw r7, 0(r9)
/* 8046F87C  93 89 00 04 */	stw r28, 4(r9)
/* 8046F880  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 8046F884  38 E8 00 08 */	addi r7, r8, 8
/* 8046F888  90 FE 02 D0 */	stw r7, 0x2d0(r30)
/* 8046F88C  90 C8 00 00 */	stw r6, 0(r8)
/* 8046F890  93 68 00 04 */	stw r27, 4(r8)
/* 8046F894  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 8046F898  38 C7 00 08 */	addi r6, r7, 8
/* 8046F89C  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 8046F8A0  90 A7 00 00 */	stw r5, 0(r7)
/* 8046F8A4  93 47 00 04 */	stw r26, 4(r7)
/* 8046F8A8  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 8046F8AC  38 A6 00 08 */	addi r5, r6, 8
/* 8046F8B0  90 BE 02 D0 */	stw r5, 0x2d0(r30)
/* 8046F8B4  90 86 00 00 */	stw r4, 0(r6)
/* 8046F8B8  93 26 00 04 */	stw r25, 4(r6)
/* 8046F8BC  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8046F8C0  38 85 00 08 */	addi r4, r5, 8
/* 8046F8C4  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 8046F8C8  90 65 00 00 */	stw r3, 0(r5)
/* 8046F8CC  93 A5 00 04 */	stw r29, 4(r5)
/* 8046F8D0  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 8046F8D4  38 64 00 08 */	addi r3, r4, 8
/* 8046F8D8  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8046F8DC  90 04 00 00 */	stw r0, 0(r4)
/* 8046F8E0  80 1F 00 00 */	lwz r0, 0(r31)
/* 8046F8E4  90 04 00 04 */	stw r0, 4(r4)
lbl_8046F8E8:
/* 8046F8E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8046F8EC  4B C2 B6 1D */	bl func_8009AF08
/* 8046F8F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046F8F4  7C 08 03 A6 */	mtlr r0
/* 8046F8F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8046F8FC  4E 80 00 20 */	blr 
