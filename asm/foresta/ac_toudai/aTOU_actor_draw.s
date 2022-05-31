lbl_805BFA04:
/* 805BFA04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BFA08  7C 08 02 A6 */	mflr r0
/* 805BFA0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BFA10  39 61 00 30 */	addi r11, r1, 0x30
/* 805BFA14  4B AD B4 B1 */	bl func_8009AEC4
/* 805BFA18  7C 7A 1B 78 */	mr r26, r3
/* 805BFA1C  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805BFA20  83 C4 00 00 */	lwz r30, 0(r4)
/* 805BFA24  7C 9F 23 78 */	mr r31, r4
/* 805BFA28  88 63 00 01 */	lbz r3, 1(r3)
/* 805BFA2C  3B BA 01 78 */	addi r29, r26, 0x178
/* 805BFA30  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 805BFA34  3B 7A 00 28 */	addi r27, r26, 0x28
/* 805BFA38  54 63 30 32 */	slwi r3, r3, 6
/* 805BFA3C  7C 03 00 51 */	subf. r0, r3, r0
/* 805BFA40  90 1E 02 D4 */	stw r0, 0x2d4(r30)
/* 805BFA44  7C 1C 03 78 */	mr r28, r0
/* 805BFA48  41 82 00 E0 */	beq lbl_805BFB28
/* 805BFA4C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BFA50  38 60 00 5A */	li r3, 0x5a
/* 805BFA54  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BFA58  3C 84 00 02 */	addis r4, r4, 2
/* 805BFA5C  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805BFA60  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805BFA64  7D 89 03 A6 */	mtctr r12
/* 805BFA68  4E 80 04 21 */	bctrl 
/* 805BFA6C  7C 79 1B 78 */	mr r25, r3
/* 805BFA70  7F C3 F3 78 */	mr r3, r30
/* 805BFA74  4B E2 57 35 */	bl _texture_z_light_fog_prim_npc
/* 805BFA78  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 805BFA7C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805BFA80  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805BFA84  7F C3 F3 78 */	mr r3, r30
/* 805BFA88  7C 85 23 78 */	mr r5, r4
/* 805BFA8C  38 84 00 08 */	addi r4, r4, 8
/* 805BFA90  90 05 00 00 */	stw r0, 0(r5)
/* 805BFA94  93 25 00 04 */	stw r25, 4(r5)
/* 805BFA98  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805BFA9C  4B E2 56 BD */	bl _texture_z_light_fog_prim_xlu
/* 805BFAA0  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 805BFAA4  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805BFAA8  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805BFAAC  7F 63 DB 78 */	mr r3, r27
/* 805BFAB0  7C A6 2B 78 */	mr r6, r5
/* 805BFAB4  38 A5 00 08 */	addi r5, r5, 8
/* 805BFAB8  90 06 00 00 */	stw r0, 0(r6)
/* 805BFABC  7F E4 FB 78 */	mr r4, r31
/* 805BFAC0  93 26 00 04 */	stw r25, 4(r6)
/* 805BFAC4  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 805BFAC8  4B DB 64 B5 */	bl Setpos_HiliteReflect_init
/* 805BFACC  7F 63 DB 78 */	mr r3, r27
/* 805BFAD0  7F E4 FB 78 */	mr r4, r31
/* 805BFAD4  4B DB 65 45 */	bl Setpos_HiliteReflect_xlu_init
/* 805BFAD8  3C 60 80 5C */	lis r3, func_805BF844@ha /* 0x805BF844@ha */
/* 805BFADC  3C 80 80 5C */	lis r4, aTOU_actor_draw_after@ha /* 0x805BF85C@ha */
/* 805BFAE0  38 C3 F8 44 */	addi r6, r3, func_805BF844@l /* 0x805BF844@l */
/* 805BFAE4  7F 85 E3 78 */	mr r5, r28
/* 805BFAE8  38 E4 F8 5C */	addi r7, r4, aTOU_actor_draw_after@l /* 0x805BF85C@l */
/* 805BFAEC  7F E3 FB 78 */	mr r3, r31
/* 805BFAF0  7F A4 EB 78 */	mr r4, r29
/* 805BFAF4  7F 48 D3 78 */	mr r8, r26
/* 805BFAF8  4B DB 1C 41 */	bl cKF_Si3_draw_R_SV
/* 805BFAFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BFB00  3C C0 80 6C */	lis r6, aTOU_shadow_data@ha /* 0x806C7130@ha */
/* 805BFB04  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805BFB08  3C A4 00 02 */	addis r5, r4, 2
/* 805BFB0C  7F E3 FB 78 */	mr r3, r31
/* 805BFB10  38 86 71 30 */	addi r4, r6, aTOU_shadow_data@l /* 0x806C7130@l */
/* 805BFB14  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805BFB18  38 A0 00 01 */	li r5, 1
/* 805BFB1C  81 86 00 04 */	lwz r12, 4(r6)
/* 805BFB20  7D 89 03 A6 */	mtctr r12
/* 805BFB24  4E 80 04 21 */	bctrl 
lbl_805BFB28:
/* 805BFB28  39 61 00 30 */	addi r11, r1, 0x30
/* 805BFB2C  4B AD B3 E5 */	bl func_8009AF10
/* 805BFB30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BFB34  7C 08 03 A6 */	mtlr r0
/* 805BFB38  38 21 00 30 */	addi r1, r1, 0x30
/* 805BFB3C  4E 80 00 20 */	blr 
