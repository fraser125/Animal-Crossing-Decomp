lbl_8046F5F8:
/* 8046F5F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046F5FC  7C 08 02 A6 */	mflr r0
/* 8046F600  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046F604  39 61 00 30 */	addi r11, r1, 0x30
/* 8046F608  4B C2 B8 B1 */	bl func_8009AEB8
/* 8046F60C  A8 C3 01 80 */	lha r6, 0x180(r3)
/* 8046F610  3C A0 80 68 */	lis r5, data_80686FF0@ha /* 0x80686FF0@ha */
/* 8046F614  A8 03 01 D4 */	lha r0, 0x1d4(r3)
/* 8046F618  7C 97 23 78 */	mr r23, r4
/* 8046F61C  1C 86 00 18 */	mulli r4, r6, 0x18
/* 8046F620  3B E5 6F F0 */	addi r31, r5, data_80686FF0@l /* 0x80686FF0@l */
/* 8046F624  38 84 01 90 */	addi r4, r4, 0x190
/* 8046F628  7F 83 20 2E */	lwzx r28, r3, r4
/* 8046F62C  1F C0 00 1C */	mulli r30, r0, 0x1c
/* 8046F630  7E E3 BB 78 */	mr r3, r23
/* 8046F634  3B 7C 00 20 */	addi r27, r28, 0x20
/* 8046F638  3B 5C 08 20 */	addi r26, r28, 0x820
/* 8046F63C  3B 3C 10 20 */	addi r25, r28, 0x1020
/* 8046F640  3B 1C 18 20 */	addi r24, r28, 0x1820
/* 8046F644  4B F4 90 D5 */	bl Global_kankyo_set_room_prim
/* 8046F648  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8046F64C  28 00 00 00 */	cmplwi r0, 0
/* 8046F650  41 82 00 FC */	beq lbl_8046F74C
/* 8046F654  83 B7 00 00 */	lwz r29, 0(r23)
/* 8046F658  7F A3 EB 78 */	mr r3, r29
/* 8046F65C  4B F7 5A AD */	bl _texture_z_light_fog_prim
/* 8046F660  3C 80 80 64 */	lis r4, lit_671@ha /* 0x806449A0@ha */
/* 8046F664  38 60 00 00 */	li r3, 0
/* 8046F668  C0 24 49 A0 */	lfs f1, lit_671@l(r4)  /* 0x806449A0@l */
/* 8046F66C  FC 40 08 90 */	fmr f2, f1
/* 8046F670  FC 60 08 90 */	fmr f3, f1
/* 8046F674  4B F9 CC 8D */	bl Matrix_translate
/* 8046F678  3C 80 80 64 */	lis r4, lit_672@ha /* 0x806449A4@ha */
/* 8046F67C  38 60 00 01 */	li r3, 1
/* 8046F680  C0 24 49 A4 */	lfs f1, lit_672@l(r4)  /* 0x806449A4@l */
/* 8046F684  FC 40 08 90 */	fmr f2, f1
/* 8046F688  FC 60 08 90 */	fmr f3, f1
/* 8046F68C  4B F9 CD 61 */	bl Matrix_scale
/* 8046F690  82 DD 02 D0 */	lwz r22, 0x2d0(r29)
/* 8046F694  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8046F698  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8046F69C  38 76 00 08 */	addi r3, r22, 8
/* 8046F6A0  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8046F6A4  90 16 00 00 */	stw r0, 0(r22)
/* 8046F6A8  80 77 00 00 */	lwz r3, 0(r23)
/* 8046F6AC  4B F9 DD 29 */	bl _Matrix_to_Mtx_new
/* 8046F6B0  90 76 00 04 */	stw r3, 4(r22)
/* 8046F6B4  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8046F6B8  38 E3 00 20 */	addi r7, r3, 0x0020 /* 0xDB060020@l */
/* 8046F6BC  3C 00 DE 00 */	lis r0, 0xde00
/* 8046F6C0  81 3D 02 D0 */	lwz r9, 0x2d0(r29)
/* 8046F6C4  38 C3 00 24 */	addi r6, r3, 0x24
/* 8046F6C8  38 A3 00 28 */	addi r5, r3, 0x28
/* 8046F6CC  38 83 00 2C */	addi r4, r3, 0x2c
/* 8046F6D0  39 09 00 08 */	addi r8, r9, 8
/* 8046F6D4  38 63 00 30 */	addi r3, r3, 0x30
/* 8046F6D8  91 1D 02 D0 */	stw r8, 0x2d0(r29)
/* 8046F6DC  90 E9 00 00 */	stw r7, 0(r9)
/* 8046F6E0  93 69 00 04 */	stw r27, 4(r9)
/* 8046F6E4  81 1D 02 D0 */	lwz r8, 0x2d0(r29)
/* 8046F6E8  38 E8 00 08 */	addi r7, r8, 8
/* 8046F6EC  90 FD 02 D0 */	stw r7, 0x2d0(r29)
/* 8046F6F0  90 C8 00 00 */	stw r6, 0(r8)
/* 8046F6F4  93 48 00 04 */	stw r26, 4(r8)
/* 8046F6F8  80 FD 02 D0 */	lwz r7, 0x2d0(r29)
/* 8046F6FC  38 C7 00 08 */	addi r6, r7, 8
/* 8046F700  90 DD 02 D0 */	stw r6, 0x2d0(r29)
/* 8046F704  90 A7 00 00 */	stw r5, 0(r7)
/* 8046F708  93 27 00 04 */	stw r25, 4(r7)
/* 8046F70C  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 8046F710  38 A6 00 08 */	addi r5, r6, 8
/* 8046F714  90 BD 02 D0 */	stw r5, 0x2d0(r29)
/* 8046F718  90 86 00 00 */	stw r4, 0(r6)
/* 8046F71C  93 06 00 04 */	stw r24, 4(r6)
/* 8046F720  80 BD 02 D0 */	lwz r5, 0x2d0(r29)
/* 8046F724  38 85 00 08 */	addi r4, r5, 8
/* 8046F728  90 9D 02 D0 */	stw r4, 0x2d0(r29)
/* 8046F72C  90 65 00 00 */	stw r3, 0(r5)
/* 8046F730  93 85 00 04 */	stw r28, 4(r5)
/* 8046F734  80 9D 02 D0 */	lwz r4, 0x2d0(r29)
/* 8046F738  38 64 00 08 */	addi r3, r4, 8
/* 8046F73C  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8046F740  90 04 00 00 */	stw r0, 0(r4)
/* 8046F744  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8046F748  90 04 00 04 */	stw r0, 4(r4)
lbl_8046F74C:
/* 8046F74C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046F750  4B C2 B7 B5 */	bl func_8009AF04
/* 8046F754  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046F758  7C 08 03 A6 */	mtlr r0
/* 8046F75C  38 21 00 30 */	addi r1, r1, 0x30
/* 8046F760  4E 80 00 20 */	blr 
