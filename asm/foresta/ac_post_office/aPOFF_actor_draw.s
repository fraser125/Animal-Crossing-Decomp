lbl_805B8684:
/* 805B8684  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B8688  7C 08 02 A6 */	mflr r0
/* 805B868C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B8690  39 61 00 20 */	addi r11, r1, 0x20
/* 805B8694  4B AE 28 35 */	bl func_8009AEC8
/* 805B8698  7C 7C 1B 78 */	mr r28, r3
/* 805B869C  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805B86A0  83 E4 00 00 */	lwz r31, 0(r4)
/* 805B86A4  7C 9D 23 78 */	mr r29, r4
/* 805B86A8  88 63 00 01 */	lbz r3, 1(r3)
/* 805B86AC  3B DC 01 78 */	addi r30, r28, 0x178
/* 805B86B0  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805B86B4  54 63 30 32 */	slwi r3, r3, 6
/* 805B86B8  7C 03 00 51 */	subf. r0, r3, r0
/* 805B86BC  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805B86C0  7C 1A 03 78 */	mr r26, r0
/* 805B86C4  41 82 00 B8 */	beq lbl_805B877C
/* 805B86C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B86CC  38 60 00 29 */	li r3, 0x29
/* 805B86D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B86D4  3C 84 00 02 */	addis r4, r4, 2
/* 805B86D8  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B86DC  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B86E0  7D 89 03 A6 */	mtctr r12
/* 805B86E4  4E 80 04 21 */	bctrl 
/* 805B86E8  7C 7B 1B 78 */	mr r27, r3
/* 805B86EC  7F E3 FB 78 */	mr r3, r31
/* 805B86F0  4B E2 CA 19 */	bl _texture_z_light_fog_prim
/* 805B86F4  7F 83 E3 78 */	mr r3, r28
/* 805B86F8  7F A4 EB 78 */	mr r4, r29
/* 805B86FC  4B FF FF 19 */	bl aPOFF_actor_draw_ta_set
/* 805B8700  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805B8704  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805B8708  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805B870C  3C 80 80 5C */	lis r4, func_805B83C8@ha /* 0x805B83C8@ha */
/* 805B8710  90 08 00 00 */	stw r0, 0(r8)
/* 805B8714  7D 09 43 78 */	mr r9, r8
/* 805B8718  3C 60 80 5C */	lis r3, aPOFF_actor_draw_after@ha /* 0x805B84C0@ha */
/* 805B871C  38 C4 83 C8 */	addi r6, r4, func_805B83C8@l /* 0x805B83C8@l */
/* 805B8720  93 69 00 04 */	stw r27, 4(r9)
/* 805B8724  39 08 00 08 */	addi r8, r8, 8
/* 805B8728  38 E3 84 C0 */	addi r7, r3, aPOFF_actor_draw_after@l /* 0x805B84C0@l */
/* 805B872C  7F A3 EB 78 */	mr r3, r29
/* 805B8730  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805B8734  7F C4 F3 78 */	mr r4, r30
/* 805B8738  7F 45 D3 78 */	mr r5, r26
/* 805B873C  7F 88 E3 78 */	mr r8, r28
/* 805B8740  4B DB 8F F9 */	bl cKF_Si3_draw_R_SV
/* 805B8744  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B8748  3C C0 80 6C */	lis r6, aPOFF_shadow_data@ha /* 0x806C62F4@ha */
/* 805B874C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805B8750  3C A4 00 02 */	addis r5, r4, 2
/* 805B8754  7F A3 EB 78 */	mr r3, r29
/* 805B8758  38 86 62 F4 */	addi r4, r6, aPOFF_shadow_data@l /* 0x806C62F4@l */
/* 805B875C  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805B8760  38 A0 00 00 */	li r5, 0
/* 805B8764  81 86 00 04 */	lwz r12, 4(r6)
/* 805B8768  7D 89 03 A6 */	mtctr r12
/* 805B876C  4E 80 04 21 */	bctrl 
/* 805B8770  7F 83 E3 78 */	mr r3, r28
/* 805B8774  7F A4 EB 78 */	mr r4, r29
/* 805B8778  4B FF FE D5 */	bl aPOFF_actor_draw_ta_clr
lbl_805B877C:
/* 805B877C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B8780  4B AE 27 95 */	bl func_8009AF14
/* 805B8784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B8788  7C 08 03 A6 */	mtlr r0
/* 805B878C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B8790  4E 80 00 20 */	blr 
