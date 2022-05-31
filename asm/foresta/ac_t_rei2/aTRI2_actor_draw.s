lbl_804A9974:
/* 804A9974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A9978  7C 08 02 A6 */	mflr r0
/* 804A997C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A9980  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9984  4B BF 15 51 */	bl func_8009AED4
/* 804A9988  7C 7D 1B 78 */	mr r29, r3
/* 804A998C  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A9990  2C 00 00 01 */	cmpwi r0, 1
/* 804A9994  40 82 00 6C */	bne lbl_804A9A00
/* 804A9998  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A999C  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A99A0  4B F6 28 B9 */	bl Matrix_put
/* 804A99A4  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A99A8  4B F6 3B 15 */	bl Matrix_Position_Zero
/* 804A99AC  38 00 00 00 */	li r0, 0
/* 804A99B0  7F E3 FB 78 */	mr r3, r31
/* 804A99B4  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A99B8  4B F3 B7 F1 */	bl _texture_z_light_fog_prim_npc
/* 804A99BC  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A99C0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A99C4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A99C8  7F E3 FB 78 */	mr r3, r31
/* 804A99CC  90 1E 00 00 */	stw r0, 0(r30)
/* 804A99D0  7F DD F3 78 */	mr r29, r30
/* 804A99D4  3B DE 00 08 */	addi r30, r30, 8
/* 804A99D8  4B F6 39 FD */	bl _Matrix_to_Mtx_new
/* 804A99DC  90 7D 00 04 */	stw r3, 4(r29)
/* 804A99E0  7F C4 F3 78 */	mr r4, r30
/* 804A99E4  3C 00 DE 00 */	lis r0, 0xde00
/* 804A99E8  3C 60 80 C1 */	lis r3, crw_rei2_body_model@ha /* 0x80C16B60@ha */
/* 804A99EC  90 1E 00 00 */	stw r0, 0(r30)
/* 804A99F0  38 03 6B 60 */	addi r0, r3, crw_rei2_body_model@l /* 0x80C16B60@l */
/* 804A99F4  3B DE 00 08 */	addi r30, r30, 8
/* 804A99F8  90 04 00 04 */	stw r0, 4(r4)
/* 804A99FC  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A9A00:
/* 804A9A00  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9A04  4B BF 15 1D */	bl func_8009AF20
/* 804A9A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A9A0C  7C 08 03 A6 */	mtlr r0
/* 804A9A10  38 21 00 20 */	addi r1, r1, 0x20
/* 804A9A14  4E 80 00 20 */	blr 
