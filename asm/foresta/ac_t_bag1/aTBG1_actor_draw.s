lbl_804A786C:
/* 804A786C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A7870  7C 08 02 A6 */	mflr r0
/* 804A7874  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A7878  39 61 00 20 */	addi r11, r1, 0x20
/* 804A787C  4B BF 36 59 */	bl func_8009AED4
/* 804A7880  7C 7D 1B 78 */	mr r29, r3
/* 804A7884  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A7888  2C 00 00 01 */	cmpwi r0, 1
/* 804A788C  40 82 00 6C */	bne lbl_804A78F8
/* 804A7890  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A7894  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A7898  4B F6 49 C1 */	bl Matrix_put
/* 804A789C  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A78A0  4B F6 5C 1D */	bl Matrix_Position_Zero
/* 804A78A4  38 00 00 00 */	li r0, 0
/* 804A78A8  7F E3 FB 78 */	mr r3, r31
/* 804A78AC  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A78B0  4B F3 D8 F9 */	bl _texture_z_light_fog_prim_npc
/* 804A78B4  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A78B8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A78BC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A78C0  7F E3 FB 78 */	mr r3, r31
/* 804A78C4  90 1E 00 00 */	stw r0, 0(r30)
/* 804A78C8  7F DD F3 78 */	mr r29, r30
/* 804A78CC  3B DE 00 08 */	addi r30, r30, 8
/* 804A78D0  4B F6 5B 05 */	bl _Matrix_to_Mtx_new
/* 804A78D4  90 7D 00 04 */	stw r3, 4(r29)
/* 804A78D8  7F C4 F3 78 */	mr r4, r30
/* 804A78DC  3C 00 DE 00 */	lis r0, 0xde00
/* 804A78E0  3C 60 80 C1 */	lis r3, crw_bag1_body_model@ha /* 0x80C0D790@ha */
/* 804A78E4  90 1E 00 00 */	stw r0, 0(r30)
/* 804A78E8  38 03 D7 90 */	addi r0, r3, crw_bag1_body_model@l /* 0x80C0D790@l */
/* 804A78EC  3B DE 00 08 */	addi r30, r30, 8
/* 804A78F0  90 04 00 04 */	stw r0, 4(r4)
/* 804A78F4  93 DF 02 D0 */	stw r30, 0x2d0(r31)
lbl_804A78F8:
/* 804A78F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804A78FC  4B BF 36 25 */	bl func_8009AF20
/* 804A7900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A7904  7C 08 03 A6 */	mtlr r0
/* 804A7908  38 21 00 20 */	addi r1, r1, 0x20
/* 804A790C  4E 80 00 20 */	blr 
