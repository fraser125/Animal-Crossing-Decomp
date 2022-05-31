lbl_805BE82C:
/* 805BE82C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BE830  7C 08 02 A6 */	mflr r0
/* 805BE834  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BE838  39 61 00 20 */	addi r11, r1, 0x20
/* 805BE83C  4B AD C6 99 */	bl func_8009AED4
/* 805BE840  7C 9D 23 78 */	mr r29, r4
/* 805BE844  7C 7F 1B 78 */	mr r31, r3
/* 805BE848  80 64 00 00 */	lwz r3, 0(r4)
/* 805BE84C  4B E4 EB 89 */	bl _Matrix_to_Mtx_new
/* 805BE850  7C 7E 1B 78 */	mr r30, r3
/* 805BE854  7F E3 FB 78 */	mr r3, r31
/* 805BE858  7F A4 EB 78 */	mr r4, r29
/* 805BE85C  4B FF FF 4D */	bl aTnt_MakeWindowPrimDisplayList
/* 805BE860  7C 7F 1B 79 */	or. r31, r3, r3
/* 805BE864  41 82 00 9C */	beq lbl_805BE900
/* 805BE868  80 7D 00 00 */	lwz r3, 0(r29)
/* 805BE86C  4B E2 69 3D */	bl _texture_z_light_fog_prim_npc
/* 805BE870  80 7D 00 00 */	lwz r3, 0(r29)
/* 805BE874  4B E2 68 BD */	bl _texture_z_light_fog_prim_shadow
/* 805BE878  81 7D 00 00 */	lwz r11, 0(r29)
/* 805BE87C  3C E0 DA 38 */	lis r7, 0xDA38 /* 0xDA380003@ha */
/* 805BE880  38 07 00 03 */	addi r0, r7, 0x0003 /* 0xDA380003@l */
/* 805BE884  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BE888  81 2B 02 D0 */	lwz r9, 0x2d0(r11)
/* 805BE88C  3C 80 80 6C */	lis r4, aTnt_shadow_data@ha /* 0x806C7080@ha */
/* 805BE890  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 805BE894  3C E0 DE 00 */	lis r7, 0xde00
/* 805BE898  39 09 00 08 */	addi r8, r9, 8
/* 805BE89C  3C A0 80 BF */	lis r5, obj_s_tent_model@ha /* 0x80BF7750@ha */
/* 805BE8A0  91 0B 02 D0 */	stw r8, 0x2d0(r11)
/* 805BE8A4  39 06 00 20 */	addi r8, r6, 0x0020 /* 0xDB060020@l */
/* 805BE8A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BE8AC  38 84 70 80 */	addi r4, r4, aTnt_shadow_data@l /* 0x806C7080@l */
/* 805BE8B0  90 09 00 00 */	stw r0, 0(r9)
/* 805BE8B4  38 05 77 50 */	addi r0, r5, obj_s_tent_model@l /* 0x80BF7750@l */
/* 805BE8B8  3C C3 00 02 */	addis r6, r3, 2
/* 805BE8BC  7F A3 EB 78 */	mr r3, r29
/* 805BE8C0  93 C9 00 04 */	stw r30, 4(r9)
/* 805BE8C4  38 A0 00 00 */	li r5, 0
/* 805BE8C8  81 4B 02 D0 */	lwz r10, 0x2d0(r11)
/* 805BE8CC  39 2A 00 08 */	addi r9, r10, 8
/* 805BE8D0  91 2B 02 D0 */	stw r9, 0x2d0(r11)
/* 805BE8D4  91 0A 00 00 */	stw r8, 0(r10)
/* 805BE8D8  93 EA 00 04 */	stw r31, 4(r10)
/* 805BE8DC  81 2B 02 D0 */	lwz r9, 0x2d0(r11)
/* 805BE8E0  39 09 00 08 */	addi r8, r9, 8
/* 805BE8E4  91 0B 02 D0 */	stw r8, 0x2d0(r11)
/* 805BE8E8  90 E9 00 00 */	stw r7, 0(r9)
/* 805BE8EC  90 09 00 04 */	stw r0, 4(r9)
/* 805BE8F0  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805BE8F4  81 86 00 04 */	lwz r12, 4(r6)
/* 805BE8F8  7D 89 03 A6 */	mtctr r12
/* 805BE8FC  4E 80 04 21 */	bctrl 
lbl_805BE900:
/* 805BE900  39 61 00 20 */	addi r11, r1, 0x20
/* 805BE904  4B AD C6 1D */	bl func_8009AF20
/* 805BE908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BE90C  7C 08 03 A6 */	mtlr r0
/* 805BE910  38 21 00 20 */	addi r1, r1, 0x20
/* 805BE914  4E 80 00 20 */	blr 
