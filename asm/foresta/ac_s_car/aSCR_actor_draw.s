lbl_805B947C:
/* 805B947C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B9480  7C 08 02 A6 */	mflr r0
/* 805B9484  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B9488  39 61 00 30 */	addi r11, r1, 0x30
/* 805B948C  4B AE 1A 45 */	bl func_8009AED0
/* 805B9490  7C 9D 23 78 */	mr r29, r4
/* 805B9494  38 61 00 08 */	addi r3, r1, 8
/* 805B9498  83 E4 00 00 */	lwz r31, 0(r4)
/* 805B949C  4B FF FE CD */	bl func_805B9368
/* 805B94A0  7F E3 FB 78 */	mr r3, r31
/* 805B94A4  4B E2 BD 05 */	bl _texture_z_light_fog_prim_npc
/* 805B94A8  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA000080@ha */
/* 805B94AC  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805B94B0  38 03 00 80 */	addi r0, r3, 0x0080 /* 0xFA000080@l */
/* 805B94B4  90 1E 00 00 */	stw r0, 0(r30)
/* 805B94B8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B94BC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B94C0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805B94C4  7F E3 FB 78 */	mr r3, r31
/* 805B94C8  80 A1 00 08 */	lwz r5, 8(r1)
/* 805B94CC  54 84 82 1E */	rlwinm r4, r4, 0x10, 8, 0xf
/* 805B94D0  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 805B94D4  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 805B94D8  50 C4 44 2E */	rlwimi r4, r6, 8, 0x10, 0x17
/* 805B94DC  60 84 00 FF */	ori r4, r4, 0xff
/* 805B94E0  90 9E 00 04 */	stw r4, 4(r30)
/* 805B94E4  3B DE 00 08 */	addi r30, r30, 8
/* 805B94E8  7F DC F3 78 */	mr r28, r30
/* 805B94EC  90 1E 00 00 */	stw r0, 0(r30)
/* 805B94F0  3B DE 00 08 */	addi r30, r30, 8
/* 805B94F4  4B E5 3E E1 */	bl _Matrix_to_Mtx_new
/* 805B94F8  90 7C 00 04 */	stw r3, 4(r28)
/* 805B94FC  3C 00 DE 00 */	lis r0, 0xde00
/* 805B9500  3C 80 80 6C */	lis r4, aSCR_shadow_data@ha /* 0x806C6544@ha */
/* 805B9504  3C 60 80 BD */	lis r3, s_car_DL_model@ha /* 0x80BCAE30@ha */
/* 805B9508  90 1E 00 00 */	stw r0, 0(r30)
/* 805B950C  38 03 AE 30 */	addi r0, r3, s_car_DL_model@l /* 0x80BCAE30@l */
/* 805B9510  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B9514  38 84 65 44 */	addi r4, r4, aSCR_shadow_data@l /* 0x806C6544@l */
/* 805B9518  90 1E 00 04 */	stw r0, 4(r30)
/* 805B951C  3B DE 00 08 */	addi r30, r30, 8
/* 805B9520  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B9524  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805B9528  3C A3 00 02 */	addis r5, r3, 2
/* 805B952C  7F A3 EB 78 */	mr r3, r29
/* 805B9530  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805B9534  38 A0 00 00 */	li r5, 0
/* 805B9538  81 86 00 04 */	lwz r12, 4(r6)
/* 805B953C  7D 89 03 A6 */	mtctr r12
/* 805B9540  4E 80 04 21 */	bctrl 
/* 805B9544  39 61 00 30 */	addi r11, r1, 0x30
/* 805B9548  4B AE 19 D5 */	bl func_8009AF1C
/* 805B954C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B9550  7C 08 03 A6 */	mtlr r0
/* 805B9554  38 21 00 30 */	addi r1, r1, 0x30
/* 805B9558  4E 80 00 20 */	blr 
