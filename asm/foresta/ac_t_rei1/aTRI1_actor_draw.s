lbl_804A9820:
/* 804A9820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A9824  7C 08 02 A6 */	mflr r0
/* 804A9828  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A982C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9830  4B BF 16 A5 */	bl func_8009AED4
/* 804A9834  7C 7D 1B 78 */	mr r29, r3
/* 804A9838  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A983C  2C 00 00 01 */	cmpwi r0, 1
/* 804A9840  40 82 00 6C */	bne lbl_804A98AC
/* 804A9844  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A9848  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A984C  4B F6 2A 0D */	bl Matrix_put
/* 804A9850  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A9854  4B F6 3C 69 */	bl Matrix_Position_Zero
/* 804A9858  38 00 00 00 */	li r0, 0
/* 804A985C  7F E3 FB 78 */	mr r3, r31
/* 804A9860  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A9864  4B F3 B9 45 */	bl _texture_z_light_fog_prim_npc
/* 804A9868  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A986C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A9870  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A9874  7F E3 FB 78 */	mr r3, r31
/* 804A9878  90 1E 00 00 */	stw r0, 0(r30)
/* 804A987C  7F DD F3 78 */	mr r29, r30
/* 804A9880  3B DE 00 08 */	addi r30, r30, 8
/* 804A9884  4B F6 3B 51 */	bl _Matrix_to_Mtx_new
/* 804A9888  90 7D 00 04 */	stw r3, 4(r29)
/* 804A988C  7F C4 F3 78 */	mr r4, r30
/* 804A9890  3C 00 DE 00 */	lis r0, 0xde00
/* 804A9894  3C 60 80 C1 */	lis r3, crw_rei1_body_model@ha /* 0x80C15980@ha */
/* 804A9898  90 1E 00 00 */	stw r0, 0(r30)
/* 804A989C  38 03 59 80 */	addi r0, r3, crw_rei1_body_model@l /* 0x80C15980@l */
/* 804A98A0  3B DE 00 08 */	addi r30, r30, 8
/* 804A98A4  90 04 00 04 */	stw r0, 4(r4)
/* 804A98A8  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A98AC:
/* 804A98AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804A98B0  4B BF 16 71 */	bl func_8009AF20
/* 804A98B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A98B8  7C 08 03 A6 */	mtlr r0
/* 804A98BC  38 21 00 20 */	addi r1, r1, 0x20
/* 804A98C0  4E 80 00 20 */	blr 
