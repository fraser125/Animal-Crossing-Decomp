lbl_805C03F8:
/* 805C03F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C03FC  7C 08 02 A6 */	mflr r0
/* 805C0400  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C0404  39 61 00 30 */	addi r11, r1, 0x30
/* 805C0408  4B AD AA BD */	bl func_8009AEC4
/* 805C040C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805C0410  7C 7B 1B 78 */	mr r27, r3
/* 805C0414  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805C0418  7C 9C 23 78 */	mr r28, r4
/* 805C041C  3C 83 00 02 */	addis r4, r3, 2
/* 805C0420  38 60 00 39 */	li r3, 0x39
/* 805C0424  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805C0428  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805C042C  7D 89 03 A6 */	mtctr r12
/* 805C0430  4E 80 04 21 */	bctrl 
/* 805C0434  80 9B 01 90 */	lwz r4, 0x190(r27)
/* 805C0438  7C 7F 1B 78 */	mr r31, r3
/* 805C043C  83 DC 00 00 */	lwz r30, 0(r28)
/* 805C0440  3B BB 01 78 */	addi r29, r27, 0x178
/* 805C0444  88 64 00 01 */	lbz r3, 1(r4)
/* 805C0448  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 805C044C  54 63 30 32 */	slwi r3, r3, 6
/* 805C0450  7C 03 00 51 */	subf. r0, r3, r0
/* 805C0454  90 1E 02 D4 */	stw r0, 0x2d4(r30)
/* 805C0458  7C 1A 03 78 */	mr r26, r0
/* 805C045C  41 82 00 B8 */	beq lbl_805C0514
/* 805C0460  7F C3 F3 78 */	mr r3, r30
/* 805C0464  4B E2 4D 45 */	bl _texture_z_light_fog_prim_npc
/* 805C0468  4B E4 BD 6D */	bl Matrix_push
/* 805C046C  C0 3B 02 C8 */	lfs f1, 0x2c8(r27)
/* 805C0470  38 60 00 00 */	li r3, 0
/* 805C0474  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 805C0478  C0 7B 00 30 */	lfs f3, 0x30(r27)
/* 805C047C  4B E4 BE 85 */	bl Matrix_translate
/* 805C0480  C0 3B 00 5C */	lfs f1, 0x5c(r27)
/* 805C0484  38 60 00 01 */	li r3, 1
/* 805C0488  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 805C048C  C0 7B 00 64 */	lfs f3, 0x64(r27)
/* 805C0490  4B E4 BF 5D */	bl Matrix_scale
/* 805C0494  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C0498  83 3E 02 D0 */	lwz r25, 0x2d0(r30)
/* 805C049C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C04A0  7F C3 F3 78 */	mr r3, r30
/* 805C04A4  90 19 00 00 */	stw r0, 0(r25)
/* 805C04A8  4B E4 CF 2D */	bl _Matrix_to_Mtx_new
/* 805C04AC  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805C04B0  90 79 00 04 */	stw r3, 4(r25)
/* 805C04B4  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 805C04B8  3C 80 F0 8F */	lis r4, 0xF08F /* 0xF08F4010@ha */
/* 805C04BC  90 19 00 08 */	stw r0, 8(r25)
/* 805C04C0  3C 60 80 C0 */	lis r3, obj_train1_2_model@ha /* 0x80BFD5F0@ha */
/* 805C04C4  38 A4 40 10 */	addi r5, r4, 0x4010 /* 0xF08F4010@l */
/* 805C04C8  3C 80 DE 00 */	lis r4, 0xde00
/* 805C04CC  93 F9 00 0C */	stw r31, 0xc(r25)
/* 805C04D0  38 03 D5 F0 */	addi r0, r3, obj_train1_2_model@l /* 0x80BFD5F0@l */
/* 805C04D4  90 B9 00 10 */	stw r5, 0x10(r25)
/* 805C04D8  93 F9 00 14 */	stw r31, 0x14(r25)
/* 805C04DC  3B 39 00 18 */	addi r25, r25, 0x18
/* 805C04E0  7F 23 CB 78 */	mr r3, r25
/* 805C04E4  90 99 00 00 */	stw r4, 0(r25)
/* 805C04E8  3B 39 00 08 */	addi r25, r25, 8
/* 805C04EC  90 03 00 04 */	stw r0, 4(r3)
/* 805C04F0  93 3E 02 D0 */	stw r25, 0x2d0(r30)
/* 805C04F4  4B E4 BD 21 */	bl Matrix_pull
/* 805C04F8  7F 83 E3 78 */	mr r3, r28
/* 805C04FC  7F A4 EB 78 */	mr r4, r29
/* 805C0500  7F 45 D3 78 */	mr r5, r26
/* 805C0504  7F 68 DB 78 */	mr r8, r27
/* 805C0508  38 C0 00 00 */	li r6, 0
/* 805C050C  38 E0 00 00 */	li r7, 0
/* 805C0510  4B DB 12 29 */	bl cKF_Si3_draw_R_SV
lbl_805C0514:
/* 805C0514  39 61 00 30 */	addi r11, r1, 0x30
/* 805C0518  4B AD A9 F9 */	bl func_8009AF10
/* 805C051C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C0520  7C 08 03 A6 */	mtlr r0
/* 805C0524  38 21 00 30 */	addi r1, r1, 0x30
/* 805C0528  4E 80 00 20 */	blr 
