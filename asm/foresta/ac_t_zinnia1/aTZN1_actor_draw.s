lbl_804AA6F4:
/* 804AA6F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AA6F8  7C 08 02 A6 */	mflr r0
/* 804AA6FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AA700  39 61 00 20 */	addi r11, r1, 0x20
/* 804AA704  4B BF 07 D1 */	bl func_8009AED4
/* 804AA708  7C 7D 1B 78 */	mr r29, r3
/* 804AA70C  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804AA710  2C 00 00 01 */	cmpwi r0, 1
/* 804AA714  40 82 00 6C */	bne lbl_804AA780
/* 804AA718  83 E4 00 00 */	lwz r31, 0(r4)
/* 804AA71C  38 7D 01 78 */	addi r3, r29, 0x178
/* 804AA720  4B F6 1B 39 */	bl Matrix_put
/* 804AA724  38 7D 00 28 */	addi r3, r29, 0x28
/* 804AA728  4B F6 2D 95 */	bl Matrix_Position_Zero
/* 804AA72C  38 00 00 00 */	li r0, 0
/* 804AA730  7F E3 FB 78 */	mr r3, r31
/* 804AA734  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804AA738  4B F3 AA 71 */	bl _texture_z_light_fog_prim_npc
/* 804AA73C  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804AA740  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804AA744  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804AA748  7F E3 FB 78 */	mr r3, r31
/* 804AA74C  90 1E 00 00 */	stw r0, 0(r30)
/* 804AA750  7F DD F3 78 */	mr r29, r30
/* 804AA754  3B DE 00 08 */	addi r30, r30, 8
/* 804AA758  4B F6 2C 7D */	bl _Matrix_to_Mtx_new
/* 804AA75C  90 7D 00 04 */	stw r3, 4(r29)
/* 804AA760  7F C4 F3 78 */	mr r4, r30
/* 804AA764  3C 00 DE 00 */	lis r0, 0xde00
/* 804AA768  3C 60 80 C3 */	lis r3, crw_zinnia1_body_model@ha /* 0x80C2BD60@ha */
/* 804AA76C  90 1E 00 00 */	stw r0, 0(r30)
/* 804AA770  38 03 BD 60 */	addi r0, r3, crw_zinnia1_body_model@l /* 0x80C2BD60@l */
/* 804AA774  3B DE 00 08 */	addi r30, r30, 8
/* 804AA778  90 04 00 04 */	stw r0, 4(r4)
/* 804AA77C  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804AA780:
/* 804AA780  39 61 00 20 */	addi r11, r1, 0x20
/* 804AA784  4B BF 07 9D */	bl func_8009AF20
/* 804AA788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AA78C  7C 08 03 A6 */	mtlr r0
/* 804AA790  38 21 00 20 */	addi r1, r1, 0x20
/* 804AA794  4E 80 00 20 */	blr 
