lbl_804968D4:
/* 804968D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804968D8  7C 08 02 A6 */	mflr r0
/* 804968DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804968E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804968E4  4B C0 45 F1 */	bl func_8009AED4
/* 804968E8  83 E4 00 00 */	lwz r31, 0(r4)
/* 804968EC  7F E3 FB 78 */	mr r3, r31
/* 804968F0  4B F4 E8 B9 */	bl _texture_z_light_fog_prim_npc
/* 804968F4  80 7F 02 D4 */	lwz r3, 0x2d4(r31)
/* 804968F8  34 63 FC 40 */	addic. r3, r3, -960
/* 804968FC  90 7F 02 D4 */	stw r3, 0x2d4(r31)
/* 80496900  7C 7E 1B 78 */	mr r30, r3
/* 80496904  41 82 00 0C */	beq lbl_80496910
/* 80496908  4B FF FF 15 */	bl aRP_make_vtx
/* 8049690C  48 00 00 10 */	b lbl_8049691C
lbl_80496910:
/* 80496910  3C 60 80 9D */	lis r3, tol_rope_1_v@ha /* 0x809C8320@ha */
/* 80496914  38 03 83 20 */	addi r0, r3, tol_rope_1_v@l /* 0x809C8320@l */
/* 80496918  7C 1E 03 78 */	mr r30, r0
lbl_8049691C:
/* 8049691C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80496920  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 80496924  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80496928  7F E3 FB 78 */	mr r3, r31
/* 8049692C  90 1D 00 00 */	stw r0, 0(r29)
/* 80496930  4B F7 6A A5 */	bl _Matrix_to_Mtx_new
/* 80496934  90 7D 00 04 */	stw r3, 4(r29)
/* 80496938  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8049693C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 80496940  3C 60 80 9D */	lis r3, tol_rope_1T_model@ha /* 0x809C86E0@ha */
/* 80496944  90 1D 00 08 */	stw r0, 8(r29)
/* 80496948  3C 80 DE 00 */	lis r4, 0xde00
/* 8049694C  38 03 86 E0 */	addi r0, r3, tol_rope_1T_model@l /* 0x809C86E0@l */
/* 80496950  7F E3 FB 78 */	mr r3, r31
/* 80496954  93 DD 00 0C */	stw r30, 0xc(r29)
/* 80496958  3B BD 00 10 */	addi r29, r29, 0x10
/* 8049695C  7F A5 EB 78 */	mr r5, r29
/* 80496960  90 9D 00 00 */	stw r4, 0(r29)
/* 80496964  3B BD 00 08 */	addi r29, r29, 8
/* 80496968  90 05 00 04 */	stw r0, 4(r5)
/* 8049696C  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 80496970  4B F4 E7 C1 */	bl _texture_z_light_fog_prim_shadow
/* 80496974  83 BF 03 00 */	lwz r29, 0x300(r31)
/* 80496978  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049697C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80496980  7F E3 FB 78 */	mr r3, r31
/* 80496984  90 1D 00 00 */	stw r0, 0(r29)
/* 80496988  7F BE EB 78 */	mr r30, r29
/* 8049698C  3B BD 00 08 */	addi r29, r29, 8
/* 80496990  4B F7 6A 45 */	bl _Matrix_to_Mtx_new
/* 80496994  90 7E 00 04 */	stw r3, 4(r30)
/* 80496998  7F A4 EB 78 */	mr r4, r29
/* 8049699C  3C 00 DE 00 */	lis r0, 0xde00
/* 804969A0  3C 60 80 9D */	lis r3, tol_rope_1_shadowT_model@ha /* 0x809C8A20@ha */
/* 804969A4  90 1D 00 00 */	stw r0, 0(r29)
/* 804969A8  38 03 8A 20 */	addi r0, r3, tol_rope_1_shadowT_model@l /* 0x809C8A20@l */
/* 804969AC  3B BD 00 08 */	addi r29, r29, 8
/* 804969B0  90 04 00 04 */	stw r0, 4(r4)
/* 804969B4  93 BF 03 00 */	stw r29, 0x300(r31)
/* 804969B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804969BC  4B C0 45 65 */	bl func_8009AF20
/* 804969C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804969C4  7C 08 03 A6 */	mtlr r0
/* 804969C8  38 21 00 20 */	addi r1, r1, 0x20
/* 804969CC  4E 80 00 20 */	blr 
