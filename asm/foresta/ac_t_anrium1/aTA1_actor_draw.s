lbl_804A7718:
/* 804A7718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A771C  7C 08 02 A6 */	mflr r0
/* 804A7720  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A7724  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7728  4B BF 37 AD */	bl func_8009AED4
/* 804A772C  7C 7D 1B 78 */	mr r29, r3
/* 804A7730  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A7734  2C 00 00 01 */	cmpwi r0, 1
/* 804A7738  40 82 00 6C */	bne lbl_804A77A4
/* 804A773C  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A7740  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A7744  4B F6 4B 15 */	bl Matrix_put
/* 804A7748  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A774C  4B F6 5D 71 */	bl Matrix_Position_Zero
/* 804A7750  38 00 00 00 */	li r0, 0
/* 804A7754  7F E3 FB 78 */	mr r3, r31
/* 804A7758  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A775C  4B F3 DA 4D */	bl _texture_z_light_fog_prim_npc
/* 804A7760  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A7764  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A7768  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A776C  7F E3 FB 78 */	mr r3, r31
/* 804A7770  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7774  7F DD F3 78 */	mr r29, r30
/* 804A7778  3B DE 00 08 */	addi r30, r30, 8
/* 804A777C  4B F6 5C 59 */	bl _Matrix_to_Mtx_new
/* 804A7780  90 7D 00 04 */	stw r3, 4(r29)
/* 804A7784  7F C4 F3 78 */	mr r4, r30
/* 804A7788  3C 00 DE 00 */	lis r0, 0xde00
/* 804A778C  3C 60 80 C1 */	lis r3, crw_anrium1_body_model@ha /* 0x80C0CF20@ha */
/* 804A7790  90 1E 00 00 */	stw r0, 0(r30)
/* 804A7794  38 03 CF 20 */	addi r0, r3, crw_anrium1_body_model@l /* 0x80C0CF20@l */
/* 804A7798  3B DE 00 08 */	addi r30, r30, 8
/* 804A779C  90 04 00 04 */	stw r0, 4(r4)
/* 804A77A0  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A77A4:
/* 804A77A4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A77A8  4B BF 37 79 */	bl func_8009AF20
/* 804A77AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A77B0  7C 08 03 A6 */	mtlr r0
/* 804A77B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804A77B8  4E 80 00 20 */	blr 
