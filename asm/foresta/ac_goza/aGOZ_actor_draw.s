lbl_805AF718:
/* 805AF718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AF71C  7C 08 02 A6 */	mflr r0
/* 805AF720  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AF724  39 61 00 20 */	addi r11, r1, 0x20
/* 805AF728  4B AE B7 A5 */	bl func_8009AECC
/* 805AF72C  7C 9F 23 78 */	mr r31, r4
/* 805AF730  80 03 02 BC */	lwz r0, 0x2bc(r3)
/* 805AF734  83 A4 00 00 */	lwz r29, 0(r4)
/* 805AF738  3C 60 80 6C */	lis r3, data_806C5100@ha /* 0x806C5100@ha */
/* 805AF73C  3B C3 51 00 */	addi r30, r3, data_806C5100@l /* 0x806C5100@l */
/* 805AF740  54 1C 07 FE */	clrlwi r28, r0, 0x1f
/* 805AF744  7F A3 EB 78 */	mr r3, r29
/* 805AF748  4B E5 DC 8D */	bl _Matrix_to_Mtx_new
/* 805AF74C  7F A3 EB 78 */	mr r3, r29
/* 805AF750  4B E3 59 E1 */	bl _texture_z_light_fog_prim_shadow
/* 805AF754  7F A3 EB 78 */	mr r3, r29
/* 805AF758  4B E3 5A 01 */	bl _texture_z_light_fog_prim_xlu
/* 805AF75C  7F A3 EB 78 */	mr r3, r29
/* 805AF760  4B E3 5A 49 */	bl _texture_z_light_fog_prim_npc
/* 805AF764  83 7D 02 D0 */	lwz r27, 0x2d0(r29)
/* 805AF768  7F A3 EB 78 */	mr r3, r29
/* 805AF76C  4B E5 DC 69 */	bl _Matrix_to_Mtx_new
/* 805AF770  28 03 00 00 */	cmplwi r3, 0
/* 805AF774  41 82 00 30 */	beq lbl_805AF7A4
/* 805AF778  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805AF77C  3C A0 DE 00 */	lis r5, 0xde00
/* 805AF780  38 84 00 03 */	addi r4, r4, 0x0003 /* 0xDA380003@l */
/* 805AF784  57 80 10 3A */	slwi r0, r28, 2
/* 805AF788  90 9B 00 00 */	stw r4, 0(r27)
/* 805AF78C  38 9E 01 2C */	addi r4, r30, 0x12c
/* 805AF790  90 7B 00 04 */	stw r3, 4(r27)
/* 805AF794  90 BB 00 08 */	stw r5, 8(r27)
/* 805AF798  7C 04 00 2E */	lwzx r0, r4, r0
/* 805AF79C  90 1B 00 0C */	stw r0, 0xc(r27)
/* 805AF7A0  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_805AF7A4:
/* 805AF7A4  93 7D 02 D0 */	stw r27, 0x2d0(r29)
/* 805AF7A8  7F A3 EB 78 */	mr r3, r29
/* 805AF7AC  83 7D 02 E0 */	lwz r27, 0x2e0(r29)
/* 805AF7B0  4B E5 DC 25 */	bl _Matrix_to_Mtx_new
/* 805AF7B4  28 03 00 00 */	cmplwi r3, 0
/* 805AF7B8  41 82 00 30 */	beq lbl_805AF7E8
/* 805AF7BC  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805AF7C0  3C A0 DE 00 */	lis r5, 0xde00
/* 805AF7C4  38 84 00 03 */	addi r4, r4, 0x0003 /* 0xDA380003@l */
/* 805AF7C8  57 80 10 3A */	slwi r0, r28, 2
/* 805AF7CC  90 9B 00 00 */	stw r4, 0(r27)
/* 805AF7D0  38 9E 01 34 */	addi r4, r30, 0x134
/* 805AF7D4  90 7B 00 04 */	stw r3, 4(r27)
/* 805AF7D8  90 BB 00 08 */	stw r5, 8(r27)
/* 805AF7DC  7C 04 00 2E */	lwzx r0, r4, r0
/* 805AF7E0  90 1B 00 0C */	stw r0, 0xc(r27)
/* 805AF7E4  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_805AF7E8:
/* 805AF7E8  28 03 00 00 */	cmplwi r3, 0
/* 805AF7EC  93 7D 02 E0 */	stw r27, 0x2e0(r29)
/* 805AF7F0  41 82 00 34 */	beq lbl_805AF824
/* 805AF7F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AF7F8  57 80 17 7A */	rlwinm r0, r28, 2, 0x1d, 0x1d
/* 805AF7FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805AF800  38 FE 00 84 */	addi r7, r30, 0x84
/* 805AF804  3C 83 00 02 */	addis r4, r3, 2
/* 805AF808  7F E3 FB 78 */	mr r3, r31
/* 805AF80C  80 C4 60 80 */	lwz r6, 0x6080(r4)
/* 805AF810  38 A0 00 00 */	li r5, 0
/* 805AF814  7C 87 00 2E */	lwzx r4, r7, r0
/* 805AF818  81 86 00 04 */	lwz r12, 4(r6)
/* 805AF81C  7D 89 03 A6 */	mtctr r12
/* 805AF820  4E 80 04 21 */	bctrl 
lbl_805AF824:
/* 805AF824  39 61 00 20 */	addi r11, r1, 0x20
/* 805AF828  4B AE B6 F1 */	bl func_8009AF18
/* 805AF82C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AF830  7C 08 03 A6 */	mtlr r0
/* 805AF834  38 21 00 20 */	addi r1, r1, 0x20
/* 805AF838  4E 80 00 20 */	blr 
